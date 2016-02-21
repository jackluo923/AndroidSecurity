package com.zeptolab.ctr.billing.google.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.android.vending.billing.IInAppBillingService;
import com.android.vending.billing.IInAppBillingService.Stub;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

public class IabHelper {
    public static final int BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE = 3;
    public static final int BILLING_RESPONSE_RESULT_DEVELOPER_ERROR = 5;
    public static final int BILLING_RESPONSE_RESULT_ERROR = 6;
    public static final int BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED = 7;
    public static final int BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED = 8;
    public static final int BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE = 4;
    public static final int BILLING_RESPONSE_RESULT_OK = 0;
    public static final int BILLING_RESPONSE_RESULT_USER_CANCELED = 1;
    public static final String GET_SKU_DETAILS_ITEM_LIST = "ITEM_ID_LIST";
    public static final String GET_SKU_DETAILS_ITEM_TYPE_LIST = "ITEM_TYPE_LIST";
    public static final int IABHELPER_BAD_RESPONSE = -1002;
    public static final int IABHELPER_ERROR_BASE = -1000;
    public static final int IABHELPER_INVALID_CONSUMPTION = -1010;
    public static final int IABHELPER_MISSING_TOKEN = -1007;
    public static final int IABHELPER_REMOTE_EXCEPTION = -1001;
    public static final int IABHELPER_SEND_INTENT_FAILED = -1004;
    public static final int IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE = -1009;
    public static final int IABHELPER_UNKNOWN_ERROR = -1008;
    public static final int IABHELPER_UNKNOWN_PURCHASE_RESPONSE = -1006;
    public static final int IABHELPER_USER_CANCELLED = -1005;
    public static final int IABHELPER_VERIFICATION_FAILED = -1003;
    public static final String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
    public static final String ITEM_TYPE_INAPP = "inapp";
    public static final String ITEM_TYPE_SUBS = "subs";
    public static final String RESPONSE_BUY_INTENT = "BUY_INTENT";
    public static final String RESPONSE_CODE = "RESPONSE_CODE";
    public static final String RESPONSE_GET_SKU_DETAILS_LIST = "DETAILS_LIST";
    public static final String RESPONSE_INAPP_ITEM_LIST = "INAPP_PURCHASE_ITEM_LIST";
    public static final String RESPONSE_INAPP_PURCHASE_DATA = "INAPP_PURCHASE_DATA";
    public static final String RESPONSE_INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
    public static final String RESPONSE_INAPP_SIGNATURE = "INAPP_DATA_SIGNATURE";
    public static final String RESPONSE_INAPP_SIGNATURE_LIST = "INAPP_DATA_SIGNATURE_LIST";
    boolean mAsyncInProgress;
    String mAsyncOperation;
    Context mContext;
    boolean mDebugLog;
    String mDebugTag;
    boolean mDisposed;
    OnIabPurchaseFinishedListener mPurchaseListener;
    String mPurchasingItemType;
    int mRequestCode;
    IInAppBillingService mService;
    ServiceConnection mServiceConn;
    boolean mSetupDone;
    String mSignatureBase64;
    boolean mSubscriptionsSupported;

    public static interface OnIabSetupFinishedListener {
        void onIabSetupFinished(IabResult iabResult);
    }

    public static interface QueryInventoryFinishedListener {
        void onQueryInventoryFinished(IabResult iabResult, Inventory inventory);
    }

    public static interface OnConsumeFinishedListener {
        void onConsumeFinished(Purchase purchase, IabResult iabResult);
    }

    public static interface OnIabPurchaseFinishedListener {
        void onIabPurchaseFinished(IabResult iabResult, Purchase purchase);
    }

    class AnonymousClass_1 implements ServiceConnection {
        final /* synthetic */ com.zeptolab.ctr.billing.google.utils.IabHelper.OnIabSetupFinishedListener val$listener;

        AnonymousClass_1(com.zeptolab.ctr.billing.google.utils.IabHelper.OnIabSetupFinishedListener onIabSetupFinishedListener) {
            this.val$listener = onIabSetupFinishedListener;
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (!IabHelper.this.mDisposed) {
                IabHelper.this.logDebug("Billing service connected.");
                IabHelper.this.mService = Stub.asInterface(iBinder);
                String packageName = IabHelper.this.mContext.getPackageName();
                try {
                    IabHelper.this.logDebug("Checking for in-app billing 3 support.");
                    int isBillingSupported = IabHelper.this.mService.isBillingSupported(BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, packageName, ITEM_TYPE_INAPP);
                    if (isBillingSupported != 0) {
                        if (this.val$listener != null) {
                            this.val$listener.onIabSetupFinished(new IabResult(isBillingSupported, "Error checking for billing v3 support."));
                        }
                        IabHelper.this.mSubscriptionsSupported = false;
                    } else {
                        IabHelper.this.logDebug("In-app billing version 3 supported for " + packageName);
                        int isBillingSupported2 = IabHelper.this.mService.isBillingSupported(BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, packageName, ITEM_TYPE_SUBS);
                        if (isBillingSupported2 == 0) {
                            IabHelper.this.logDebug("Subscriptions AVAILABLE.");
                            IabHelper.this.mSubscriptionsSupported = true;
                        } else {
                            IabHelper.this.logDebug("Subscriptions NOT AVAILABLE. Response: " + isBillingSupported2);
                        }
                        IabHelper.this.mSetupDone = true;
                        if (this.val$listener != null) {
                            this.val$listener.onIabSetupFinished(new IabResult(0, "Setup successful."));
                        }
                    }
                } catch (RemoteException e) {
                    RemoteException remoteException = e;
                    if (this.val$listener != null) {
                        this.val$listener.onIabSetupFinished(new IabResult(-1001, "RemoteException while setting up in-app billing."));
                    }
                    remoteException.printStackTrace();
                }
            }
        }

        public void onServiceDisconnected(ComponentName componentName) {
            IabHelper.this.logDebug("Billing service disconnected.");
            IabHelper.this.mService = null;
        }
    }

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ Handler val$handler;
        final /* synthetic */ com.zeptolab.ctr.billing.google.utils.IabHelper.QueryInventoryFinishedListener val$listener;
        final /* synthetic */ List val$moreSkus;
        final /* synthetic */ boolean val$querySkuDetails;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ Inventory val$inv_f;
            final /* synthetic */ IabResult val$result_f;

            AnonymousClass_1(IabResult iabResult, Inventory inventory) {
                this.val$result_f = iabResult;
                this.val$inv_f = inventory;
            }

            public void run() {
                AnonymousClass_2.this.val$listener.onQueryInventoryFinished(this.val$result_f, this.val$inv_f);
            }
        }

        AnonymousClass_2(boolean z, List list, com.zeptolab.ctr.billing.google.utils.IabHelper.QueryInventoryFinishedListener queryInventoryFinishedListener, Handler handler) {
            this.val$querySkuDetails = z;
            this.val$moreSkus = list;
            this.val$listener = queryInventoryFinishedListener;
            this.val$handler = handler;
        }

        public void run() {
            IabResult iabResult = new IabResult(0, "Inventory refresh successful.");
            Inventory inventory = null;
            try {
                inventory = IabHelper.this.queryInventory(this.val$querySkuDetails, this.val$moreSkus);
            } catch (IabException e) {
                iabResult = e.getResult();
            }
            IabHelper.this.flagEndAsync();
            if (!IabHelper.this.mDisposed && this.val$listener != null) {
                this.val$handler.post(new AnonymousClass_1(iabResult, inventory));
            }
        }
    }

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ Handler val$handler;
        final /* synthetic */ com.zeptolab.ctr.billing.google.utils.IabHelper.OnConsumeMultiFinishedListener val$multiListener;
        final /* synthetic */ List val$purchases;
        final /* synthetic */ com.zeptolab.ctr.billing.google.utils.IabHelper.OnConsumeFinishedListener val$singleListener;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ List val$results;

            AnonymousClass_1(List list) {
                this.val$results = list;
            }

            public void run() {
                AnonymousClass_3.this.val$singleListener.onConsumeFinished((Purchase) AnonymousClass_3.this.val$purchases.get(BILLING_RESPONSE_RESULT_OK), (IabResult) this.val$results.get(BILLING_RESPONSE_RESULT_OK));
            }
        }

        class AnonymousClass_2 implements Runnable {
            final /* synthetic */ List val$results;

            AnonymousClass_2(List list) {
                this.val$results = list;
            }

            public void run() {
                AnonymousClass_3.this.val$multiListener.onConsumeMultiFinished(AnonymousClass_3.this.val$purchases, this.val$results);
            }
        }

        AnonymousClass_3(List list, com.zeptolab.ctr.billing.google.utils.IabHelper.OnConsumeFinishedListener onConsumeFinishedListener, Handler handler, com.zeptolab.ctr.billing.google.utils.IabHelper.OnConsumeMultiFinishedListener onConsumeMultiFinishedListener) {
            this.val$purchases = list;
            this.val$singleListener = onConsumeFinishedListener;
            this.val$handler = handler;
            this.val$multiListener = onConsumeMultiFinishedListener;
        }

        public void run() {
            List arrayList = new ArrayList();
            Iterator it = this.val$purchases.iterator();
            while (it.hasNext()) {
                Purchase purchase = (Purchase) it.next();
                try {
                    IabHelper.this.consume(purchase);
                    arrayList.add(new IabResult(0, "Successful consume of sku " + purchase.getSku()));
                } catch (IabException e) {
                    arrayList.add(e.getResult());
                }
            }
            IabHelper.this.flagEndAsync();
            if (!(IabHelper.this.mDisposed || this.val$singleListener == null)) {
                this.val$handler.post(new AnonymousClass_1(arrayList));
            }
            if (!IabHelper.this.mDisposed && this.val$multiListener != null) {
                this.val$handler.post(new AnonymousClass_2(arrayList));
            }
        }
    }

    public static interface OnConsumeMultiFinishedListener {
        void onConsumeMultiFinished(List list, List list2);
    }

    public IabHelper(Context context, String str) {
        this.mDebugLog = false;
        this.mDebugTag = "IabHelper";
        this.mSetupDone = false;
        this.mDisposed = false;
        this.mSubscriptionsSupported = false;
        this.mAsyncInProgress = false;
        this.mAsyncOperation = AdTrackerConstants.BLANK;
        this.mSignatureBase64 = null;
        this.mContext = context.getApplicationContext();
        this.mSignatureBase64 = str;
        logDebug("IAB helper created.");
    }

    private void checkNotDisposed() {
        if (this.mDisposed) {
            throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
        }
    }

    public static String getResponseDesc(int i) {
        String[] split = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        String[] split2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (i <= -1000) {
            int i2 = -1000 - i;
            return (i2 < 0 || i2 >= split2.length) ? String.valueOf(i) + ":Unknown IAB Helper Error" : split2[i2];
        } else if (i < 0 || i >= split.length) {
            return String.valueOf(i) + ":Unknown";
        } else {
            return split[i];
        }
    }

    void checkSetupDone(String str) {
        if (!this.mSetupDone) {
            logError("Illegal state for operation (" + str + "): IAB helper is not set up.");
            throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + str);
        }
    }

    void consume(Purchase purchase) {
        checkNotDisposed();
        checkSetupDone("consume");
        if (purchase.mItemType.equals(ITEM_TYPE_INAPP)) {
            try {
                String token = purchase.getToken();
                String sku = purchase.getSku();
                if (token == null || token.equals(AdTrackerConstants.BLANK)) {
                    logError("Can't consume " + sku + ". No token.");
                    throw new IabException(-1007, "PurchaseInfo is missing token for sku: " + sku + " " + purchase);
                } else {
                    logDebug("Consuming sku: " + sku + ", token: " + token);
                    int consumePurchase = this.mService.consumePurchase(BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.mContext.getPackageName(), token);
                    if (consumePurchase == 0) {
                        logDebug("Successfully consumed sku: " + sku);
                    } else {
                        logDebug("Error consuming consuming sku " + sku + ". " + getResponseDesc(consumePurchase));
                        throw new IabException(consumePurchase, "Error consuming sku " + sku);
                    }
                }
            } catch (RemoteException e) {
                throw new IabException(-1001, "Remote exception while consuming. PurchaseInfo: " + purchase, e);
            }
        } else {
            throw new IabException(-1010, "Items of type '" + purchase.mItemType + "' can't be consumed.");
        }
    }

    public void consumeAsync(Purchase purchase, OnConsumeFinishedListener onConsumeFinishedListener) {
        checkNotDisposed();
        checkSetupDone("consume");
        List arrayList = new ArrayList();
        arrayList.add(purchase);
        consumeAsyncInternal(arrayList, onConsumeFinishedListener, null);
    }

    public void consumeAsync(List list, OnConsumeMultiFinishedListener onConsumeMultiFinishedListener) {
        checkNotDisposed();
        checkSetupDone("consume");
        consumeAsyncInternal(list, null, onConsumeMultiFinishedListener);
    }

    void consumeAsyncInternal(List list, OnConsumeFinishedListener onConsumeFinishedListener, OnConsumeMultiFinishedListener onConsumeMultiFinishedListener) {
        Handler handler = new Handler();
        flagStartAsync("consume");
        new Thread(new AnonymousClass_3(list, onConsumeFinishedListener, handler, onConsumeMultiFinishedListener)).start();
    }

    public void dispose() {
        logDebug("Disposing.");
        this.mSetupDone = false;
        if (this.mServiceConn != null) {
            logDebug("Unbinding from service.");
            if (this.mContext != null) {
                this.mContext.unbindService(this.mServiceConn);
            }
        }
        this.mDisposed = true;
        this.mContext = null;
        this.mServiceConn = null;
        this.mService = null;
        this.mPurchaseListener = null;
    }

    public void enableDebugLogging(boolean z) {
        checkNotDisposed();
        this.mDebugLog = z;
    }

    public void enableDebugLogging(boolean z, String str) {
        checkNotDisposed();
        this.mDebugLog = z;
        this.mDebugTag = str;
    }

    void flagEndAsync() {
        logDebug("Ending async operation: " + this.mAsyncOperation);
        this.mAsyncOperation = AdTrackerConstants.BLANK;
        this.mAsyncInProgress = false;
    }

    void flagStartAsync(String str) {
        if (this.mAsyncInProgress) {
            throw new IllegalStateException("Can't start async operation (" + str + ") because another async operation(" + this.mAsyncOperation + ") is in progress.");
        }
        this.mAsyncOperation = str;
        this.mAsyncInProgress = true;
        logDebug("Starting async operation: " + str);
    }

    int getResponseCodeFromBundle(Bundle bundle) {
        Object obj = bundle.get(RESPONSE_CODE);
        if (obj == null) {
            logDebug("Bundle with null response code, assuming OK (known issue)");
            return BILLING_RESPONSE_RESULT_OK;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            logError("Unexpected type for bundle response code.");
            logError(obj.getClass().getName());
            throw new RuntimeException("Unexpected type for bundle response code: " + obj.getClass().getName());
        }
    }

    int getResponseCodeFromIntent(Intent intent) {
        Object obj = intent.getExtras().get(RESPONSE_CODE);
        if (obj == null) {
            logError("Intent with no response code, assuming OK (known issue)");
            return BILLING_RESPONSE_RESULT_OK;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            logError("Unexpected type for intent response code.");
            logError(obj.getClass().getName());
            throw new RuntimeException("Unexpected type for intent response code: " + obj.getClass().getName());
        }
    }

    public boolean handleActivityResult(int i, int i2, Intent intent) {
        if (i != this.mRequestCode) {
            return false;
        }
        checkNotDisposed();
        checkSetupDone("handleActivityResult");
        flagEndAsync();
        IabResult iabResult;
        if (intent == null) {
            logError("Null data in IAB activity result.");
            iabResult = new IabResult(-1002, "Null data in IAB result");
            if (this.mPurchaseListener != null) {
                this.mPurchaseListener.onIabPurchaseFinished(iabResult, null);
            }
            return true;
        } else {
            int responseCodeFromIntent = getResponseCodeFromIntent(intent);
            String stringExtra = intent.getStringExtra(RESPONSE_INAPP_PURCHASE_DATA);
            String stringExtra2 = intent.getStringExtra(RESPONSE_INAPP_SIGNATURE);
            if (i2 == -1 && responseCodeFromIntent == 0) {
                logDebug("Successful resultcode from purchase activity.");
                logDebug("Purchase data: " + stringExtra);
                logDebug("Data signature: " + stringExtra2);
                logDebug("Extras: " + intent.getExtras());
                logDebug("Expected item type: " + this.mPurchasingItemType);
                if (stringExtra == null || stringExtra2 == null) {
                    logError("BUG: either purchaseData or dataSignature is null.");
                    logDebug("Extras: " + intent.getExtras().toString());
                    iabResult = new IabResult(-1008, "IAB returned null purchaseData or dataSignature");
                    if (this.mPurchaseListener != null) {
                        this.mPurchaseListener.onIabPurchaseFinished(iabResult, null);
                    }
                    return true;
                } else {
                    try {
                        Purchase purchase = new Purchase(this.mPurchasingItemType, stringExtra, stringExtra2);
                        String sku = purchase.getSku();
                        if (Security.verifyPurchase(this.mSignatureBase64, stringExtra, stringExtra2)) {
                            logDebug("Purchase signature successfully verified.");
                            if (this.mPurchaseListener != null) {
                                this.mPurchaseListener.onIabPurchaseFinished(new IabResult(0, "Success"), purchase);
                            }
                        } else {
                            logError("Purchase signature verification FAILED for sku " + sku);
                            iabResult = new IabResult(-1003, "Signature verification failed for sku " + sku);
                            if (this.mPurchaseListener != null) {
                                this.mPurchaseListener.onIabPurchaseFinished(iabResult, purchase);
                            }
                            return true;
                        }
                    } catch (JSONException e) {
                        JSONException jSONException = e;
                        logError("Failed to parse purchase data.");
                        jSONException.printStackTrace();
                        iabResult = new IabResult(-1002, "Failed to parse purchase data.");
                        if (this.mPurchaseListener != null) {
                            this.mPurchaseListener.onIabPurchaseFinished(iabResult, null);
                        }
                        return true;
                    }
                }
            } else if (i2 == -1) {
                logDebug("Result code was OK but in-app billing response was not OK: " + getResponseDesc(responseCodeFromIntent));
                if (this.mPurchaseListener != null) {
                    this.mPurchaseListener.onIabPurchaseFinished(new IabResult(responseCodeFromIntent, "Problem purchashing item."), null);
                }
            } else if (i2 == 0) {
                logDebug("Purchase canceled - Response: " + getResponseDesc(responseCodeFromIntent));
                iabResult = new IabResult(-1005, "User canceled.");
                if (this.mPurchaseListener != null) {
                    this.mPurchaseListener.onIabPurchaseFinished(iabResult, null);
                }
            } else {
                logError("Purchase failed. Result code: " + Integer.toString(i2) + ". Response: " + getResponseDesc(responseCodeFromIntent));
                iabResult = new IabResult(-1006, "Unknown purchase response.");
                if (this.mPurchaseListener != null) {
                    this.mPurchaseListener.onIabPurchaseFinished(iabResult, null);
                }
            }
            return true;
        }
    }

    public void launchPurchaseFlow(Activity activity, String str, int i, OnIabPurchaseFinishedListener onIabPurchaseFinishedListener) {
        launchPurchaseFlow(activity, str, i, onIabPurchaseFinishedListener, AdTrackerConstants.BLANK);
    }

    public void launchPurchaseFlow(Activity activity, String str, int i, OnIabPurchaseFinishedListener onIabPurchaseFinishedListener, String str2) {
        launchPurchaseFlow(activity, str, ITEM_TYPE_INAPP, i, onIabPurchaseFinishedListener, str2);
    }

    @SuppressLint({"NewApi"})
    public void launchPurchaseFlow(Activity activity, String str, String str2, int i, OnIabPurchaseFinishedListener onIabPurchaseFinishedListener, String str3) {
        IabResult iabResult;
        checkNotDisposed();
        checkSetupDone("launchPurchaseFlow");
        flagStartAsync("launchPurchaseFlow");
        if (!str2.equals(ITEM_TYPE_SUBS) || this.mSubscriptionsSupported) {
            try {
                logDebug("Constructing buy intent for " + str + ", item type: " + str2);
                Bundle buyIntent = this.mService.getBuyIntent(BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.mContext.getPackageName(), str, str2, str3);
                int responseCodeFromBundle = getResponseCodeFromBundle(buyIntent);
                if (responseCodeFromBundle != 0) {
                    logError("Unable to buy item, Error response: " + getResponseDesc(responseCodeFromBundle));
                    flagEndAsync();
                    iabResult = new IabResult(responseCodeFromBundle, "Unable to buy item");
                    if (onIabPurchaseFinishedListener != null) {
                        onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult, null);
                    }
                } else {
                    PendingIntent pendingIntent = (PendingIntent) buyIntent.getParcelable(RESPONSE_BUY_INTENT);
                    logDebug("Launching buy intent for " + str + ". Request code: " + i);
                    this.mRequestCode = i;
                    this.mPurchaseListener = onIabPurchaseFinishedListener;
                    this.mPurchasingItemType = str2;
                    activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, new Intent(), Integer.valueOf(BILLING_RESPONSE_RESULT_OK).intValue(), Integer.valueOf(BILLING_RESPONSE_RESULT_OK).intValue(), Integer.valueOf(BILLING_RESPONSE_RESULT_OK).intValue());
                }
            } catch (SendIntentException e) {
                SendIntentException sendIntentException = e;
                logError("SendIntentException while launching purchase flow for sku " + str);
                sendIntentException.printStackTrace();
                flagEndAsync();
                iabResult = new IabResult(-1004, "Failed to send intent.");
                if (onIabPurchaseFinishedListener != null) {
                    onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult, null);
                }
            } catch (RemoteException e2) {
                RemoteException remoteException = e2;
                logError("RemoteException while launching purchase flow for sku " + str);
                remoteException.printStackTrace();
                flagEndAsync();
                iabResult = new IabResult(-1001, "Remote exception while starting purchase flow");
                if (onIabPurchaseFinishedListener != null) {
                    onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult, null);
                }
            }
        } else {
            iabResult = new IabResult(-1009, "Subscriptions are not available.");
            flagEndAsync();
            if (onIabPurchaseFinishedListener != null) {
                onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult, null);
            }
        }
    }

    public void launchSubscriptionPurchaseFlow(Activity activity, String str, int i, OnIabPurchaseFinishedListener onIabPurchaseFinishedListener) {
        launchSubscriptionPurchaseFlow(activity, str, i, onIabPurchaseFinishedListener, AdTrackerConstants.BLANK);
    }

    public void launchSubscriptionPurchaseFlow(Activity activity, String str, int i, OnIabPurchaseFinishedListener onIabPurchaseFinishedListener, String str2) {
        launchPurchaseFlow(activity, str, ITEM_TYPE_SUBS, i, onIabPurchaseFinishedListener, str2);
    }

    void logDebug(String str) {
        if (this.mDebugLog) {
            Log.d(this.mDebugTag, str);
        }
    }

    void logError(String str) {
        Log.e(this.mDebugTag, "In-app billing error: " + str);
    }

    void logWarn(String str) {
        Log.w(this.mDebugTag, "In-app billing warning: " + str);
    }

    public Inventory queryInventory(boolean z, List list) {
        return queryInventory(z, list, null);
    }

    public Inventory queryInventory(boolean z, List list, List list2) {
        logDebug("queryInventory");
        checkNotDisposed();
        checkSetupDone("queryInventory");
        try {
            Inventory inventory = new Inventory();
            int queryPurchases = queryPurchases(inventory, ITEM_TYPE_INAPP);
            if (queryPurchases != 0) {
                throw new IabException(queryPurchases, "Error refreshing inventory (querying owned items).");
            }
            if (z) {
                queryPurchases = querySkuDetails(ITEM_TYPE_INAPP, inventory, list);
                if (queryPurchases != 0) {
                    throw new IabException(queryPurchases, "Error refreshing inventory (querying prices of items).");
                }
            }
            if (this.mSubscriptionsSupported) {
                queryPurchases = queryPurchases(inventory, ITEM_TYPE_SUBS);
                if (queryPurchases != 0) {
                    throw new IabException(queryPurchases, "Error refreshing inventory (querying owned subscriptions).");
                } else if (z) {
                    queryPurchases = querySkuDetails(ITEM_TYPE_SUBS, inventory, list);
                    if (queryPurchases != 0) {
                        throw new IabException(queryPurchases, "Error refreshing inventory (querying prices of subscriptions).");
                    }
                }
            }
            return inventory;
        } catch (RemoteException e) {
            throw new IabException(-1001, "Remote exception while refreshing inventory.", e);
        } catch (JSONException e2) {
            throw new IabException(-1002, "Error parsing JSON response while refreshing inventory.", e2);
        }
    }

    public void queryInventoryAsync(QueryInventoryFinishedListener queryInventoryFinishedListener) {
        queryInventoryAsync(true, null, queryInventoryFinishedListener);
    }

    public void queryInventoryAsync(boolean z, QueryInventoryFinishedListener queryInventoryFinishedListener) {
        queryInventoryAsync(z, null, queryInventoryFinishedListener);
    }

    public void queryInventoryAsync(boolean z, List list, QueryInventoryFinishedListener queryInventoryFinishedListener) {
        logDebug("queryInventoryAsync");
        Handler handler = new Handler();
        checkNotDisposed();
        checkSetupDone("queryInventory");
        flagStartAsync("refresh inventory");
        new Thread(new AnonymousClass_2(z, list, queryInventoryFinishedListener, handler)).start();
    }

    int queryPurchases(Inventory inventory, String str) {
        logDebug("Querying owned items, item type: " + str);
        logDebug("Package name: " + this.mContext.getPackageName());
        String str2 = null;
        boolean z = false;
        while (true) {
            logDebug("Calling getPurchases with continuation token: " + str2);
            Bundle purchases = this.mService.getPurchases(BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.mContext.getPackageName(), str, str2);
            int responseCodeFromBundle = getResponseCodeFromBundle(purchases);
            logDebug("Owned items response: " + String.valueOf(responseCodeFromBundle));
            if (responseCodeFromBundle != 0) {
                logDebug("getPurchases() failed: " + getResponseDesc(responseCodeFromBundle));
                return responseCodeFromBundle;
            } else {
                if (purchases.containsKey(RESPONSE_INAPP_ITEM_LIST) && purchases.containsKey(RESPONSE_INAPP_PURCHASE_DATA_LIST) && purchases.containsKey(RESPONSE_INAPP_SIGNATURE_LIST)) {
                    ArrayList stringArrayList = purchases.getStringArrayList(RESPONSE_INAPP_ITEM_LIST);
                    ArrayList stringArrayList2 = purchases.getStringArrayList(RESPONSE_INAPP_PURCHASE_DATA_LIST);
                    ArrayList stringArrayList3 = purchases.getStringArrayList(RESPONSE_INAPP_SIGNATURE_LIST);
                    int i = 0;
                    boolean z2 = z;
                    while (i < stringArrayList2.size()) {
                        str2 = (String) stringArrayList2.get(i);
                        String str3 = (String) stringArrayList3.get(i);
                        String str4 = (String) stringArrayList.get(i);
                        if (Security.verifyPurchase(this.mSignatureBase64, str2, str3)) {
                            logDebug("Sku is owned: " + str4);
                            Purchase purchase = new Purchase(str, str2, str3);
                            if (TextUtils.isEmpty(purchase.getToken())) {
                                logWarn("BUG: empty/null token!");
                                logDebug("Purchase data: " + str2);
                            }
                            inventory.addPurchase(purchase);
                        } else {
                            logWarn("Purchase signature verification **FAILED**. Not adding item.");
                            logDebug("   Purchase data: " + str2);
                            logDebug("   Signature: " + str3);
                            z2 = BILLING_RESPONSE_RESULT_USER_CANCELED;
                        }
                        i++;
                    }
                    str2 = purchases.getString(INAPP_CONTINUATION_TOKEN);
                    logDebug("Continuation token: " + str2);
                    if (!TextUtils.isEmpty(str2)) {
                        int i2 = i;
                    } else if (i != 0) {
                        return IABHELPER_VERIFICATION_FAILED;
                    } else {
                        return BILLING_RESPONSE_RESULT_OK;
                    }
                }
                logError("Bundle returned from getPurchases() doesn't contain required fields.");
                return IABHELPER_BAD_RESPONSE;
            }
        }
    }

    int querySkuDetails(String str, Inventory inventory, List list) {
        Iterator it;
        logDebug("Querying SKU details.");
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(inventory.getAllOwnedSkus(str));
        if (list != null) {
            it = list.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (!arrayList.contains(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        if (arrayList.size() == 0) {
            logDebug("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        } else {
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size() / 20;
            int size2 = arrayList.size() % 20;
            int i = 0;
            while (i < size) {
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = arrayList.subList(i * 20, i * 20 + 20).iterator();
                while (it2.hasNext()) {
                    arrayList3.add((String) it2.next());
                }
                arrayList2.add(arrayList3);
                i++;
            }
            if (size2 != 0) {
                ArrayList arrayList4 = new ArrayList();
                Iterator it3 = arrayList.subList(size * 20, size * 20 + size2).iterator();
                while (it3.hasNext()) {
                    arrayList4.add((String) it3.next());
                }
                arrayList2.add(arrayList4);
                it = arrayList2.iterator();
                while (it.hasNext()) {
                    ArrayList arrayList5 = (ArrayList) it.next();
                    Bundle bundle = new Bundle();
                    bundle.putStringArrayList(GET_SKU_DETAILS_ITEM_LIST, arrayList5);
                    Bundle skuDetails = this.mService.getSkuDetails(BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.mContext.getPackageName(), str, bundle);
                    if (skuDetails.containsKey(RESPONSE_GET_SKU_DETAILS_LIST)) {
                        it3 = skuDetails.getStringArrayList(RESPONSE_GET_SKU_DETAILS_LIST).iterator();
                        while (it3.hasNext()) {
                            SkuDetails skuDetails2 = new SkuDetails(str, (String) it3.next());
                            logDebug("Got sku details: " + skuDetails2);
                            inventory.addSkuDetails(skuDetails2);
                        }
                    } else {
                        int responseCodeFromBundle = getResponseCodeFromBundle(skuDetails);
                        if (responseCodeFromBundle != 0) {
                            logDebug("getSkuDetails() failed: " + getResponseDesc(responseCodeFromBundle));
                            return responseCodeFromBundle;
                        } else {
                            logError("getSkuDetails() returned a bundle with neither an error nor a detail list.");
                            return IABHELPER_BAD_RESPONSE;
                        }
                    }
                }
            }
            return 0;
        }
    }

    public void startSetup(OnIabSetupFinishedListener onIabSetupFinishedListener) {
        checkNotDisposed();
        if (this.mSetupDone) {
            throw new IllegalStateException("IAB helper is already set up.");
        }
        logDebug("Starting in-app billing setup.");
        this.mServiceConn = new AnonymousClass_1(onIabSetupFinishedListener);
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        if (!this.mContext.getPackageManager().queryIntentServices(intent, BILLING_RESPONSE_RESULT_OK).isEmpty()) {
            this.mContext.bindService(intent, this.mServiceConn, BILLING_RESPONSE_RESULT_USER_CANCELED);
        } else if (onIabSetupFinishedListener != null) {
            onIabSetupFinishedListener.onIabSetupFinished(new IabResult(3, "Billing service unavailable on device."));
        }
    }

    public boolean subscriptionsSupported() {
        checkNotDisposed();
        return this.mSubscriptionsSupported;
    }
}