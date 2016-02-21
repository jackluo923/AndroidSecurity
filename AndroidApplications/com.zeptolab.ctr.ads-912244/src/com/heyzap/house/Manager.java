package com.heyzap.house;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import com.brightcove.player.event.Event;
import com.heyzap.house.handler.AttributionHandler;
import com.heyzap.house.impl.AbstractActivity;
import com.heyzap.house.model.AdModel;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import com.heyzap.sdk.ads.HeyzapAds.OnIncentiveResultListener;
import com.heyzap.sdk.ads.HeyzapAds.OnStatusListener;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class Manager {
    public static final String ACTION_URL_PLACEHOLDER = "market://details?id=%s&referrer=%s";
    public static final String ACTION_URL_REFERRER = "utm_source%3Dheyzap%26utm_medium%3Dmobile%26utm_campaign%3Dheyzap_ad_network";
    public static String AD_SERVER = null;
    public static final int AD_UNIT_INCENTIVIZED = 2;
    public static final int AD_UNIT_INTERSTITIAL = 1;
    public static final int AD_UNIT_NATIVE = 4;
    public static final int AD_UNIT_UNKNOWN = 0;
    public static final int AD_UNIT_VIDEO = 3;
    private static OnIncentiveResultListener DEFAULT_INCENTIVE_LISTENER = null;
    private static OnStatusListener DEFAULT_STATUS_LISTENER = null;
    public static final String FIRST_RUN_KEY = "HeyzapAdsFirstRun";
    public static final String PREFERENCES_KEY = "com.heyzap.sdk.ads";
    public static Boolean SLOW_CLOSE;
    public static Context applicationContext;
    public static final Handler handler;
    public static AbstractActivity lastActivity;
    public static long maxClickDifference;
    private static volatile Manager ref;
    public static Boolean started;
    private Context context;
    private int flags;
    private OnIncentiveResultListener incentiveListener;
    public long lastClickedTime;
    private String publisherId;
    private HashMap statusListeners;

    static {
        maxClickDifference = 1000;
        SLOW_CLOSE = Boolean.valueOf(false);
        AD_SERVER = "http://ads.heyzap.com/in_game_api/ads";
        handler = new Handler(Looper.getMainLooper());
        started = Boolean.valueOf(false);
        lastActivity = null;
        DEFAULT_STATUS_LISTENER = new a();
        DEFAULT_INCENTIVE_LISTENER = new b();
    }

    private Manager(Context context, String str) {
        this.lastClickedTime = 0;
        this.flags = 0;
        this.publisherId = null;
        this.context = null;
        this.statusListeners = new HashMap();
        this.incentiveListener = null;
        setPublisherId(str);
        setContext(context);
    }

    public static String adUnitName(int i) {
        switch (i) {
            case AD_UNIT_INCENTIVIZED:
                return "incentivized";
            case AD_UNIT_VIDEO:
                return Event.VIDEO;
            case AD_UNIT_NATIVE:
                return "native";
            default:
                return "interstitial";
        }
    }

    public static synchronized Manager getInstance() {
        Manager manager;
        synchronized (Manager.class) {
            if (ref == null) {
                throw new RuntimeException("Heyzap has not been started yet! Start Heyzap by calling HeyzapAds.start(<your-publisher-id>) in your launch Activity.");
            }
            manager = ref;
        }
        return manager;
    }

    public static Boolean isStarted() {
        return started;
    }

    public static void start(Context context, String str) {
        boolean z = false;
        if (context == null) {
            throw new IllegalArgumentException();
        }
        applicationContext = context.getApplicationContext();
        ref = new Manager(context, str);
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFERENCES_KEY, AD_UNIT_UNKNOWN);
        Editor edit = sharedPreferences.edit();
        if (!sharedPreferences.getBoolean("ran_once", false)) {
            z = true;
        }
        if (z) {
            Logger.log("Running first run tasks");
            AttributionHandler.getInstance().doSelfInstall(applicationContext);
            edit.putBoolean("ran_once", true);
            edit.commit();
        }
        getInstance().clearAndCreateFileCache();
        started = Boolean.valueOf(true);
        Logger.log("Heyzap Ad Manager started.");
    }

    public void clearAndCreateFileCache() {
        String cacheDirAbsolutePath = Utils.getCacheDirAbsolutePath(applicationContext);
        try {
            if (new File(cacheDirAbsolutePath).exists()) {
                Utils.deleteDirectory(new File(cacheDirAbsolutePath));
            }
            File file = new File(cacheDirAbsolutePath);
            file.mkdirs();
            file.deleteOnExit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Object clone() {
        return null;
    }

    public Context getContext() {
        return this.context;
    }

    public List getLocalPackages() {
        if (applicationContext == null) {
            return null;
        }
        List installedPackages = applicationContext.getPackageManager().getInstalledPackages(AD_UNIT_UNKNOWN);
        List arrayList = new ArrayList();
        Iterator it = installedPackages.iterator();
        while (it.hasNext()) {
            PackageInfo packageInfo = (PackageInfo) it.next();
            if (!(packageInfo.packageName.startsWith("android.") || packageInfo.packageName.startsWith("com.google.android") || packageInfo.packageName.startsWith("com.android") || packageInfo.packageName.startsWith("com.htc") || packageInfo.packageName.startsWith("com.samsung") || packageInfo.packageName.startsWith("com.sec") || packageInfo.packageName.startsWith("com.monotype") || packageInfo.packageName.startsWith("com.verizon") || packageInfo.packageName.startsWith("com.qualcomm") || packageInfo.packageName.startsWith("com.vzw"))) {
                arrayList.add(packageInfo.packageName);
            }
        }
        return arrayList;
    }

    public OnIncentiveResultListener getOnIncentiveListener() {
        return this.incentiveListener != null ? this.incentiveListener : DEFAULT_INCENTIVE_LISTENER;
    }

    public OnStatusListener getOnStatusListener(Integer num) {
        OnStatusListener onStatusListener = (OnStatusListener) this.statusListeners.get(num);
        return onStatusListener != null ? onStatusListener : DEFAULT_STATUS_LISTENER;
    }

    public String getPublisherId() {
        return this.publisherId;
    }

    public void installHeyzap(AdModel adModel) {
    }

    public Boolean isFlagEnabled(int i) {
        return Boolean.valueOf((this.flags & i) == i);
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public void setFlags(int i) {
        this.flags = i;
    }

    public void setOnIncentiveResultListener(OnIncentiveResultListener onIncentiveResultListener) {
        this.incentiveListener = onIncentiveResultListener;
    }

    public void setOnStatusListener(Integer num, OnStatusListener onStatusListener) {
        this.statusListeners.put(num, onStatusListener);
    }

    public void setPublisherId(String str) {
        this.publisherId = str;
        Utils.publisherId = this.publisherId;
    }
}