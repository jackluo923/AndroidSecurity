package com.amazon.device.ads;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

class AdvertisingIdentifier {
    private static final String a;
    private static final String b = "gpsAdId";
    private static final String c = "adIdTransistion";
    private static final String d = "migrate";
    private static final String e = "reset";
    private static final String f = "revert";
    private AdvertisingInfo g;
    private boolean h;

    static class Info {
        private boolean a;
        private String b;
        private boolean c;
        private String d;

        Info() {
            this.a = true;
        }

        private Info a(String str) {
            this.b = str;
            return this;
        }

        private Info a(boolean z) {
            this.a = z;
            return this;
        }

        private Info b(String str) {
            this.d = str;
            return this;
        }

        private Info b(boolean z) {
            this.c = z;
            return this;
        }

        boolean a() {
            return this.a;
        }

        String b() {
            return DebugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_IDFA, this.b);
        }

        boolean c() {
            return !Utils.isNullOrEmpty(b());
        }

        boolean d() {
            return DebugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_OPT_OUT, this.c);
        }

        String e() {
            return DebugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_ADID, this.d);
        }

        boolean f() {
            return e() != null;
        }
    }

    static {
        a = AdvertisingIdentifier.class.getSimpleName();
    }

    AdvertisingIdentifier() {
        this.h = true;
    }

    static String a() {
        Settings instance = Settings.getInstance();
        String string = instance.getString(c, null);
        instance.remove(c);
        return string;
    }

    private static void a(String str) {
        Log.d(a, "Transition: %s", new Object[]{str});
        Settings.getInstance().putString(c, str);
    }

    private static void b(String str) {
        Settings.getInstance().putString(b, str);
    }

    private void e() {
        String str = null;
        if (f()) {
            str = d;
        } else if (g()) {
            str = e;
        } else if (h()) {
            str = f;
        }
        if (str != null) {
            a(str);
        } else {
            Log.d(a, "No transition detected.");
        }
    }

    private boolean f() {
        return InternalAdRegistration.getInstance().getRegistrationInfo().hasAdId() && RegistrationInfo.isAdIdOriginatedFromNonAdvertisingIdentifier() && !j() && d().d();
    }

    private boolean g() {
        return j() && d().d() && !i().equals(d().c());
    }

    private boolean h() {
        return j() && !d().d();
    }

    private static String i() {
        return Settings.getInstance().getString(b, AdTrackerConstants.BLANK);
    }

    private boolean j() {
        return !Utils.isNullOrEmpty(i());
    }

    AdvertisingIdentifier a(boolean z) {
        this.h = z;
        return this;
    }

    Info b() {
        if (ThreadUtils.isOnMainThread()) {
            Log.e(a, "You must obtain the advertising indentifier information on a background thread.");
            return new Info().a(false);
        } else {
            c();
            if (this.h) {
                e();
            }
            Info info = new Info();
            if (d().d()) {
                info.a(d().c());
                info.b(d().e());
                if (this.h) {
                    b(d().c());
                }
            }
            RegistrationInfo registrationInfo = InternalAdRegistration.getInstance().getRegistrationInfo();
            if (RegistrationInfo.isAdIdCurrent(info)) {
                info.b(registrationInfo.getAdId());
                return info;
            } else {
                registrationInfo.requestNewSISDeviceIdentifier();
                return info;
            }
        }
    }

    protected void c() {
        this.g = new GooglePlayServices().getAdvertisingIdentifierInfo();
    }

    protected AdvertisingInfo d() {
        return this.g;
    }
}