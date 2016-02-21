package com.pocketools.currency.billing;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Handler;
import android.util.Log;
import com.pocketools.currency.billing.BillingService.RequestPurchase;
import com.pocketools.currency.billing.BillingService.RestoreTransactions;
import com.pocketools.currency.billing.Consts.PurchaseState;
import com.pocketools.currency.billing.Consts.ResponseCode;
import java.lang.reflect.Method;

public abstract class PurchaseObserver {
    private static final Class[] START_INTENT_SENDER_SIG;
    private static final String TAG = "PurchaseObserver";
    private final Activity mActivity;
    private final Handler mHandler;
    private Method mStartIntentSender;
    private Object[] mStartIntentSenderArgs;

    class AnonymousClass_1 implements Runnable {
        private final /* synthetic */ String val$developerPayload;
        private final /* synthetic */ String val$itemId;
        private final /* synthetic */ PurchaseState val$purchaseState;
        private final /* synthetic */ long val$purchaseTime;
        private final /* synthetic */ int val$quantity;

        AnonymousClass_1(PurchaseState purchaseState, String str, int i, long j, String str2) {
            this.val$purchaseState = purchaseState;
            this.val$itemId = str;
            this.val$quantity = i;
            this.val$purchaseTime = j;
            this.val$developerPayload = str2;
        }

        public void run() {
            PurchaseObserver.this.onPurchaseStateChange(this.val$purchaseState, this.val$itemId, this.val$quantity, this.val$purchaseTime, this.val$developerPayload);
        }
    }

    static {
        START_INTENT_SENDER_SIG = new Class[]{IntentSender.class, Intent.class, Integer.TYPE, Integer.TYPE, Integer.TYPE};
    }

    public PurchaseObserver(Activity activity, Handler handler) {
        this.mStartIntentSenderArgs = new Object[5];
        this.mActivity = activity;
        this.mHandler = handler;
        initCompatibilityLayer();
    }

    private void initCompatibilityLayer() {
        Method method = null;
        try {
            this.mStartIntentSender = this.mActivity.getClass().getMethod("startIntentSender", START_INTENT_SENDER_SIG);
        } catch (SecurityException e) {
            this.mStartIntentSender = method;
        } catch (NoSuchMethodException e2) {
            this.mStartIntentSender = method;
        }
    }

    public abstract void onBillingSupported(boolean z);

    public abstract void onPurchaseStateChange(PurchaseState purchaseState, String str, int i, long j, String str2);

    public abstract void onRequestPurchaseResponse(RequestPurchase requestPurchase, ResponseCode responseCode);

    public abstract void onRestoreTransactionsResponse(RestoreTransactions restoreTransactions, ResponseCode responseCode);

    void postPurchaseStateChange(PurchaseState purchaseState, String itemId, int quantity, long purchaseTime, String developerPayload) {
        this.mHandler.post(new AnonymousClass_1(purchaseState, itemId, quantity, purchaseTime, developerPayload));
    }

    void startBuyPageActivity(PendingIntent pendingIntent, Intent intent) {
        if (this.mStartIntentSender != null) {
            try {
                this.mStartIntentSenderArgs[0] = pendingIntent.getIntentSender();
                this.mStartIntentSenderArgs[1] = intent;
                this.mStartIntentSenderArgs[2] = Integer.valueOf(0);
                this.mStartIntentSenderArgs[3] = Integer.valueOf(0);
                this.mStartIntentSenderArgs[4] = Integer.valueOf(0);
                this.mStartIntentSender.invoke(this.mActivity, this.mStartIntentSenderArgs);
            } catch (Exception e) {
                Log.e(TAG, "error starting activity", e);
            }
        } else {
            try {
                pendingIntent.send(this.mActivity, 0, intent);
            } catch (CanceledException e2) {
                Log.e(TAG, "error starting activity", e2);
            }
        }
    }
}