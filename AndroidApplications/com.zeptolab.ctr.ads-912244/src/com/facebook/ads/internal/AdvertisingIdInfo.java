package com.facebook.ads.internal;

import android.content.Context;
import android.os.Looper;
import com.inmobi.commons.internal.InternalSDKUtil;
import java.lang.reflect.Method;

public class AdvertisingIdInfo {
    private static final int CONNECTION_RESULT_SUCCESS = 0;
    private final String id;
    private final boolean limitAdTrackingEnabled;

    private AdvertisingIdInfo(String str, boolean z) {
        this.id = str;
        this.limitAdTrackingEnabled = z;
    }

    public static AdvertisingIdInfo getAdvertisingIdInfo(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot get advertising info on main thread.");
        }
        Method method = AdUtilities.getMethod(InternalSDKUtil.CLASS_PLAYSERVICES, InternalSDKUtil.METHOD_PLAY_AVAILABLE, new Class[]{Context.class});
        if (method == null) {
            return null;
        }
        Object invokeMethod = AdUtilities.invokeMethod(null, method, new Object[]{context});
        if (invokeMethod == null || ((Integer) invokeMethod).intValue() != 0) {
            return null;
        }
        method = AdUtilities.getMethod("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[]{Context.class});
        if (method == null) {
            return null;
        }
        Object invokeMethod2 = AdUtilities.invokeMethod(null, method, new Object[]{context});
        if (invokeMethod2 == null) {
            return null;
        }
        method = AdUtilities.getMethod(invokeMethod2.getClass(), "getId", new Class[0]);
        Method method2 = AdUtilities.getMethod(invokeMethod2.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
        return (method == null || method2 == null) ? null : new AdvertisingIdInfo((String) AdUtilities.invokeMethod(invokeMethod2, method, new Object[0]), ((Boolean) AdUtilities.invokeMethod(invokeMethod2, method2, new Object[0])).booleanValue());
    }

    public String getId() {
        return this.id;
    }

    public boolean isLimitAdTrackingEnabled() {
        return this.limitAdTrackingEnabled;
    }
}