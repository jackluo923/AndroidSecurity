package com.google.android.gms.analytics;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.IOException;
import java.io.OutputStream;

public class CampaignTrackingService extends IntentService {
    public CampaignTrackingService() {
        super("CampaignIntentService");
    }

    public CampaignTrackingService(String str) {
        super(str);
    }

    public void onHandleIntent(Intent intent) {
        processIntent(this, intent);
    }

    public void processIntent(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(AdTrackerConstants.REFERRER);
        try {
            OutputStream openFileOutput = context.openFileOutput("gaInstallData", 0);
            openFileOutput.write(stringExtra.getBytes());
            openFileOutput.close();
            aa.v("Stored campaign information.");
        } catch (IOException e) {
            aa.t("Error storing install campaign.");
        }
    }
}