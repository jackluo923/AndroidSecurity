package com.brightcove.player.controller;

import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;

public interface SourceSelector {
    Source selectSource(Video video);
}