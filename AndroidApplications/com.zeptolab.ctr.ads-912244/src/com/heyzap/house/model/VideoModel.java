package com.heyzap.house.model;

import android.content.Context;
import android.net.Uri;
import com.brightcove.player.event.Event;
import com.brightcove.player.media.VideoFields;
import com.heyzap.house.Manager;
import com.heyzap.house.model.AdModel.HtmlAssetFetcher;
import com.heyzap.house.model.AdModel.ModelPostFetchCompleteListener;
import com.heyzap.http.RequestHandle;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.FileFetchClient;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class VideoModel extends AdModel {
    public static String FORMAT;
    private Boolean allowClick;
    private Boolean allowHide;
    private Boolean allowSkip;
    private Boolean allowStreamingFallback;
    private RequestHandle cacheRequestHandle;
    private String cachedVideoPath;
    private Context context;
    private Boolean disableGlobalTouch;
    private Boolean fileCached;
    private Boolean forceStreaming;
    private Integer interstitialBackgroundOverlayColor;
    private int interstitialHeight;
    private int interstitialWidth;
    private Integer lockoutTime;
    private Boolean manualSize;
    private Boolean postRollInterstitial;
    private Boolean sentVideoComplete;
    private Boolean showCountdown;
    private ArrayList staticUrls;
    private ArrayList streamingUrls;
    private Integer videoHeight;
    private Integer videoLength;
    private Integer videoWidth;

    public static class Cacher {
        public static void start(Context context, VideoModel videoModel, ModelPostFetchCompleteListener modelPostFetchCompleteListener) {
            Throwable th;
            AdModel adModel = null;
            Utils.createCacheDir(context);
            File file = new File(Utils.getCachePath(context, String.format("video-%s.mp4", new Object[]{videoModel.getImpressionId()})));
            try {
                Uri staticUri;
                Uri streamingUri;
                if (file.createNewFile()) {
                    staticUri = videoModel.getStaticUri();
                    streamingUri = videoModel.getStreamingUri();
                } else {
                    staticUri = videoModel.getStaticUri();
                    streamingUri = videoModel.getStreamingUri();
                }
                if ((staticUri != null || streamingUri == null) && staticUri != null) {
                    streamingUri = staticUri;
                } else {
                    th = new Throwable("No video to download.");
                    if (modelPostFetchCompleteListener != null) {
                        modelPostFetchCompleteListener.onComplete(adModel, th);
                        return;
                    } else {
                        return;
                    }
                }
                videoModel.setCacheRequestHandle(FileFetchClient.fetch(context, streamingUri.toString(), new h(file, videoModel, modelPostFetchCompleteListener)));
            } catch (IOException e) {
                th = e;
                if (modelPostFetchCompleteListener != null) {
                    modelPostFetchCompleteListener.onComplete(adModel, th);
                }
            }
        }
    }

    static {
        FORMAT = Event.VIDEO;
    }

    public VideoModel(JSONObject jSONObject) {
        JSONObject jSONObject2;
        int i = 0;
        super(jSONObject);
        this.sentVideoComplete = Boolean.valueOf(false);
        this.interstitialBackgroundOverlayColor = Integer.valueOf(0);
        this.interstitialHeight = -1;
        this.interstitialWidth = -1;
        this.staticUrls = new ArrayList();
        this.streamingUrls = new ArrayList();
        this.videoWidth = Integer.valueOf(0);
        this.videoHeight = Integer.valueOf(0);
        this.videoLength = Integer.valueOf(0);
        this.lockoutTime = Integer.valueOf(0);
        this.allowSkip = Boolean.valueOf(true);
        this.allowHide = Boolean.valueOf(false);
        this.allowClick = Boolean.valueOf(true);
        this.allowStreamingFallback = Boolean.valueOf(false);
        this.forceStreaming = Boolean.valueOf(false);
        this.postRollInterstitial = Boolean.valueOf(false);
        this.cachedVideoPath = null;
        this.cacheRequestHandle = null;
        this.fileCached = Boolean.valueOf(false);
        this.showCountdown = Boolean.valueOf(true);
        this.creativeType = FORMAT;
        if (jSONObject.has("interstitial")) {
            jSONObject2 = jSONObject.getJSONObject("interstitial");
            if (jSONObject2.has("meta")) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject("meta");
                this.interstitialHeight = jSONObject3.optInt(MMLayout.KEY_HEIGHT, this.interstitialHeight);
                this.interstitialWidth = jSONObject3.optInt(MMLayout.KEY_WIDTH, this.interstitialWidth);
            }
            setHtmlData(jSONObject2.getString("html_data"));
            this.interstitialBackgroundOverlayColor = Integer.valueOf(jSONObject2.optInt("background_color", this.interstitialBackgroundOverlayColor.intValue()));
        }
        if (jSONObject.has(Event.VIDEO)) {
            jSONObject3 = jSONObject.getJSONObject(Event.VIDEO);
            if (jSONObject3.has("meta")) {
                jSONObject2 = jSONObject3.getJSONObject("meta");
                this.videoWidth = Integer.valueOf(jSONObject2.optInt(MMLayout.KEY_WIDTH, this.videoWidth.intValue()));
                this.videoHeight = Integer.valueOf(jSONObject2.optInt(MMLayout.KEY_HEIGHT, this.videoHeight.intValue()));
                this.videoLength = Integer.valueOf(jSONObject2.optInt(VideoFields.DURATION, this.videoLength.intValue()));
            }
            this.lockoutTime = Integer.valueOf(jSONObject3.optInt("lockout_time", this.lockoutTime.intValue()));
            this.allowSkip = Boolean.valueOf(jSONObject3.optBoolean("allow_skip", this.allowSkip.booleanValue()));
            this.allowHide = Boolean.valueOf(jSONObject3.optBoolean("allow_hide", this.allowHide.booleanValue()));
            this.allowClick = Boolean.valueOf(jSONObject3.optBoolean("allow_click", this.allowClick.booleanValue()));
            this.postRollInterstitial = Boolean.valueOf(jSONObject3.optBoolean("post_roll_interstitial", this.postRollInterstitial.booleanValue()));
            this.allowStreamingFallback = Boolean.valueOf(jSONObject3.optBoolean("allow_streaming_fallback", this.allowStreamingFallback.booleanValue()));
            this.forceStreaming = Boolean.valueOf(jSONObject3.optBoolean("force_streaming", this.forceStreaming.booleanValue()));
            this.showCountdown = Boolean.valueOf(jSONObject3.optBoolean("show_countdown", this.showCountdown.booleanValue()));
            if (jSONObject3.has("static_url")) {
                JSONArray jSONArray = jSONObject3.getJSONArray("static_url");
                int i2 = 0;
                while (i2 < jSONArray.length()) {
                    this.staticUrls.add(jSONArray.getString(i2));
                    i2++;
                }
            }
            if (jSONObject3.has("streaming_url")) {
                JSONArray jSONArray2 = jSONObject3.getJSONArray("streaming_url");
                while (i < jSONArray2.length()) {
                    this.streamingUrls.add(jSONArray2.getString(i));
                    i++;
                }
            }
            if (this.staticUrls.size() == 0 && this.streamingUrls.size() == 0) {
                throw new Exception("No video URLs.");
            }
        }
    }

    public Boolean allowClick() {
        return this.allowClick;
    }

    public Boolean allowHide() {
        return this.allowHide;
    }

    public Boolean allowSkip() {
        return this.allowSkip;
    }

    public void cancelDownload() {
        if (this.cacheRequestHandle != null && !this.cacheRequestHandle.isFinished() && !this.cacheRequestHandle.isCancelled()) {
            this.cacheRequestHandle.cancel(true);
        }
    }

    public void cleanup(Context context) {
        Logger.log("(CLEANUP) " + getImpressionId());
        cancelDownload();
        if (this.cachedVideoPath != null) {
            File file = new File(this.cachedVideoPath);
            if (file.exists() && file.isFile() && !file.delete()) {
                throw new Exception("Failed to delete file!");
            }
        }
    }

    public void doPostFetchActions(Context context, ModelPostFetchCompleteListener modelPostFetchCompleteListener) {
        AdModel adModel = null;
        try {
            HtmlAssetFetcher.fetch(this, new g(this));
            if (!shouldForceStreaming().booleanValue()) {
                Cacher.start(context, this, modelPostFetchCompleteListener);
            } else if (modelPostFetchCompleteListener != null) {
                modelPostFetchCompleteListener.onComplete(this, null);
            }
        } catch (Exception e) {
            th = e;
            if (modelPostFetchCompleteListener != null) {
                Throwable th2;
                modelPostFetchCompleteListener.onComplete(adModel, th2);
            }
        }
    }

    public String getCachedPath() {
        return this.cachedVideoPath;
    }

    public int getInterstitialBackgroundOverlayColor() {
        return this.interstitialBackgroundOverlayColor.intValue();
    }

    public int getInterstitialHeight() {
        return this.interstitialHeight;
    }

    public int getInterstitialWidth() {
        return this.interstitialWidth;
    }

    public int getSkipLockoutTime() {
        return this.lockoutTime.intValue();
    }

    public Uri getStaticUri() {
        return this.staticUrls.size() > 0 ? Uri.parse((String) this.staticUrls.get(0)) : null;
    }

    public Uri getStreamingUri() {
        return this.streamingUrls.size() > 0 ? Uri.parse((String) this.streamingUrls.get(0)) : null;
    }

    public Boolean isFileCached() {
        return this.fileCached;
    }

    public Boolean onComplete(Context context, int i, int i2, Boolean bool) {
        if (this.sentVideoComplete.booleanValue()) {
            Logger.log("Already sent video complete successfully");
            return Boolean.valueOf(false);
        } else {
            RequestParams eventRequestParams = super.getEventRequestParams();
            eventRequestParams.put("video_duration_ms", Integer.valueOf(i2));
            if (!bool.booleanValue()) {
                i2 = i;
            }
            eventRequestParams.put("watched_duration_ms", Integer.valueOf(i2));
            eventRequestParams.put("video_finished", bool.booleanValue() ? "true" : "false");
            eventRequestParams.put("lockout_time_seconds", Integer.valueOf((int) (((double) this.lockoutTime.intValue()) / 1000.0d)));
            if (getAdUnit() == 2) {
                eventRequestParams.put("incentivized", "true");
            }
            APIClient.post(context.getApplicationContext(), Manager.AD_SERVER + "/event/video_impression_complete", eventRequestParams, new f(this));
            return Boolean.valueOf(true);
        }
    }

    public void onInterstitialFallback() {
        cancelDownload();
        Map hashMap = new HashMap();
        hashMap.put("interstitial_fallback", "1");
        super.setAdditionalEventParams(hashMap);
    }

    public void setCachePath(String str) {
        this.cachedVideoPath = str;
    }

    public void setCacheRequestHandle(RequestHandle requestHandle) {
        this.cacheRequestHandle = requestHandle;
    }

    public void setFileCached(Boolean bool) {
        this.fileCached = bool;
    }

    public Boolean shouldAllowFallbackToStreaming() {
        return this.allowStreamingFallback;
    }

    public Boolean shouldForceStreaming() {
        return this.forceStreaming;
    }

    public Boolean showCountdown() {
        return this.showCountdown;
    }

    public Boolean showPostRollInterstitial() {
        return this.postRollInterstitial;
    }
}