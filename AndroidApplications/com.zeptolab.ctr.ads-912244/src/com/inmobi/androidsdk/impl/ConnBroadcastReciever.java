package com.inmobi.androidsdk.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;

public class ConnBroadcastReciever extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(AdTrackerConstants.CONNECTIVITY_INTENT_ACTION) && InternalSDKUtil.checkNetworkAvailibility(context)) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Received CONNECTIVITY BROADCAST");
            try {
                RequestResponseManager requestResponseManager = new RequestResponseManager();
                requestResponseManager.init();
                requestResponseManager.processClick(context.getApplicationContext(), null);
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Connectivity receiver exception", e);
            }
        }
    }
}