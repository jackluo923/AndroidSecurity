package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public final class InstallReferrerReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(AdTrackerConstants.REFERRER);
        if (AdTrackerConstants.REFERRER_INTENT_ACTION.equals(intent.getAction()) && stringExtra != null) {
            ay.bq(stringExtra);
            Intent intent2 = new Intent(context, InstallReferrerService.class);
            intent2.putExtra(AdTrackerConstants.REFERRER, stringExtra);
            context.startService(intent2);
        }
    }
}