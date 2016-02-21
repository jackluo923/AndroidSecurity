package com.heyzap.sdk.ads;

import android.app.Activity;
import com.brightcove.player.event.Event;
import com.heyzap.house.Manager;
import com.heyzap.house.model.AdCache;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.model.VideoModel;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.internal.Connectivity;
import com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener;
import com.heyzap.sdk.ads.HeyzapAds.OnStatusListener;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class IncentivizedAd {
    private static int AD_UNIT;
    private static final ArrayList CREATIVE_TYPES;
    private static volatile HashMap ads;
    private static Integer campaignId;
    private static Integer creativeId;
    private static String creativeType;
    private static Boolean debugEnabled;
    private static long lastDisplayTimeMillis;
    private static volatile HashMap loadingAds;
    private static long minimumDisplayIntervalMillis;
    private static String userIdentifier;

    static {
        ads = new HashMap();
        loadingAds = new HashMap();
        CREATIVE_TYPES = new ArrayList(Arrays.asList(new String[]{Event.VIDEO, "interstitial_video"}));
        userIdentifier = null;
        creativeId = Integer.valueOf(0);
        campaignId = Integer.valueOf(0);
        creativeType = null;
        debugEnabled = Boolean.valueOf(false);
        AD_UNIT = 2;
        lastDisplayTimeMillis = 0;
        minimumDisplayIntervalMillis = 5000;
    }

    private IncentivizedAd() {
    }

    private static FetchRequest createRequest(String str) {
        ArrayList arrayList;
        if (creativeType != null) {
            arrayList = new ArrayList(Arrays.asList(new String[]{creativeType}));
        } else {
            arrayList = CREATIVE_TYPES;
        }
        FetchRequest fetchRequest = new FetchRequest(AD_UNIT, str, arrayList);
        if (debugEnabled.booleanValue()) {
            fetchRequest.setDebugEnabled(debugEnabled);
            fetchRequest.setRandomStrategyEnabled(Boolean.valueOf(true));
        }
        fetchRequest.setCreativeId(creativeId);
        fetchRequest.setCampaignId(campaignId);
        Map hashMap = new HashMap();
        hashMap.put("orientation", DeviceInfo.ORIENTATION_LANDSCAPE);
        if (userIdentifier != null) {
            hashMap.put("user_identifier", userIdentifier);
        }
        fetchRequest.setAdditionalParams(hashMap);
        return fetchRequest;
    }

    public static void dismiss() {
        if (Manager.lastActivity != null) {
            Manager.lastActivity.onHide();
        }
    }

    public static void display(Activity activity) {
        display(activity, AdModel.DEFAULT_TAG_NAME);
    }

    public static void display(Activity activity, String str) {
        if (!Connectivity.isConnected(activity)) {
            Manager.getInstance().getOnStatusListener(Integer.valueOf(AD_UNIT)).onFailedToShow(str);
        } else if (System.currentTimeMillis() - lastDisplayTimeMillis >= minimumDisplayIntervalMillis) {
            lastDisplayTimeMillis = System.currentTimeMillis();
            AdModel peek = AdCache.getInstance().peek(AD_UNIT, str);
            if (peek == null || !peek.isReady().booleanValue()) {
                Manager.getInstance().getOnStatusListener(Integer.valueOf(AD_UNIT)).onFailedToShow(str);
            } else {
                activity.runOnUiThread(new b(activity, peek.getFormat() == VideoModel.FORMAT ? HeyzapVideoActivity.class : HeyzapInterstitialActivity.class, peek));
            }
        }
    }

    public static void fetch() {
        fetch(false, AdModel.DEFAULT_TAG_NAME);
    }

    public static void fetch(String str) {
        fetch(false, str);
    }

    public static void fetch(boolean z, String str) {
        if (!AdCache.getInstance().has(AD_UNIT, str).booleanValue()) {
            FetchRequest createRequest = createRequest(str);
            createRequest.setResponseHandler(new a());
            createRequest.execute(Manager.applicationContext);
        }
    }

    public static Boolean isAvailable() {
        return isAvailable(AdModel.DEFAULT_TAG_NAME);
    }

    public static Boolean isAvailable(String str) {
        if (!Connectivity.isConnected(Manager.applicationContext)) {
            return Boolean.valueOf(false);
        }
        AdModel peek = AdCache.getInstance().peek(AD_UNIT, str);
        return (peek == null || !peek.isReady().booleanValue()) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public static void setCampaignId(int i) {
        campaignId = Integer.valueOf(i);
    }

    public static void setCreativeId(int i) {
        creativeId = Integer.valueOf(i);
    }

    public static void setOnIncentiveResultListener(OnIncentiveResultListener onIncentiveResultListener) {
        Manager.getInstance().setOnIncentiveResultListener(onIncentiveResultListener);
    }

    public static void setOnStatusListener(OnStatusListener onStatusListener) {
        Manager.getInstance().setOnStatusListener(Integer.valueOf(AD_UNIT), onStatusListener);
    }

    public static void setTargetCreativeType(String str) {
        creativeType = str;
    }

    public static void setUserIdentifier(String str) {
        if (str != null && str.trim().equals(AdTrackerConstants.BLANK)) {
            str = null;
        }
        userIdentifier = str;
    }
}