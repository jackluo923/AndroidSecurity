package com.heyzap.sdk.ads;

import android.app.Activity;
import android.content.Context;
import com.brightcove.player.event.Event;
import com.heyzap.house.Manager;
import com.heyzap.house.model.AdCache;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.model.VideoModel;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.internal.Connectivity;
import com.heyzap.sdk.ads.HeyzapAds.OnStatusListener;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class InterstitialAd {
    private static int AD_UNIT;
    private static final ArrayList CREATIVE_TYPES;
    private static final ArrayList NO_VIDEO_CREATIVE_TYPES;
    private static volatile HashMap ads;
    private static Integer campaignId;
    private static Integer creativeId;
    private static String creativeType;
    private static Boolean debugEnabled;
    private static HashMap displayRequests;
    private static long lastDisplayTimeMillis;
    private static volatile HashMap loadingAds;
    private static long minimumDisplayIntervalMillis;

    private static class a {
        long a;
        WeakReference b;
        String c;

        public a(Activity activity, String str, int i) {
            this.b = new WeakReference(activity);
            this.c = str;
            this.a = System.currentTimeMillis() + ((long) i);
        }

        public void a_() {
            Activity activity = (Activity) this.b.get();
            if (activity != null && System.currentTimeMillis() < this.a) {
                InterstitialAd.display(activity, this.c);
            }
        }
    }

    static {
        ads = new HashMap();
        loadingAds = new HashMap();
        CREATIVE_TYPES = new ArrayList(Arrays.asList(new String[]{"interstitial", "full_screen_interstitial", Event.VIDEO, "interstitial_video"}));
        NO_VIDEO_CREATIVE_TYPES = new ArrayList(Arrays.asList(new String[]{"interstitial", "full_screen_interstitial"}));
        creativeId = Integer.valueOf(0);
        campaignId = Integer.valueOf(0);
        creativeType = null;
        debugEnabled = Boolean.valueOf(false);
        AD_UNIT = 1;
        lastDisplayTimeMillis = 0;
        minimumDisplayIntervalMillis = 5000;
        displayRequests = new HashMap();
    }

    private InterstitialAd() {
    }

    private static FetchRequest createRequest(String str, Boolean bool, int i) {
        ArrayList arrayList;
        if (creativeType != null) {
            arrayList = new ArrayList(Arrays.asList(new String[]{creativeType}));
        } else if (bool.booleanValue()) {
            arrayList = CREATIVE_TYPES;
        } else {
            arrayList = NO_VIDEO_CREATIVE_TYPES;
        }
        FetchRequest fetchRequest = new FetchRequest(AD_UNIT, str, arrayList);
        if (debugEnabled.booleanValue()) {
            fetchRequest.setDebugEnabled(debugEnabled);
            fetchRequest.setRandomStrategyEnabled(Boolean.valueOf(true));
        }
        if (i > 0) {
            HashMap hashMap = new HashMap();
            switch (i) {
                case GoogleScorer.CLIENT_GAMES:
                    hashMap.put("orientation", DeviceInfo.ORIENTATION_PORTRAIT);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    hashMap.put("orientation", DeviceInfo.ORIENTATION_LANDSCAPE);
                    break;
            }
            fetchRequest.setAdditionalParams(hashMap);
        }
        fetchRequest.setCreativeId(creativeId);
        fetchRequest.setCampaignId(campaignId);
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
            if (peek == null) {
                FetchRequest createRequest = createRequest(str, Boolean.valueOf(false), 0);
                createRequest.setResponseHandler(new d(activity, str));
                createRequest.execute(activity);
            } else {
                activity.runOnUiThread(new e(activity, peek.getFormat() == VideoModel.FORMAT ? HeyzapVideoActivity.class : HeyzapInterstitialActivity.class, peek));
            }
        }
    }

    @Deprecated
    public static void display(Context context) {
        display((Activity) context);
    }

    @Deprecated
    public static void display(Context context, String str) {
        display((Activity) context, str);
    }

    public static void fetch() {
        fetch(AdModel.DEFAULT_TAG_NAME, 0);
    }

    public static void fetch(String str) {
        fetch(str, 0);
    }

    public static void fetch(String str, int i) {
        if (!AdCache.getInstance().has(AD_UNIT, str).booleanValue()) {
            FetchRequest createRequest = createRequest(str, Boolean.valueOf(true), i);
            createRequest.setResponseHandler(new c());
            createRequest.execute(Manager.applicationContext);
        }
    }

    @Deprecated
    public static void fetch(boolean z, String str) {
        fetch(str, 0);
    }

    public static Boolean isAvailable() {
        return isAvailable(AdModel.DEFAULT_TAG_NAME);
    }

    public static Boolean isAvailable(String str) {
        return Connectivity.isConnected(Manager.applicationContext) ? AdCache.getInstance().has(AD_UNIT, str) : Boolean.valueOf(false);
    }

    public static void setCampaignId(int i) {
        campaignId = Integer.valueOf(i);
    }

    public static void setCreativeId(int i) {
        creativeId = Integer.valueOf(i);
    }

    @Deprecated
    public static void setDisplayListener(OnStatusListener onStatusListener) {
        HeyzapAds.setOnStatusListener(onStatusListener);
    }

    public static void setOnStatusListener(OnStatusListener onStatusListener) {
        Manager.getInstance().setOnStatusListener(Integer.valueOf(AD_UNIT), onStatusListener);
    }

    public static void setTargetCreativeType(String str) {
        creativeType = str;
    }
}