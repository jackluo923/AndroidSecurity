package com.amazon.device.ads;

class GooglePlayServices {
    private static final String a;
    private static final String b = "gps-available";

    static class AdvertisingInfo {
        private boolean a;
        private String b;
        private boolean c;

        protected AdvertisingInfo() {
            this.a = true;
        }

        static AdvertisingInfo a() {
            return new AdvertisingInfo().b(false);
        }

        private AdvertisingInfo b(boolean z) {
            this.a = z;
            return this;
        }

        AdvertisingInfo a(String str) {
            this.b = str;
            return this;
        }

        AdvertisingInfo a(boolean z) {
            this.c = z;
            return this;
        }

        boolean b() {
            return this.a;
        }

        String c() {
            return this.b;
        }

        boolean d() {
            return c() != null;
        }

        boolean e() {
            return this.c;
        }
    }

    static {
        a = GooglePlayServices.class.getSimpleName();
    }

    GooglePlayServices() {
    }

    private void a(boolean z) {
        Settings.getInstance().putTransientBoolean(b, z);
    }

    private boolean b() {
        return Settings.getInstance().getBoolean(b, true);
    }

    private boolean c() {
        return Settings.getInstance().containsKey(b);
    }

    protected GooglePlayServicesAdapter a() {
        return new GooglePlayServicesAdapter();
    }

    public AdvertisingInfo getAdvertisingIdentifierInfo() {
        if (!b()) {
            Log.v(a, "The Google Play Services Advertising Identifier feature is not available.");
            return AdvertisingInfo.a();
        } else if (c() || ReflectionUtils.isClassAvailable("com.google.android.gms.ads.identifier.AdvertisingIdClient")) {
            AdvertisingInfo advertisingIdentifierInfo = a().getAdvertisingIdentifierInfo();
            a(advertisingIdentifierInfo.b());
            return advertisingIdentifierInfo;
        } else {
            Log.v(a, "The Google Play Services Advertising Identifier feature is not available.");
            a(false);
            return AdvertisingInfo.a();
        }
    }
}