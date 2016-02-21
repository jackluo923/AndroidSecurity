package com.google.ads.interactivemedia.v3.api.player;

public interface VideoAdPlayer {

    public static interface VideoAdPlayerCallback {
        void onEnded();

        void onError();

        void onPause();

        void onPlay();

        void onResume();

        void onVolumeChanged(int i);
    }

    void addCallback(VideoAdPlayerCallback videoAdPlayerCallback);

    VideoProgressUpdate getProgress();

    void loadAd(String str);

    void pauseAd();

    void playAd();

    void removeCallback(VideoAdPlayerCallback videoAdPlayerCallback);

    void resumeAd();

    void stopAd();
}