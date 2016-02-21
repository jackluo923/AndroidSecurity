package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

class bn extends BroadcastReceiver {
    static final String rg;
    private final cx VG;

    static {
        rg = bn.class.getName();
    }

    bn(cx cxVar) {
        this.VG = cxVar;
    }

    public static void p(Context context) {
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(rg, true);
        context.sendBroadcast(intent);
    }

    public void o(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(AdTrackerConstants.CONNECTIVITY_INTENT_ACTION);
        context.registerReceiver(this, intentFilter);
        intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.analytics.RADIO_POWERED");
        intentFilter.addCategory(context.getPackageName());
        context.registerReceiver(this, intentFilter);
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (AdTrackerConstants.CONNECTIVITY_INTENT_ACTION.equals(action)) {
            Bundle extras = intent.getExtras();
            Boolean bool = Boolean.FALSE;
            if (extras != null) {
                bool = Boolean.valueOf(intent.getExtras().getBoolean("noConnectivity"));
            }
            this.VG.q(!bool.booleanValue());
        } else if ("com.google.analytics.RADIO_POWERED".equals(action) && !intent.hasExtra(rg)) {
            this.VG.bF();
        }
    }
}