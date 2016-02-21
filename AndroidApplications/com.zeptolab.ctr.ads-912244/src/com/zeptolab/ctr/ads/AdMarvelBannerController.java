package com.zeptolab.ctr.ads;

import android.app.Activity;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.ads.AdMarvelView;
import com.zeptolab.ctr.CtrPreferences;
import com.zeptolab.utils.SystemInfo;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashMap;
import java.util.Map;

public class AdMarvelBannerController {
    private static boolean m_isDisabled;
    private static boolean m_isInitialized;
    private static Map m_publisherIds;

    static {
        m_isInitialized = false;
        m_isDisabled = false;
        m_publisherIds = new HashMap();
        m_publisherIds.put(SDKAdNetwork.INMOBI, ZBuildConfig.admarvel_inmobi_app_id);
        m_publisherIds.put(SDKAdNetwork.HEYZAP, ZBuildConfig.admarvel_heyzap_pub_id);
    }

    public static boolean isDisabled() {
        return m_isDisabled;
    }

    public static boolean isInitialized() {
        return m_isInitialized;
    }

    public static void onDestroy(Activity activity) {
        if (!m_isDisabled && m_isInitialized) {
            AdMarvelView.uninitialize(activity, m_publisherIds);
        }
    }

    public static void onPause(Activity activity, AdMarvelView adMarvelView) {
        if (!m_isDisabled && m_isInitialized) {
            AdMarvelView.pause(activity, m_publisherIds, adMarvelView);
        }
    }

    public static void onResume(Activity activity, AdMarvelView adMarvelView) {
        if (!m_isDisabled && m_isInitialized) {
            AdMarvelView.resume(activity, m_publisherIds, adMarvelView);
        }
    }

    public static void onStart(Activity activity) {
        if (CtrPreferences.getInstance().getBooleanForKey("IAP_BANNERS")) {
            m_isDisabled = true;
        } else {
            if (AdMarvelUtils.isTabletDevice(activity)) {
                m_publisherIds.put(SDKAdNetwork.ADCOLONY, SystemInfo.getAppVersion() + "|" + ZBuildConfig.adcolony_app_id + "|" + ZBuildConfig.adcolony_zone_id_tablet);
            } else {
                m_publisherIds.put(SDKAdNetwork.ADCOLONY, SystemInfo.getAppVersion() + "|" + ZBuildConfig.adcolony_app_id + "|" + ZBuildConfig.adcolony_zone_id_phone);
            }
            try {
                AdMarvelView.initialize(activity, m_publisherIds);
                m_isInitialized = true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}