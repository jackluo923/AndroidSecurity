package com.brightcove.player.media;

import com.brightcove.player.model.Video;

public interface VideoListener extends ErrorListener {
    void onVideo(Video video);
}