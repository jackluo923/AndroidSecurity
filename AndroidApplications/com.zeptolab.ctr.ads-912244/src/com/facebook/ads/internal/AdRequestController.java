package com.facebook.ads.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Handler;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.AdRequest.Callback;

public class AdRequestController {
    private static final String ANDROID_PERMISSION_ACCESS_NETWORK_STATE = "android.permission.ACCESS_NETWORK_STATE";
    private static final int DEFAULT_REFRESH_THRESHOLD_MILLIS = 20000;
    private static final int MIN_REFRESH_INTERVAL_MILLIS = 30000;
    private final AdSize adSize;
    private final AdType adType;
    private final Callback adViewRequestCallback;
    private final Context context;
    private int currentVisibility;
    private final Handler handler;
    private boolean initialLoadFinished;
    private volatile long lastLoadTimeMillis;
    private AsyncTask lastRequest;
    private final String placementId;
    private int refreshInterval;
    private final Runnable refreshRunnable;
    private volatile boolean refreshScheduled;
    private int refreshThreshold;
    private final ScreenStateReceiver screenStateReceiver;
    private final boolean shouldRefresh;

    private class ScreenStateReceiver extends BroadcastReceiver {
        private ScreenStateReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                AdRequestController.this.cancelRefresh(intent.getAction());
            } else if ("android.intent.action.SCREEN_ON".equals(action) && AdRequestController.this.currentVisibility == 0) {
                AdRequestController.this.scheduleRefresh(intent.getAction());
            }
        }
    }

    public AdRequestController(Context context, String str, AdSize adSize, boolean z, AdType adType, Callback callback) {
        this.refreshInterval = 30000;
        this.refreshThreshold = 20000;
        this.initialLoadFinished = false;
        this.refreshScheduled = false;
        this.currentVisibility = 8;
        if (callback == null) {
            throw new IllegalArgumentException("adViewRequestCallback");
        }
        this.context = context;
        this.placementId = str;
        this.adSize = adSize;
        this.shouldRefresh = z;
        this.adType = adType;
        this.adViewRequestCallback = callback;
        this.screenStateReceiver = new ScreenStateReceiver(null);
        this.handler = new Handler();
        this.refreshRunnable = new Runnable() {
            public void run() {
                AdRequestController.this.refreshScheduled = false;
                AdRequestController.this.loadAd();
            }
        };
        registerScreenStateReceiver();
    }

    private synchronized void cancelRefresh(String str) {
        if (this.refreshScheduled) {
            this.handler.removeCallbacks(this.refreshRunnable);
            this.refreshScheduled = false;
        }
    }

    private boolean isNetworkConnected() {
        if (this.context.checkCallingOrSelfPermission(ANDROID_PERMISSION_ACCESS_NETWORK_STATE) != 0) {
            return true;
        }
        boolean z;
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        z = (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) ? 0 : true;
        return z;
    }

    private void registerScreenStateReceiver() {
        if (this.shouldRefresh) {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            this.context.registerReceiver(this.screenStateReceiver, intentFilter);
        }
    }

    private void unregisterScreenStateReceiver() {
        if (this.shouldRefresh) {
            this.context.unregisterReceiver(this.screenStateReceiver);
        }
    }

    public void destroy() {
        unregisterScreenStateReceiver();
        cancelRefresh("destroy");
    }

    public synchronized void loadAd() {
        long j = this.lastLoadTimeMillis + ((long) this.refreshThreshold);
        long currentTimeMillis = System.currentTimeMillis();
        if (!this.shouldRefresh || currentTimeMillis >= j) {
            if (this.refreshScheduled) {
                cancelRefresh(null);
            }
            if (!(this.lastRequest == null || this.lastRequest.getStatus() == Status.FINISHED)) {
                this.lastRequest.cancel(true);
            }
            if (isNetworkConnected()) {
                this.lastLoadTimeMillis = currentTimeMillis;
                this.lastRequest = new AdRequest(this.context, this.placementId, this.adSize, this.adType, AdSettings.isTestMode(this.context), new Callback() {
                    public void onCompleted(AdResponse adResponse) {
                        AdRequestController.this.refreshInterval = adResponse.getRefreshIntervalMillis();
                        AdRequestController.this.refreshThreshold = adResponse.getRefreshThresholdMillis();
                        AdRequestController.this.adViewRequestCallback.onCompleted(adResponse);
                        AdRequestController.this.initialLoadFinished = true;
                    }

                    public void onError(AdError adError) {
                        AdRequestController.this.adViewRequestCallback.onError(adError);
                        AdRequestController.this.initialLoadFinished = true;
                        AdRequestController.this.scheduleRefresh("onError");
                    }
                }).executeAsync();
            } else {
                this.refreshInterval = 30000;
                this.refreshThreshold = 20000;
                this.adViewRequestCallback.onError(new AdError(-1, "network unavailable"));
                scheduleRefresh("no network connection");
            }
        } else {
            this.adViewRequestCallback.onError(AdError.LOAD_TOO_FREQUENTLY);
        }
    }

    public void onWindowVisibilityChanged(int i) {
        this.currentVisibility = i;
        if (i != 0) {
            cancelRefresh("onWindowVisibilityChanged");
        } else if (this.initialLoadFinished) {
            scheduleRefresh("onWindowVisibilityChanged");
        }
    }

    public synchronized void scheduleRefresh(String str) {
        if (this.shouldRefresh) {
            if (this.refreshInterval > 0 && !this.refreshScheduled) {
                this.handler.postDelayed(this.refreshRunnable, (long) this.refreshInterval);
                this.refreshScheduled = true;
            }
        }
    }
}