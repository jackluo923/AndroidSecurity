package com.brightcove.player.util;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import java.util.HashMap;
import java.util.Map;

public class EventUtil {
    public static void emit(EventEmitter eventEmitter, String str, Video video) {
        if (video == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.VIDEO_REQUIRED));
        }
        Map hashMap = new HashMap();
        hashMap.put(Event.VIDEO, video);
        eventEmitter.emit(str, hashMap);
    }

    public static void emit(EventEmitter eventEmitter, String str, Video video, Source source) {
        if (video == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.VIDEOS_REQUIRED));
        } else if (source == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.SOURCE_REQUIRED));
        } else {
            Map hashMap = new HashMap();
            hashMap.put(Event.VIDEO, video);
            hashMap.put(Event.SOURCE, source);
            eventEmitter.emit(str, hashMap);
        }
    }
}