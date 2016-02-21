package com.pocketools.currency.billing;

import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.android.vending.billing.IMarketBillingService;
import com.android.vending.billing.IMarketBillingService.Stub;
import com.pocketools.currency.billing.Consts.ResponseCode;
import com.pocketools.currency.billing.Security.VerifiedPurchase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

public class BillingService extends Service implements ServiceConnection {
    private static final String TAG = "BillingService";
    private static LinkedList<BillingRequest> mPendingRequests;
    private static HashMap<Long, BillingRequest> mSentRequests;
    private static IMarketBillingService mService;

    abstract class BillingRequest {
        protected long mRequestId;
        private final int mStartId;

        public BillingRequest(int startId) {
            this.mStartId = startId;
        }

        public int getStartId() {
            return this.mStartId;
        }

        protected void logResponseCode(String method, Bundle response) {
            Log.e(TAG, new StringBuilder(String.valueOf(method)).append(" received ").append(ResponseCode.valueOf(response.getInt(Consts.BILLING_RESPONSE_RESPONSE_CODE)).toString()).toString());
        }

        protected Bundle makeRequestBundle(String method) {
            Bundle request = new Bundle();
            request.putString(Consts.BILLING_REQUEST_METHOD, method);
            request.putInt(Consts.BILLING_REQUEST_API_VERSION, 1);
            request.putString(Consts.BILLING_REQUEST_PACKAGE_NAME, BillingService.this.getPackageName());
            return request;
        }

        protected void onRemoteException(RemoteException e) {
            Log.w(TAG, "remote billing service crashed");
            mService = null;
        }

        protected void responseCodeReceived(ResponseCode responseCode) {
        }

        protected abstract long run() throws RemoteException;

        public boolean runIfConnected() {
            Log.d(TAG, getClass().getSimpleName());
            if (mService != null) {
                try {
                    this.mRequestId = run();
                    Log.d(TAG, new StringBuilder("request id: ").append(this.mRequestId).toString());
                    if (this.mRequestId >= 0) {
                        mSentRequests.put(Long.valueOf(this.mRequestId), this);
                    }
                    return true;
                } catch (RemoteException e) {
                    onRemoteException(e);
                }
            }
            return false;
        }

        public boolean runRequest() {
            if (runIfConnected()) {
                return true;
            }
            if (!BillingService.this.bindToMarketBillingService()) {
                return false;
            }
            mPendingRequests.add(this);
            return true;
        }
    }

    class CheckBillingSupported extends BillingRequest {
        public CheckBillingSupported() {
            super(-1);
        }

        protected long run() throws RemoteException {
            int responseCode = mService.sendBillingRequest(makeRequestBundle("CHECK_BILLING_SUPPORTED")).getInt(Consts.BILLING_RESPONSE_RESPONSE_CODE);
            Log.i(TAG, new StringBuilder("CheckBillingSupported response code: ").append(ResponseCode.valueOf(responseCode)).toString());
            ResponseHandler.checkBillingSupportedResponse(responseCode == ResponseCode.RESULT_OK.ordinal());
            return Consts.BILLING_RESPONSE_INVALID_REQUEST_ID;
        }
    }

    class ConfirmNotifications extends BillingRequest {
        final String[] mNotifyIds;

        public ConfirmNotifications(int startId, String[] notifyIds) {
            super(startId);
            this.mNotifyIds = notifyIds;
        }

        protected long run() throws RemoteException {
            Bundle request = makeRequestBundle("CONFIRM_NOTIFICATIONS");
            request.putStringArray(Consts.BILLING_REQUEST_NOTIFY_IDS, this.mNotifyIds);
            Bundle response = mService.sendBillingRequest(request);
            logResponseCode("confirmNotifications", response);
            return response.getLong(Consts.BILLING_RESPONSE_REQUEST_ID, Consts.BILLING_RESPONSE_INVALID_REQUEST_ID);
        }
    }

    class GetPurchaseInformation extends BillingRequest {
        long mNonce;
        final String[] mNotifyIds;

        public GetPurchaseInformation(int startId, String[] notifyIds) {
            super(startId);
            this.mNotifyIds = notifyIds;
        }

        protected void onRemoteException(RemoteException e) {
            super.onRemoteException(e);
            Security.removeNonce(this.mNonce);
        }

        protected long run() throws RemoteException {
            this.mNonce = Security.generateNonce();
            Bundle request = makeRequestBundle("GET_PURCHASE_INFORMATION");
            request.putLong(Consts.BILLING_REQUEST_NONCE, this.mNonce);
            request.putStringArray(Consts.BILLING_REQUEST_NOTIFY_IDS, this.mNotifyIds);
            Bundle response = mService.sendBillingRequest(request);
            logResponseCode("getPurchaseInformation", response);
            return response.getLong(Consts.BILLING_RESPONSE_REQUEST_ID, Consts.BILLING_RESPONSE_INVALID_REQUEST_ID);
        }
    }

    public class RequestPurchase extends BillingRequest {
        public final String mDeveloperPayload;
        public final String mProductId;

        public RequestPurchase(BillingService billingService, String itemId) {
            this(itemId, null);
        }

        public RequestPurchase(String itemId, String developerPayload) {
            super(-1);
            this.mProductId = itemId;
            this.mDeveloperPayload = developerPayload;
        }

        protected void responseCodeReceived(ResponseCode responseCode) {
            ResponseHandler.responseCodeReceived(BillingService.this, this, responseCode);
        }

        protected long run() throws RemoteException {
            Bundle request = makeRequestBundle("REQUEST_PURCHASE");
            request.putString(Consts.BILLING_REQUEST_ITEM_ID, this.mProductId);
            if (this.mDeveloperPayload != null) {
                request.putString(Consts.BILLING_REQUEST_DEVELOPER_PAYLOAD, this.mDeveloperPayload);
            }
            Bundle response = mService.sendBillingRequest(request);
            PendingIntent pendingIntent = (PendingIntent) response.getParcelable(Consts.BILLING_RESPONSE_PURCHASE_INTENT);
            if (pendingIntent == null) {
                Log.e(TAG, "Error with requestPurchase");
                return Consts.BILLING_RESPONSE_INVALID_REQUEST_ID;
            } else {
                ResponseHandler.buyPageIntentResponse(pendingIntent, new Intent());
                return response.getLong(Consts.BILLING_RESPONSE_REQUEST_ID, Consts.BILLING_RESPONSE_INVALID_REQUEST_ID);
            }
        }
    }

    public class RestoreTransactions extends BillingRequest {
        long mNonce;

        public RestoreTransactions() {
            super(-1);
        }

        protected void onRemoteException(RemoteException e) {
            super.onRemoteException(e);
            Security.removeNonce(this.mNonce);
        }

        protected void responseCodeReceived(ResponseCode responseCode) {
            ResponseHandler.responseCodeReceived(BillingService.this, this, responseCode);
        }

        protected long run() throws RemoteException {
            this.mNonce = Security.generateNonce();
            Bundle request = makeRequestBundle("RESTORE_TRANSACTIONS");
            request.putLong(Consts.BILLING_REQUEST_NONCE, this.mNonce);
            Bundle response = mService.sendBillingRequest(request);
            logResponseCode("restoreTransactions", response);
            return response.getLong(Consts.BILLING_RESPONSE_REQUEST_ID, Consts.BILLING_RESPONSE_INVALID_REQUEST_ID);
        }
    }

    static {
        mPendingRequests = new LinkedList();
        mSentRequests = new HashMap();
    }

    private boolean bindToMarketBillingService() {
        try {
            Log.i(TAG, "binding to Market billing service");
            if (bindService(new Intent(Consts.MARKET_BILLING_SERVICE_ACTION), this, 1)) {
                return true;
            }
            Log.e(TAG, "Could not bind to service.");
            return false;
        } catch (SecurityException e) {
            Log.e(TAG, new StringBuilder("Security exception: ").append(e).toString());
        }
    }

    private void checkResponseCode(long requestId, ResponseCode responseCode) {
        BillingRequest request = (BillingRequest) mSentRequests.get(Long.valueOf(requestId));
        if (request != null) {
            Log.d("Billing Service - [Don]", new StringBuilder(String.valueOf(request.getClass().getSimpleName())).append(": ").append(responseCode).toString());
            request.responseCodeReceived(responseCode);
        }
        mSentRequests.remove(Long.valueOf(requestId));
    }

    private boolean confirmNotifications(int startId, String[] notifyIds) {
        return new ConfirmNotifications(startId, notifyIds).runRequest();
    }

    private boolean getPurchaseInformation(int startId, String[] notifyIds) {
        return new GetPurchaseInformation(startId, notifyIds).runRequest();
    }

    private void purchaseStateChanged(int startId, String signedData, String signature) {
        ArrayList<VerifiedPurchase> purchases = Security.verifyPurchase(signedData, signature);
        if (purchases != null) {
            ArrayList<String> notifyList = new ArrayList();
            Iterator it = purchases.iterator();
            while (it.hasNext()) {
                VerifiedPurchase vp = (VerifiedPurchase) it.next();
                if (vp.notificationId != null) {
                    notifyList.add(vp.notificationId);
                }
                ResponseHandler.purchaseResponse(this, vp.purchaseState, vp.productId, vp.orderId, vp.purchaseTime, vp.developerPayload);
            }
            if (!notifyList.isEmpty()) {
                confirmNotifications(startId, (String[]) notifyList.toArray(new String[notifyList.size()]));
            }
        }
    }

    private void runPendingRequests() {
        int maxStartId = -1;
        while (true) {
            BillingRequest request = (BillingRequest) mPendingRequests.peek();
            if (request == null) {
                if (maxStartId >= 0) {
                    Log.i(TAG, new StringBuilder("stopping service, startId: ").append(maxStartId).toString());
                    stopSelf(maxStartId);
                    return;
                } else {
                    return;
                }
            } else if (request.runIfConnected()) {
                mPendingRequests.remove();
                if (maxStartId < request.getStartId()) {
                    maxStartId = request.getStartId();
                }
            } else {
                bindToMarketBillingService();
                return;
            }
        }
    }

    public boolean checkBillingSupported() {
        return new CheckBillingSupported().runRequest();
    }

    public void handleCommand(Intent intent, int startId) {
        String action = intent.getAction();
        Log.i(TAG, new StringBuilder("handleCommand() action: ").append(action).toString());
        if (Consts.ACTION_CONFIRM_NOTIFICATION.equals(action)) {
            confirmNotifications(startId, intent.getStringArrayExtra(Consts.NOTIFICATION_ID));
        } else if (Consts.ACTION_GET_PURCHASE_INFORMATION.equals(action)) {
            String notifyId = intent.getStringExtra(Consts.NOTIFICATION_ID);
            getPurchaseInformation(startId, new String[]{notifyId});
        } else if (Consts.ACTION_PURCHASE_STATE_CHANGED.equals(action)) {
            purchaseStateChanged(startId, intent.getStringExtra(Consts.INAPP_SIGNED_DATA), intent.getStringExtra(Consts.INAPP_SIGNATURE));
        } else if (Consts.ACTION_RESPONSE_CODE.equals(action)) {
            checkResponseCode(intent.getLongExtra(Consts.INAPP_REQUEST_ID, -1), ResponseCode.valueOf(intent.getIntExtra(Consts.INAPP_RESPONSE_CODE, ResponseCode.RESULT_ERROR.ordinal())));
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onServiceConnected(ComponentName name, IBinder service) {
        Log.d(TAG, "Billing service connected");
        mService = Stub.asInterface(service);
        runPendingRequests();
    }

    public void onServiceDisconnected(ComponentName name) {
        Log.w(TAG, "Billing service disconnected");
        mService = null;
    }

    public void onStart(Intent intent, int startId) {
        handleCommand(intent, startId);
    }

    public boolean requestPurchase(String productId, String developerPayload) {
        return new RequestPurchase(productId, developerPayload).runRequest();
    }

    public boolean restoreTransactions() {
        return new RestoreTransactions().runRequest();
    }

    public void setContext(Context context) {
        attachBaseContext(context);
    }

    public void unbind() {
        try {
            unbindService(this);
        } catch (IllegalArgumentException e) {
        }
    }
}