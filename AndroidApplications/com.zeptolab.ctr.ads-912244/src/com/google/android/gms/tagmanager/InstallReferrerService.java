package com.google.android.gms.tagmanager;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.CampaignTrackingService;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public final class InstallReferrerService extends IntentService {
    CampaignTrackingService Vk;
    Context Vl;

    public InstallReferrerService() {
        super("InstallReferrerService");
    }

    public InstallReferrerService(String str) {
        super(str);
    }

    private void a(Context context, Intent intent) {
        if (this.Vk == null) {
            this.Vk = new CampaignTrackingService();
        }
        this.Vk.processIntent(context, intent);
    }

    protected void onHandleIntent(Intent intent) {
        Context applicationContext;
        String stringExtra = intent.getStringExtra(AdTrackerConstants.REFERRER);
        applicationContext = this.Vl != null ? this.Vl : getApplicationContext();
        ay.c(applicationContext, stringExtra);
        a(applicationContext, intent);
    }
}