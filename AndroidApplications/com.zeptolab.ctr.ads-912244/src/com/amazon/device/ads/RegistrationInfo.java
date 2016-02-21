package com.amazon.device.ads;

class RegistrationInfo {
    private static final String a = "app";
    private static final String b = "amzn-ad-id";
    private static final String c = "amzn-ad-id-origin";
    private static final String d = "newSISDIDRequested";
    private static final String e = "non-advertising-identifier";
    private String f;
    private String g;

    public RegistrationInfo() {
        this.g = a;
    }

    protected static void a(Info info) {
        if (info.c()) {
            Settings.getInstance().putStringWithNoFlush(c, info.b());
        } else {
            Settings.getInstance().putStringWithNoFlush(c, e);
        }
    }

    public static boolean isAdIdCurrent(Info info) {
        boolean isAdIdOriginatedFromNonAdvertisingIdentifier = isAdIdOriginatedFromNonAdvertisingIdentifier();
        if (!info.c()) {
            return isAdIdOriginatedFromNonAdvertisingIdentifier;
        }
        if (isAdIdOriginatedFromNonAdvertisingIdentifier) {
            return false;
        }
        return info.b().equals(Settings.getInstance().getString(c, null));
    }

    public static boolean isAdIdOriginatedFromNonAdvertisingIdentifier() {
        String string = Settings.getInstance().getString(c, null);
        return string == null || e.equals(string);
    }

    public String getAdId() {
        return DebugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_ADID, Settings.getInstance().getString(b, null));
    }

    public String getAppKey() {
        return DebugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_APPID, this.f);
    }

    public String getAppName() {
        return this.g;
    }

    public boolean hasAdId() {
        return getAdId() != null;
    }

    public boolean isRegisteredWithSIS() {
        return !Utils.isNullOrEmpty(getAdId());
    }

    public void putAdId(String str, Info info) {
        Settings instance = Settings.getInstance();
        instance.putStringWithNoFlush(b, str);
        a(info);
        instance.putBooleanWithNoFlush(d, false);
        instance.flush();
    }

    public void putAppKey(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Application Key must not be null or empty.");
        }
        this.f = Utils.getURLEncodedString(str);
    }

    public void putAppName(String str) {
        this.g = Utils.getURLEncodedString(str);
    }

    public void requestNewSISDeviceIdentifier() {
        Settings.getInstance().putBoolean(d, true);
    }

    public boolean shouldGetNewSISDeviceIdentifer() {
        return Settings.getInstance().getBoolean(d, false);
    }

    public boolean shouldGetNewSISRegistration() {
        return !isRegisteredWithSIS();
    }
}