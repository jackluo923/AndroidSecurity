package com.inmobi.commons.analytics.androidsdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.net.URLEncoder;

public class IMAdTrackerReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(AdTrackerConstants.REFERRER_INTENT_ACTION)) {
            try {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Received INSTALL REFERRER");
                String string = intent.getExtras().getString(AdTrackerConstants.REFERRER);
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Referrer String: " + string);
                FileOperations.setPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER_FROM_SDK, 1);
                AdTrackerUtils.setInternalReferrer(context.getApplicationContext(), URLEncoder.encode(string, "utf-8"));
            } catch (Exception e) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error install receiver", e);
            }
        } else if (intent.getAction().equals(AdTrackerConstants.CONNECTIVITY_INTENT_ACTION) && InternalSDKUtil.checkNetworkAvailibility(context)) {
            try {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Received CONNECTIVITY BROADCAST");
                AdTrackerNetworkInterface.init();
                AdTrackerNetworkInterface.reportToServer(FileOperations.getPreferences(context.getApplicationContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.APP_ID));
            } catch (Exception e2) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Connectivity receiver exception", e2);
            }
        }
    }
}