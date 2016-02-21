package com.admarvel.android.ads;

import java.util.HashMap;
import java.util.Map;

class j {
    private static final Map a;

    static {
        a = a();
    }

    static Map a() {
        Map hashMap = new HashMap();
        try {
            hashMap.put(Constants.GOOGLEPLAY_SDK_FULL_CLASSNAME, Boolean.valueOf(b(Constants.GOOGLEPLAY_SDK_FULL_CLASSNAME)));
        } catch (Exception e) {
        }
        try {
            hashMap.put(Constants.RHYTHM_SDK_FULL_CLASSNAME, Boolean.valueOf(b(Constants.RHYTHM_SDK_FULL_CLASSNAME)));
        } catch (Exception e2) {
        }
        try {
            hashMap.put(Constants.GREYSTRIPE_SDK_FULL_CLASSNAME, Boolean.valueOf(b(Constants.GREYSTRIPE_SDK_FULL_CLASSNAME)));
        } catch (Exception e3) {
        }
        try {
            hashMap.put(Constants.MILLENNIAL_SDK_FULL_CLASSNAME, Boolean.valueOf(b(Constants.MILLENNIAL_SDK_FULL_CLASSNAME)));
        } catch (Exception e4) {
        }
        try {
            hashMap.put(Constants.AMAZON_SDK_FULL_CLASSNAME, Boolean.valueOf(b(Constants.AMAZON_SDK_FULL_CLASSNAME)));
        } catch (Exception e5) {
        }
        try {
            hashMap.put(Constants.ADCOLONY_SDK_FULL_CLASSNAME, Boolean.valueOf(b(Constants.ADCOLONY_SDK_FULL_CLASSNAME)));
        } catch (Exception e6) {
        }
        try {
            hashMap.put(Constants.PULSE3D_SDK_FULL_CLASSNAME, Boolean.valueOf(b(Constants.PULSE3D_SDK_FULL_CLASSNAME)));
        } catch (Exception e7) {
        }
        try {
            hashMap.put(Constants.FACEBOOK_SDK_FULL_CLASSNAME, Boolean.valueOf(b(Constants.FACEBOOK_SDK_FULL_CLASSNAME)));
        } catch (Exception e8) {
        }
        try {
            hashMap.put(Constants.INMOBI_SDK_FULL_CLASSNAME, Boolean.valueOf(b(Constants.INMOBI_SDK_FULL_CLASSNAME)));
        } catch (Exception e9) {
        }
        try {
            hashMap.put(Constants.HEYZAP_SDK_FULL_CLASSNAME, Boolean.valueOf(b(Constants.HEYZAP_SDK_FULL_CLASSNAME)));
        } catch (Exception e10) {
        }
        return hashMap;
    }

    static boolean a(String str) {
        return ((Boolean) a.get(str)).booleanValue();
    }

    public static boolean b(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}