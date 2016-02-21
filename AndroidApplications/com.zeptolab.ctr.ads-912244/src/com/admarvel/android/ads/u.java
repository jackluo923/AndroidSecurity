package com.admarvel.android.ads;

import android.app.Activity;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;

class u {
    static void a(Activity activity, String str) {
        if (str.equalsIgnoreCase("LandscapeRight")) {
            activity.setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        } else if (str.equalsIgnoreCase("PortraitUpsideDown")) {
            activity.setRequestedOrientation(ZBuildConfig.$minsdk);
        }
    }
}