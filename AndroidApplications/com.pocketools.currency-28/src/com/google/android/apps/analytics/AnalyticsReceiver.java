package com.google.android.apps.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class AnalyticsReceiver extends BroadcastReceiver {
    static final String INSTALL_ACTION = "com.android.vending.INSTALL_REFERRER";
    static final String REFERRER_KEY = "referrer";

    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(REFERRER_KEY);
        if (INSTALL_ACTION.equals(intent.getAction()) && stringExtra != null) {
            Log.i(GoogleAnalyticsTracker.LOG_TAG, "referrer=" + stringExtra);
            if (new PersistentHitStore(context).setReferrer(stringExtra)) {
                Log.d(GoogleAnalyticsTracker.LOG_TAG, "Referrer store attemped succeeded.");
            } else {
                Log.w(GoogleAnalyticsTracker.LOG_TAG, "Referrer store attempt failed.");
            }
        }
    }
}