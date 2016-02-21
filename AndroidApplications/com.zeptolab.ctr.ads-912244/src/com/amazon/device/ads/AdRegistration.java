package com.amazon.device.ads;

import android.content.Context;

public final class AdRegistration {
    private static final String a = "AdRegistration";

    protected AdRegistration() {
    }

    public static final void enableLogging(boolean z) {
        Log.enableLoggingWithSetterNotification(a, z);
    }

    public static final void enableTesting(boolean z) {
        Settings.getInstance().putTransientBoolean("testingEnabled", z);
        Log.logSetterNotification(a, "Test mode", Boolean.valueOf(z));
    }

    public static final String getVersion() {
        return Version.getSDKVersion();
    }

    public static final void registerApp(Context context) {
        if (PermissionChecker.a().passesInternetPermissionCheck(context, a)) {
            InternalAdRegistration.getInstance().contextReceived(context);
            InternalAdRegistration.getInstance().register();
        }
    }

    public static final void setAppKey(String str) {
        InternalAdRegistration.getInstance().getRegistrationInfo().putAppKey(str);
    }
}