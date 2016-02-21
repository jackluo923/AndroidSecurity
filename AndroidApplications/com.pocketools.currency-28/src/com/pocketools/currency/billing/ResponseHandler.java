package com.pocketools.currency.billing;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.pocketools.currency.DBAdapter;
import com.pocketools.currency.billing.BillingService.RequestPurchase;
import com.pocketools.currency.billing.BillingService.RestoreTransactions;
import com.pocketools.currency.billing.Consts.PurchaseState;
import com.pocketools.currency.billing.Consts.ResponseCode;

public class ResponseHandler {
    private static final String TAG = "ResponseHandler";
    private static PurchaseObserver sPurchaseObserver;

    class AnonymousClass_1 implements Runnable {
        private final /* synthetic */ Context val$context;

        AnonymousClass_1(Context context) {
            this.val$context = context;
        }

        public void run() {
            DBAdapter db = new DBAdapter(this.val$context);
            db.open();
            db.getDatabase().setLockingEnabled(true);
            while (db.getDatabase().isDbLockedByOtherThreads()) {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                }
            }
            db.upgradeToAdsFreeVersion();
            Log.d(TAG, "Upgraded to Ads Free Version");
        }
    }

    public static void buyPageIntentResponse(PendingIntent pendingIntent, Intent intent) {
        if (sPurchaseObserver == null) {
            Log.d(TAG, "UI is not running");
        } else {
            sPurchaseObserver.startBuyPageActivity(pendingIntent, intent);
        }
    }

    public static void checkBillingSupportedResponse(boolean supported) {
        if (sPurchaseObserver != null) {
            sPurchaseObserver.onBillingSupported(supported);
        }
    }

    public static void purchaseResponse(Context context, PurchaseState purchaseState, String productId, String orderId, long purchaseTime, String developerPayload) {
        new Thread(new AnonymousClass_1(context)).start();
    }

    public static synchronized void register(PurchaseObserver observer) {
        synchronized (ResponseHandler.class) {
            sPurchaseObserver = observer;
        }
    }

    public static void responseCodeReceived(Context context, RequestPurchase request, ResponseCode responseCode) {
        if (sPurchaseObserver != null) {
            sPurchaseObserver.onRequestPurchaseResponse(request, responseCode);
        }
    }

    public static void responseCodeReceived(Context context, RestoreTransactions request, ResponseCode responseCode) {
        if (sPurchaseObserver != null) {
            sPurchaseObserver.onRestoreTransactionsResponse(request, responseCode);
        }
    }

    public static synchronized void unregister(PurchaseObserver observer) {
        synchronized (ResponseHandler.class) {
            sPurchaseObserver = null;
        }
    }
}