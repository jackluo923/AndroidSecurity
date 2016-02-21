package com.inmobi.re.controller.util;

public interface AVPlayerListener {
    void onComplete(AVPlayer aVPlayer);

    void onError(AVPlayer aVPlayer);

    void onPrepared(AVPlayer aVPlayer);
}