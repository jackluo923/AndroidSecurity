package com.vungle.sdk;

import android.content.Context;
import com.millennialmedia.android.MMRequest;
import com.vungle.publisher.AdConfig;
import com.vungle.publisher.Demographic;
import com.vungle.publisher.Orientation;
import com.vungle.publisher.inject.Injector;

public final class VunglePub {
    private static final com.vungle.publisher.VunglePub a;
    private static boolean b;
    private static boolean c;
    private static boolean d;

    public static interface EventListener {
        void onVungleAdEnd();

        void onVungleAdStart();

        void onVungleView(double d, double d2);
    }

    public static final class Gender {
        public static final int FEMALE = 1;
        public static final int MALE = 0;
        public static final int UNKNOWN = -1;

        private Gender() {
        }

        static com.vungle.publisher.Demographic.Gender a(int i) {
            switch (i) {
                case MALE:
                    return com.vungle.publisher.Demographic.Gender.male;
                case FEMALE:
                    return com.vungle.publisher.Demographic.Gender.female;
                default:
                    return null;
            }
        }

        public static String toString(int i) {
            switch (i) {
                case MALE:
                    return MMRequest.GENDER_MALE;
                case FEMALE:
                    return MMRequest.GENDER_FEMALE;
                default:
                    return DeviceInfo.ORIENTATION_UNKNOWN;
            }
        }
    }

    static class a implements com.vungle.publisher.EventListener {
        private com.vungle.sdk.VunglePub.EventListener a;

        a(com.vungle.sdk.VunglePub.EventListener eventListener) {
            this.a = eventListener;
        }

        public final void onAdEnd(boolean z) {
            this.a.onVungleAdEnd();
        }

        public final void onAdStart() {
            this.a.onVungleAdStart();
        }

        public final void onAdUnavailable(String str) {
        }

        public final void onCachedAdAvailable() {
        }

        public final void onVideoView(boolean z, int i, int i2) {
            this.a.onVungleView(((double) i) / 1000.0d, ((double) i2) / 1000.0d);
        }
    }

    static {
        a = com.vungle.publisher.VunglePub.getInstance();
    }

    private VunglePub() {
    }

    public static boolean displayAdvert() {
        boolean isVideoAvailable = isVideoAvailable();
        AdConfig adConfig = new AdConfig();
        adConfig.setBackButtonImmediatelyEnabled(c);
        a.playAd(adConfig);
        return isVideoAvailable;
    }

    public static boolean displayIncentivizedAdvert(String str, boolean z) {
        boolean isVideoAvailable = isVideoAvailable();
        AdConfig adConfig = new AdConfig();
        adConfig.setBackButtonImmediatelyEnabled(d);
        a.playAd(adConfig);
        return isVideoAvailable;
    }

    public static boolean displayIncentivizedAdvert(boolean z) {
        return displayIncentivizedAdvert(null, z);
    }

    public static boolean getSoundEnabled() {
        AdConfig globalAdConfig = a.getGlobalAdConfig();
        return globalAdConfig != null ? globalAdConfig.isSoundEnabled() : false;
    }

    public static String getVersionString() {
        return VunglePubBase.VERSION;
    }

    public static void init(Context context, String str) {
        init(context, str, 0, -1);
    }

    public static void init(Context context, String str, int i, int i2) {
        boolean z = 0;
        if (!b) {
            Injector instance = Injector.getInstance();
            instance.a(VungleAdvert.class);
            instance.b(VungleIntentService.class);
        }
        a.init(context, str);
        if (!b) {
            int i3;
            i3 = i > 0;
            com.vungle.publisher.Demographic.Gender a = Gender.a(i2);
            if (a != null) {
                z = true;
            }
            if (i3 != 0 || i != 0) {
                Demographic demographic = a.getDemographic();
                if (i3 != 0) {
                    demographic.setAge(Integer.valueOf(i));
                }
                if (i != 0) {
                    demographic.setGender(a);
                }
                b = true;
            }
        }
    }

    public static boolean isVideoAvailable() {
        return isVideoAvailable(false);
    }

    public static boolean isVideoAvailable(boolean z) {
        return a.isCachedAdAvailable();
    }

    public static void onPause() {
        a.onPause();
    }

    public static void onResume() {
        a.onResume();
    }

    public static void setAutoRotation(boolean z) {
        AdConfig globalAdConfig = a.getGlobalAdConfig();
        if (globalAdConfig != null) {
            globalAdConfig.setOrientation(z ? Orientation.autoRotate : Orientation.matchVideo);
        }
    }

    public static void setBackButtonEnabled(boolean z) {
        c = z;
    }

    public static void setEventListener(EventListener eventListener) {
        a.setEventListener(eventListener == null ? null : new a(eventListener));
    }

    public static void setIncentivizedBackButtonEnabled(boolean z) {
        d = z;
    }

    public static void setSoundEnabled(boolean z) {
        AdConfig globalAdConfig = a.getGlobalAdConfig();
        if (globalAdConfig != null) {
            globalAdConfig.setSoundEnabled(z);
        }
    }
}