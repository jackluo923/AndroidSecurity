package com.mologiq.analytics;

import android.os.Build.VERSION;
import com.admarvel.android.ads.Version;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

public class b {
    public static final String a = "1.3.2";
    public static final String b = "2014-08-26";

    static int a() {
        return VERSION.RELEASE.contains(Version.ADMARVEL_API_VERSION) ? IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE : e.a();
    }
}