package com.heyzap.sdk.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.heyzap.house.Manager;
import com.heyzap.house.handler.AttributionHandler;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public class PackageAddedReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (!intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
            String replaceFirst = intent.getDataString().replaceFirst(intent.getScheme() + ":", AdTrackerConstants.BLANK);
            if (replaceFirst != null) {
                Manager.applicationContext = context.getApplicationContext();
                AttributionHandler.getInstance().didInstall(context.getApplicationContext(), replaceFirst);
            }
        }
    }
}