package com.google.ads.interactivemedia.v3.api.player;

public class VideoProgressUpdate {
    public static final VideoProgressUpdate VIDEO_TIME_NOT_READY;
    private float currentTime;
    private float duration;

    static {
        VIDEO_TIME_NOT_READY = new VideoProgressUpdate(-1, -1);
    }

    public VideoProgressUpdate() {
        this(-1, -1);
    }

    public VideoProgressUpdate(long j, long j2) {
        this.currentTime = ((float) j) / 1000.0f;
        this.duration = ((float) j2) / 1000.0f;
    }

    public boolean equals(VideoProgressUpdate videoProgressUpdate) {
        if (this == videoProgressUpdate) {
            return true;
        }
        if (videoProgressUpdate == null) {
            return false;
        }
        if (getClass() != videoProgressUpdate.getClass()) {
            return false;
        }
        videoProgressUpdate = videoProgressUpdate;
        if (Float.floatToIntBits(this.currentTime) != Float.floatToIntBits(videoProgressUpdate.currentTime)) {
            return false;
        }
        return Float.floatToIntBits(this.duration) == Float.floatToIntBits(videoProgressUpdate.duration);
    }

    public float getCurrentTime() {
        return this.currentTime;
    }

    public float getDuration() {
        return this.duration;
    }

    public String toString() {
        return new StringBuilder("VideoProgressUpdate [currentTime=").append(this.currentTime).append(", duration=").append(this.duration).append("]").toString();
    }
}