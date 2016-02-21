package com.google.ads.interactivemedia.v3.api;

public interface AdEvent {

    public static interface AdEventListener {
        void onAdEvent(AdEvent adEvent);
    }

    public enum AdEventType {
        ALL_ADS_COMPLETED,
        CLICKED,
        COMPLETED,
        CONTENT_PAUSE_REQUESTED,
        CONTENT_RESUME_REQUESTED,
        FIRST_QUARTILE,
        MIDPOINT,
        PAUSED,
        RESUMED,
        SKIPPED,
        STARTED,
        THIRD_QUARTILE,
        LOADED;

        static {
            ALL_ADS_COMPLETED = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("ALL_ADS_COMPLETED", 0);
            CLICKED = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("CLICKED", 1);
            COMPLETED = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("COMPLETED", 2);
            CONTENT_PAUSE_REQUESTED = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("CONTENT_PAUSE_REQUESTED", 3);
            CONTENT_RESUME_REQUESTED = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("CONTENT_RESUME_REQUESTED", 4);
            FIRST_QUARTILE = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("FIRST_QUARTILE", 5);
            MIDPOINT = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("MIDPOINT", 6);
            PAUSED = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("PAUSED", 7);
            RESUMED = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("RESUMED", 8);
            SKIPPED = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("SKIPPED", 9);
            STARTED = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("STARTED", 10);
            THIRD_QUARTILE = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("THIRD_QUARTILE", 11);
            LOADED = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType("LOADED", 12);
            a = new com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType[]{ALL_ADS_COMPLETED, CLICKED, COMPLETED, CONTENT_PAUSE_REQUESTED, CONTENT_RESUME_REQUESTED, FIRST_QUARTILE, MIDPOINT, PAUSED, RESUMED, SKIPPED, STARTED, THIRD_QUARTILE, LOADED};
        }
    }

    Ad getAd();

    AdEventType getType();
}