package com.flurry.sdk;

import android.os.Looper;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.IOException;

public class dt {
    private static final String a;

    static {
        a = dt.class.getSimpleName();
    }

    public static synchronized Info a() {
        Info c;
        synchronized (dt.class) {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                throw new IllegalStateException("Must be called from a background thread!");
            }
            c = b() ? c() : null;
        }
        return c;
    }

    public static boolean b() {
        boolean z = false;
        try {
            int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(dl.a().b());
            if (isGooglePlayServicesAvailable == 0) {
                return true;
            }
            el.d(a, "Google Play Services not available - connection result: " + isGooglePlayServicesAvailable);
            return z;
        } catch (Exception e) {
            el.d(a, "Google Play Services not available - " + e);
            return z;
        }
    }

    private static Info c() {
        int i = IabHelper.BILLING_RESPONSE_RESULT_ERROR;
        Info info = null;
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(dl.a().b());
        } catch (IOException e) {
            el.a(i, a, "Exception in readAdvertisingInfo():" + e);
            return info;
        } catch (GooglePlayServicesNotAvailableException e2) {
            el.a(i, a, "Exception in readAdvertisingInfo():" + e2);
            return info;
        } catch (GooglePlayServicesRepairableException e3) {
            el.a(i, a, "Exception in readAdvertisingInfo():" + e3);
            return info;
        }
    }
}