package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.math.BigInteger;
import java.util.Locale;

public final class cs {
    private static final Object op;
    private static String pH;

    static {
        op = new Object();
    }

    public static String aR() {
        String str;
        synchronized (op) {
            str = pH;
        }
        return str;
    }

    public static String b(Context context, String str, String str2) {
        String str3;
        synchronized (op) {
            if (pH == null && !TextUtils.isEmpty(str)) {
                c(context, str, str2);
            }
            str3 = pH;
        }
        return str3;
    }

    private static void c(Context context, String str, String str2) {
        try {
            ClassLoader classLoader = context.createPackageContext(str2, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE).getClassLoader();
            Class forName = Class.forName("com.google.ads.mediation.MediationAdapter", false, classLoader);
            BigInteger bigInteger = new BigInteger(new byte[1]);
            String[] split = str.split(",");
            BigInteger bigInteger2 = bigInteger;
            int i = 0;
            while (i < split.length) {
                if (cv.a(classLoader, forName, split[i])) {
                    bigInteger2 = bigInteger2.setBit(i);
                }
                i++;
            }
            pH = String.format(Locale.US, "%X", new Object[]{bigInteger2});
        } catch (Throwable th) {
            pH = AdTrackerConstants.ERROR;
        }
    }
}