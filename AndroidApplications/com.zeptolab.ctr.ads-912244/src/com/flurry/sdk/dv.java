package com.flurry.sdk;

import android.os.Looper;
import android.telephony.TelephonyManager;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Arrays;

public class dv {
    private static final String a;
    private static byte[] b;

    static {
        a = dv.class.getSimpleName();
    }

    public static synchronized byte[] a() {
        byte[] bArr;
        synchronized (dv.class) {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                throw new IllegalStateException("Must be called from a background thread!");
            }
            if (b != null) {
                bArr = b;
            } else if (dl.a().b().checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
                bArr = null;
            } else {
                b();
                bArr = b;
            }
        }
        return bArr;
    }

    private static void b() {
        TelephonyManager telephonyManager = (TelephonyManager) dl.a().b().getSystemService(ZBuildConfig.device);
        if (telephonyManager != null) {
            String deviceId = telephonyManager.getDeviceId();
            if (deviceId != null && deviceId.trim().length() > 0) {
                try {
                    byte[] d = fb.d(deviceId);
                    if (d == null || d.length != 20) {
                        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "sha1 is not " + MMException.DISPLAY_AD_NOT_READY + " bytes long: " + Arrays.toString(d));
                    } else {
                        b = d;
                    }
                } catch (Exception e) {
                    el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Exception in generateHashedImei()");
                }
            }
        }
    }
}