package com.flurry.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.flurry.sdk.cv;
import com.flurry.sdk.el;
import com.flurry.sdk.fb;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class InstallReceiver extends BroadcastReceiver {
    static final String a;

    static {
        a = InstallReceiver.class.getSimpleName();
    }

    public void onReceive(Context context, Intent intent) {
        el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "Received an Install nofication of " + intent.getAction());
        String string = intent.getExtras().getString(AdTrackerConstants.REFERRER);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "Received an Install referrer of " + string);
        if (string == null || !AdTrackerConstants.REFERRER_INTENT_ACTION.equals(intent.getAction())) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, a, "referrer is null");
        } else {
            if (!string.contains("=")) {
                el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "referrer is before decoding: " + string);
                string = fb.c(string);
                el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "referrer is: " + string);
            }
            new cv(context).a(string);
        }
    }
}