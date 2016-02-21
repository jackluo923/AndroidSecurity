package com.admarvel.android.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class AdMarvelAdapterInstances {
    private static Map adMarvelAdapterInstancesForAdMarvelView;
    private static final Map adapterInstances;

    static {
        adapterInstances = createInstances();
        adMarvelAdapterInstancesForAdMarvelView = new ConcurrentHashMap();
        adMarvelAdapterInstancesForAdMarvelView.put("ADMARVELGUID", adapterInstances);
    }

    public static synchronized void buildAdMarvelAdapterInstances(String str) {
        synchronized (AdMarvelAdapterInstances.class) {
            adMarvelAdapterInstancesForAdMarvelView.put(str, createInstances());
        }
    }

    private static Map createInstances() {
        Map hashMap = new HashMap();
        try {
            hashMap.put(Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME, AdMarvelAdapter.createInstance(Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME));
        } catch (Exception e) {
        }
        try {
            hashMap.put(Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME, AdMarvelAdapter.createInstance(Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME));
        } catch (Exception e2) {
        }
        try {
            hashMap.put(Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME, AdMarvelAdapter.createInstance(Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME));
        } catch (Exception e3) {
        }
        try {
            hashMap.put(Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME, AdMarvelAdapter.createInstance(Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME));
        } catch (Exception e4) {
        }
        try {
            hashMap.put(Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME, AdMarvelAdapter.createInstance(Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME));
        } catch (Exception e5) {
        }
        try {
            hashMap.put(Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME, AdMarvelAdapter.createInstance(Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME));
        } catch (Exception e6) {
        }
        try {
            hashMap.put(Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME, AdMarvelAdapter.createInstance(Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME));
        } catch (Exception e7) {
        }
        try {
            hashMap.put(Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME, AdMarvelAdapter.createInstance(Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME));
        } catch (Exception e8) {
        }
        try {
            hashMap.put(Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME, AdMarvelAdapter.createInstance(Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME));
        } catch (Exception e9) {
        }
        try {
            hashMap.put(Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME, AdMarvelAdapter.createInstance(Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME));
        } catch (Exception e10) {
        }
        return hashMap;
    }

    protected static synchronized void destroyAdMarvelAdapterInstances(String str) {
        synchronized (AdMarvelAdapterInstances.class) {
            adMarvelAdapterInstancesForAdMarvelView.remove(str);
        }
    }

    public static Map getAdMarvelAdapterInstancesForAdMarvelView() {
        return adMarvelAdapterInstancesForAdMarvelView;
    }

    public static AdMarvelAdapter getAdapterInstance(String str) {
        return (AdMarvelAdapter) adapterInstances.get(str);
    }

    public static AdMarvelAdapter getInstance(String str, String str2) {
        Map map = (Map) adMarvelAdapterInstancesForAdMarvelView.get(str);
        return map != null ? (AdMarvelAdapter) map.get(str2) : null;
    }
}