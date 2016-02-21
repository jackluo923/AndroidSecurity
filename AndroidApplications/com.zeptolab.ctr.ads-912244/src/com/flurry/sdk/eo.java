package com.flurry.sdk;

import android.text.TextUtils;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

public final class eo {
    private static final String a;

    static {
        a = eo.class.getSimpleName();
    }

    public static eq a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        eq eqVar;
        try {
            eqVar = (eq) Class.forName(str).getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            el.a(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, a, "FlurryModule " + str + " is not available:", e);
            eqVar = null;
        }
        return eqVar;
    }
}