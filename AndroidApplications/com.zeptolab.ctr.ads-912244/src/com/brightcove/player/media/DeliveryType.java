package com.brightcove.player.media;

public enum DeliveryType {
    UNKNOWN("UNKNOWN"),
    MP4("video/mp4"),
    HLS("application/vnd.apple.mpegurl"),
    FLV("video/x-flv"),
    WVM("video/wvm");
    private final String type;

    private DeliveryType(String str) {
        this.type = str;
    }

    public String toString() {
        return this.type;
    }
}