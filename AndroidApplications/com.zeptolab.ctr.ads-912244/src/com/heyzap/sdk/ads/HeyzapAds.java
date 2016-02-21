package com.heyzap.sdk.ads;

import android.app.Activity;
import android.content.Context;
import com.heyzap.house.Manager;
import com.heyzap.internal.Analytics;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;

public class HeyzapAds {
    @Deprecated
    public static final int ADVERTISER_ONLY = 2;
    public static final int AMAZON = 4;
    public static final int DISABLE_AUTOMATIC_FETCH = 1;
    public static final int DISABLE_FIRST_AUTOMATIC_FETCH = 8;
    public static final int INSTALL_TRACKING_ONLY = 2;
    public static final int NONE = 0;
    private static boolean enabled;
    public static String framework;
    public static String mediator;
    public static String store;

    public static interface OnIncentiveResultListener {
        void onComplete(String str);

        void onIncomplete(String str);
    }

    public static interface OnStatusListener {
        void onAudioFinished();

        void onAudioStarted();

        void onAvailable(String str);

        void onClick(String str);

        void onFailedToFetch(String str);

        void onFailedToShow(String str);

        void onHide(String str);

        void onShow(String str);
    }

    static {
        enabled = false;
        framework = null;
        mediator = null;
        store = ZBuildConfig.market;
    }

    private HeyzapAds() {
    }

    public static void changeServer(String str) {
        Manager.AD_SERVER = str;
    }

    public static Boolean hasStarted() {
        boolean z;
        z = enabled && Manager.isStarted().booleanValue();
        return Boolean.valueOf(z);
    }

    @Deprecated
    public static void setOnIncentiveResultListener(OnIncentiveResultListener onIncentiveResultListener) {
        Manager.getInstance().setOnIncentiveResultListener(onIncentiveResultListener);
    }

    @Deprecated
    public static void setOnStatusListener(OnStatusListener onStatusListener) {
        Manager.getInstance().setOnStatusListener(Integer.valueOf(DISABLE_AUTOMATIC_FETCH), onStatusListener);
        Manager.getInstance().setOnStatusListener(Integer.valueOf(INSTALL_TRACKING_ONLY), onStatusListener);
        Manager.getInstance().setOnStatusListener(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE), onStatusListener);
    }

    public static void slowClose(Boolean bool) {
        Manager.SLOW_CLOSE = bool;
    }

    public static void start(String str, Activity activity) {
        start(str, activity, 0, null);
    }

    public static void start(String str, Activity activity, int i) {
        start(str, activity, i, null);
    }

    public static void start(String str, Activity activity, int i, OnStatusListener onStatusListener) {
        if (!hasStarted().booleanValue()) {
            if ((i & 4) == 4 || Utils.isAmazon()) {
                store = "amazon";
            }
            Utils.load(activity);
            Manager.start(activity, str);
            if (i > 0) {
                Manager.getInstance().setFlags(i);
            }
            if (onStatusListener != null) {
                Manager.getInstance().setOnStatusListener(Integer.valueOf(DISABLE_AUTOMATIC_FETCH), onStatusListener);
                Manager.getInstance().setOnStatusListener(Integer.valueOf(INSTALL_TRACKING_ONLY), onStatusListener);
                Manager.getInstance().setOnStatusListener(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE), onStatusListener);
            }
            enabled = true;
            Analytics.trackEvent(activity, "heyzap-start");
            if (!Manager.getInstance().isFlagEnabled(DISABLE_FIRST_AUTOMATIC_FETCH).booleanValue() && !Manager.getInstance().isFlagEnabled(DISABLE_AUTOMATIC_FETCH).booleanValue() && !Manager.getInstance().isFlagEnabled(INSTALL_TRACKING_ONLY).booleanValue()) {
                Logger.log("(PREFETCH)");
                InterstitialAd.fetch();
            }
        }
    }

    public static void start(String str, Activity activity, OnStatusListener onStatusListener) {
        start(str, activity, 0, onStatusListener);
    }

    @Deprecated
    public static void start(String str, Context context) {
        start(str, (Activity) context, 0, null);
    }

    @Deprecated
    public static void start(String str, Context context, int i) {
        start(str, (Activity) context, i, null);
    }

    @Deprecated
    public static void start(String str, Context context, int i, OnStatusListener onStatusListener) {
        start(str, (Activity) context, 0, onStatusListener);
    }

    @Deprecated
    public static void start(String str, Context context, OnStatusListener onStatusListener) {
        start(str, (Activity) context, 0, onStatusListener);
    }
}