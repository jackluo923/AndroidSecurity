package com.brightcove.ima;

import android.util.Log;
import android.widget.FrameLayout.LayoutParams;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.view.BrightcoveVideoView;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent.AdErrorListener;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdEvent.AdEventListener;
import com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType;
import com.google.ads.interactivemedia.v3.api.AdsLoader;
import com.google.ads.interactivemedia.v3.api.AdsLoader.AdsLoadedListener;
import com.google.ads.interactivemedia.v3.api.AdsManager;
import com.google.ads.interactivemedia.v3.api.AdsManagerLoadedEvent;
import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.ImaSdkFactory;
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Emits(events = {"completed", "error", "pause", "play", "willInterruptContent", "willResumeContent", "registerPlugin", "adsManagerLoaded", "adsRequestForVideo", "didCompleteAd", "didFailToPlayAd", "didPauseAd", "didResumeAd", "didStartAd"})
@ListensFor(events = {"completed", "cuePoint", "didSetVideo", "play", "seekTo", "willChangeVideo"})
public class GoogleIMAComponent extends AbstractComponent implements AdErrorListener, AdEventListener, AdsLoadedListener {
    public static final String ADS_REQUESTS = "adsRequests";
    public static final String AD_EVENT = "adEvent";
    public static final String AD_TAG_URL = "adTagUrl";
    private static final String TAG;
    private AdsLoader adsLoader;
    private AdsManager adsManager;
    private BrightcoveVideoView brightcoveVideoView;
    private ArrayList cuePoints;
    private int currentAdIndex;
    private ArrayList currentAdsRequests;
    private GoogleIMAVideoAdPlayer googleIMAVideoAdPlayer;
    private boolean hasCompleted;
    private boolean hasInitialized;
    private boolean isPresentingAd;
    private boolean isSwitchingVideos;
    private Event originalEvent;
    private ImaSdkFactory sdkFactory;
    private ImaSdkSettings sdkSettings;
    private boolean useAdRules;
    private Video video;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType;

        static {
            $SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType = new int[AdEventType.values().length];
            try {
                $SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType[AdEventType.LOADED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType[AdEventType.CONTENT_PAUSE_REQUESTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType[AdEventType.CONTENT_RESUME_REQUESTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType[AdEventType.STARTED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType[AdEventType.COMPLETED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType[AdEventType.PAUSED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType[AdEventType.RESUMED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            $SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType[AdEventType.ALL_ADS_COMPLETED.ordinal()] = 8;
        }
    }

    private class OnAdsRequestForVideoListener implements EventListener {
        private OnAdsRequestForVideoListener() {
        }

        public void processEvent(Event event) {
            Log.v(TAG, "OnAdsRequestForVideoListener");
            ArrayList arrayList = (ArrayList) event.properties.get(ADS_REQUESTS);
            if (arrayList != null && !arrayList.isEmpty()) {
                GoogleIMAComponent.this.currentAdsRequests = arrayList;
                GoogleIMAComponent.this.currentAdIndex = 0;
                GoogleIMAComponent.this.isPresentingAd = false;
                GoogleIMAComponent.this.isSwitchingVideos = false;
                GoogleIMAComponent.this.adsLoader.contentComplete();
                GoogleIMAComponent.this.adsLoader.requestAds((AdsRequest) arrayList.get(GoogleIMAComponent.this.currentAdIndex));
            } else if (GoogleIMAComponent.this.originalEvent != null) {
                GoogleIMAComponent.this.originalEvent.properties.put(Event.SKIP_CUE_POINTS, Boolean.valueOf(true));
                GoogleIMAComponent.this.eventEmitter.emit(GoogleIMAComponent.this.originalEvent.getType(), GoogleIMAComponent.this.originalEvent.properties);
                GoogleIMAComponent.this.originalEvent = null;
            }
        }
    }

    private class OnCompletedListener implements EventListener {
        private OnCompletedListener() {
        }

        public void processEvent(Event event) {
            GoogleIMAComponent.this.hasCompleted = true;
        }
    }

    private class OnCuePointListener implements EventListener {
        private OnCuePointListener() {
        }

        public void processEvent(Event event) {
            if (!GoogleIMAComponent.this.useAdRules && event.getIntegerProperty(Event.START_TIME) <= event.getIntegerProperty(Event.END_TIME)) {
                GoogleIMAComponent.this.originalEvent = (Event) event.properties.get(Event.ORIGINAL_EVENT);
                Log.v(TAG, "original event: " + GoogleIMAComponent.this.originalEvent);
                event.preventDefault();
                GoogleIMAComponent.this.cuePoints = (ArrayList) event.properties.get(Event.CUE_POINTS);
                GoogleIMAComponent.this.initializeAdsRequests();
            }
        }
    }

    private class OnDidSetVideoListener implements EventListener {
        private OnDidSetVideoListener() {
        }

        public void processEvent(Event event) {
            GoogleIMAComponent.this.video = (Video) event.properties.get(Event.VIDEO);
        }
    }

    private class OnPlayListener implements EventListener {
        private OnPlayListener() {
        }

        public void processEvent(Event event) {
            Log.v(TAG, "isPresentingAd = " + GoogleIMAComponent.this.isPresentingAd + ", useAdRules = " + GoogleIMAComponent.this.useAdRules + ", hasInitialized = " + GoogleIMAComponent.this.hasInitialized + ", adManager = " + GoogleIMAComponent.this.adsManager);
            if (GoogleIMAComponent.this.isPresentingAd) {
                event.stopPropagation();
                event.preventDefault();
            } else if (!GoogleIMAComponent.this.useAdRules || GoogleIMAComponent.this.hasInitialized || GoogleIMAComponent.this.adsManager == null || event.properties.containsKey(Event.SKIP_CUE_POINTS)) {
                GoogleIMAComponent.this.hasCompleted = false;
            } else {
                GoogleIMAComponent.this.adsManager.init();
                GoogleIMAComponent.this.hasInitialized = true;
                event.stopPropagation();
                event.preventDefault();
            }
        }
    }

    private class OnSeekToListener implements EventListener {
        private OnSeekToListener() {
        }

        public void processEvent(Event event) {
            if (GoogleIMAComponent.this.isPresentingAd) {
                event.stopPropagation();
                event.preventDefault();
            }
        }
    }

    private class OnWillChangeVideoListener implements EventListener {
        private OnWillChangeVideoListener() {
        }

        public void processEvent(Event event) {
            if (GoogleIMAComponent.this.isPresentingAd && !GoogleIMAComponent.this.isSwitchingVideos) {
                GoogleIMAComponent.this.isSwitchingVideos = true;
                GoogleIMAComponent.this.googleIMAVideoAdPlayer.stopAd();
                GoogleIMAComponent.this.willResumeContent();
            }
        }
    }

    static {
        TAG = GoogleIMAComponent.class.getSimpleName();
    }

    public GoogleIMAComponent(BrightcoveVideoView brightcoveVideoView, EventEmitter eventEmitter) {
        this(brightcoveVideoView, eventEmitter, false, null);
    }

    public GoogleIMAComponent(BrightcoveVideoView brightcoveVideoView, EventEmitter eventEmitter, ImaSdkSettings imaSdkSettings) {
        this(brightcoveVideoView, eventEmitter, false, imaSdkSettings);
    }

    public GoogleIMAComponent(BrightcoveVideoView brightcoveVideoView, EventEmitter eventEmitter, boolean z) {
        this(brightcoveVideoView, eventEmitter, z, null);
    }

    public GoogleIMAComponent(BrightcoveVideoView brightcoveVideoView, EventEmitter eventEmitter, boolean z, ImaSdkSettings imaSdkSettings) {
        super(eventEmitter, GoogleIMAComponent.class);
        this.brightcoveVideoView = brightcoveVideoView;
        this.useAdRules = z;
        this.sdkFactory = ImaSdkFactory.getInstance();
        if (imaSdkSettings != null) {
            this.sdkSettings = imaSdkSettings;
        } else {
            this.sdkSettings = this.sdkFactory.createImaSdkSettings();
        }
        this.adsLoader = this.sdkFactory.createAdsLoader(brightcoveVideoView.getContext(), this.sdkSettings);
        this.adsLoader.addAdErrorListener(this);
        this.adsLoader.addAdsLoadedListener(this);
        addListener(EventType.CUE_POINT, new OnCuePointListener(null));
        addListener(EventType.DID_SET_VIDEO, new OnDidSetVideoListener(null));
        addListener(EventType.WILL_CHANGE_VIDEO, new OnWillChangeVideoListener(null));
        addListener(EventType.COMPLETED, new OnCompletedListener(null));
        addListener(EventType.PLAY, new OnPlayListener(null));
        addListener(EventType.SEEK_TO, new OnSeekToListener(null));
        this.googleIMAVideoAdPlayer = new GoogleIMAVideoAdPlayer(brightcoveVideoView);
        Map hashMap = new HashMap();
        hashMap.put(Event.PLUGIN_NAME, "ima");
        eventEmitter.emit(EventType.REGISTER_PLUGIN, hashMap);
    }

    private Map getAdEventProperties(AdEvent adEvent) {
        Map hashMap = new HashMap();
        hashMap.put(AD_EVENT, adEvent);
        hashMap.put(Event.VIDEO, this.video);
        hashMap.put(Event.CUE_POINTS, this.cuePoints);
        if (this.currentAdsRequests != null && this.currentAdIndex < this.currentAdsRequests.size()) {
            hashMap.put(AD_TAG_URL, ((AdsRequest) this.currentAdsRequests.get(this.currentAdIndex)).getAdTagUrl());
        }
        return hashMap;
    }

    private void willResumeContent() {
        Log.d(TAG, "willResumeContent: originalEvent = " + this.originalEvent);
        this.isPresentingAd = false;
        this.brightcoveVideoView.removeView(this.googleIMAVideoAdPlayer);
        this.currentAdsRequests = null;
        Map hashMap = new HashMap();
        if (!this.isSwitchingVideos) {
            if (this.originalEvent == null && !this.hasCompleted) {
                this.originalEvent = new Event(EventType.PLAY);
                this.originalEvent.properties.put(Event.SKIP_CUE_POINTS, Boolean.valueOf(true));
            }
            hashMap.put(Event.ORIGINAL_EVENT, this.originalEvent);
        }
        this.eventEmitter.emit(EventType.WILL_RESUME_CONTENT, hashMap);
        this.originalEvent = null;
    }

    public void addCallback(VideoAdPlayerCallback videoAdPlayerCallback) {
        this.googleIMAVideoAdPlayer.addCallback(videoAdPlayerCallback);
    }

    public int getAdPosition() {
        int currentPosition = this.googleIMAVideoAdPlayer.getCurrentPosition();
        Log.v(TAG, "getAdPosition: " + currentPosition);
        return currentPosition;
    }

    public int getContentPosition() {
        int i = 0;
        if (this.originalEvent != null) {
            i = this.originalEvent.getIntegerProperty(Event.PLAYHEAD_POSITION);
        }
        Log.v(TAG, "getContentPosition: " + i);
        return i;
    }

    public int getCurrentAdIndex() {
        return this.currentAdIndex;
    }

    public List getCurrentAdsRequests() {
        return this.currentAdsRequests;
    }

    public ImaSdkSettings getImaSdkSettings() {
        return this.sdkSettings;
    }

    public GoogleIMAVideoAdPlayer getVideoAdPlayer() {
        return this.googleIMAVideoAdPlayer;
    }

    public void initializeAdsRequests() {
        this.currentAdsRequests = null;
        this.currentAdIndex = -1;
        Map hashMap = new HashMap();
        hashMap.put(Event.VIDEO, this.video);
        if (this.cuePoints != null) {
            hashMap.put(Event.CUE_POINTS, this.cuePoints);
        }
        this.eventEmitter.request(GoogleIMAEventType.ADS_REQUEST_FOR_VIDEO, hashMap, new OnAdsRequestForVideoListener(null));
    }

    public void onAdError(AdErrorEvent adErrorEvent) {
        Log.e(TAG, adErrorEvent.getError().getMessage());
        Map singletonMap = Collections.singletonMap(ErrorUtil.ERROR, adErrorEvent.getError());
        this.eventEmitter.emit(GoogleIMAEventType.DID_FAIL_TO_PLAY_AD, singletonMap);
        this.eventEmitter.emit(ErrorUtil.ERROR, singletonMap);
        Log.v(TAG, "onAdError: isSwitchingVideos = " + this.isSwitchingVideos + ", isPresentingAd = " + this.isPresentingAd + ", originalEvent = " + this.originalEvent);
        if (!this.isSwitchingVideos) {
            if (this.isPresentingAd || this.originalEvent == null) {
                willResumeContent();
            } else {
                this.eventEmitter.emit(this.originalEvent.getType(), this.originalEvent.properties);
            }
        }
    }

    public void onAdEvent(AdEvent adEvent) {
        Log.v(TAG, "onAdEvent: " + adEvent);
        switch (AnonymousClass_1.$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType[adEvent.getType().ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                if (this.adsManager != null) {
                    this.adsManager.start();
                }
            case GoogleScorer.CLIENT_PLUS:
                onContentPauseRequested();
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                onContentResumeRequested();
            case GoogleScorer.CLIENT_APPSTATE:
                this.eventEmitter.emit(GoogleIMAEventType.DID_START_AD, getAdEventProperties(adEvent));
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                this.eventEmitter.emit(GoogleIMAEventType.DID_COMPLETE_AD, getAdEventProperties(adEvent));
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                this.eventEmitter.emit(GoogleIMAEventType.DID_PAUSE_AD, getAdEventProperties(adEvent));
            case GoogleScorer.CLIENT_ALL:
                this.eventEmitter.emit(GoogleIMAEventType.DID_RESUME_AD, getAdEventProperties(adEvent));
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                if (!this.useAdRules && this.adsManager != null) {
                    this.adsManager.destroy();
                    this.hasInitialized = false;
                }
            default:
                break;
        }
    }

    public void onAdsManagerLoaded(AdsManagerLoadedEvent adsManagerLoadedEvent) {
        Log.v(TAG, "onAdsLoaded");
        Map hashMap = new HashMap();
        hashMap.put(Event.VIDEO, this.video);
        this.eventEmitter.emit(GoogleIMAEventType.ADS_MANAGER_LOADED, hashMap);
        this.adsManager = adsManagerLoadedEvent.getAdsManager();
        this.adsManager.addAdErrorListener(this);
        this.adsManager.addAdEventListener(this);
        if (!this.useAdRules) {
            this.adsManager.init();
        }
    }

    public void onContentPauseRequested() {
        Log.v(TAG, "onContentPauseRequested");
        if (this.googleIMAVideoAdPlayer.getParent() == null) {
            this.brightcoveVideoView.addView(this.googleIMAVideoAdPlayer, new LayoutParams(-1, -1, 17));
        }
        if (!this.isPresentingAd) {
            this.isPresentingAd = true;
            this.eventEmitter.emit(EventType.WILL_INTERRUPT_CONTENT);
        }
    }

    public void onContentResumeRequested() {
        Log.v(TAG, "onContentResumeRequested: isPresentingAd = " + this.isPresentingAd);
        if (this.currentAdsRequests != null) {
            int i = this.currentAdIndex + 1;
            this.currentAdIndex = i;
            if (i < this.currentAdsRequests.size()) {
                this.adsLoader.requestAds((AdsRequest) this.currentAdsRequests.get(this.currentAdIndex));
                return;
            }
        }
        if (this.isPresentingAd) {
            willResumeContent();
        }
    }

    public void reloadAdsRequest() {
        if (!this.useAdRules) {
            if (this.adsManager != null) {
                this.adsManager.destroy();
                this.adsManager.init();
            }
            initializeAdsRequests();
        }
    }

    public void removeCallback(VideoAdPlayerCallback videoAdPlayerCallback) {
        this.googleIMAVideoAdPlayer.removeCallback(videoAdPlayerCallback);
    }

    public void setAdPosition(int i) {
        Log.v(TAG, "setAdPosition: " + i);
        this.googleIMAVideoAdPlayer.seekTo(i);
    }

    public void setContentPosition(int i) {
        Log.v(TAG, "setPosition: " + i + ", originalEvent = " + this.originalEvent);
        if (this.originalEvent == null) {
            this.originalEvent = new Event(EventType.PLAY);
        }
        this.originalEvent.properties.put(Event.PLAYHEAD_POSITION, Integer.valueOf(i));
        this.originalEvent.properties.put(Event.SKIP_CUE_POINTS, Boolean.valueOf(true));
    }

    public void skipCurrentAd() {
        if (this.adsManager != null) {
            this.adsManager.skip();
        }
    }

    public void skipCurrentAds() {
        if (!this.useAdRules && this.adsManager != null) {
            this.adsManager.destroy();
            this.hasInitialized = false;
        }
    }

    public void useAdRules(boolean z) {
        this.useAdRules = z;
    }
}