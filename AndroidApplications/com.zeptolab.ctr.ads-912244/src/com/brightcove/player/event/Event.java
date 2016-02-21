package com.brightcove.player.event;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;

public class Event {
    public static final String CUE_POINT = "cue_point";
    public static final String CUE_POINTS = "cue_points";
    public static final String CURRENT_VIDEO = "currentVideo";
    public static final String DEBUG = "debug";
    public static final String EMITTER = "emitter";
    public static final String END_TIME = "endTime";
    public static final String ERROR = "error";
    public static final String ERRORS = "errors";
    public static final String ERROR_CODE = "errorCode";
    public static final String ERROR_EXTRA = "errorExtra";
    public static final String ERROR_MESSAGE = "errorMessage";
    public static final String FROM_SEEK_POSITION = "fromSeekPosition";
    public static final String INDEX = "index";
    public static final String LEFT_VOLUME = "leftVolume";
    public static final String LIST = "list";
    public static final String NEXT_VIDEO = "nextVideo";
    public static final String ORIGINAL_EVENT = "original";
    public static final String PERCENT_COMPLETE = "percentComplete";
    public static final String PLAYHEAD_POSITION = "playheadPosition";
    public static final String PLAYLIST = "playlist";
    public static final String PLUGIN_NAME = "pluginName";
    public static final String REQUEST_TOKEN = "requestToken";
    public static final String RIGHT_VOLUME = "rightVolume";
    public static final String SEEK_POSITION = "seekPosition";
    public static final String SKIP_CUE_POINTS = "skipCuePoints";
    public static final String SOURCE = "source";
    public static final String START_TIME = "startTime";
    private static final String TAG;
    public static final String UUID = "uuid";
    public static final String VIDEO = "video";
    public static final String VIDEO_DURATION = "duration";
    public static final String VIDEO_HEIGHT = "height";
    public static final String VIDEO_STILL = "video_still";
    public static final String VIDEO_WIDTH = "width";
    private boolean isPrevented;
    private boolean isStopped;
    public final Map properties;
    private final String type;

    static {
        TAG = Event.class.getName();
    }

    public Event(String str) {
        this.type = str;
        this.isPrevented = false;
        this.isStopped = false;
        this.properties = new HashMap();
    }

    public int getIntegerProperty(String str) {
        if (this.properties.containsKey(str)) {
            try {
                return Integer.parseInt(this.properties.get(str).toString());
            } catch (NumberFormatException e) {
                Log.e(TAG, "Error converting value of <" + this.properties.get(str) + "> for key '" + str + "'");
                return -1;
            }
        }
        Log.w(TAG, "Could not find property with name '" + str + "'");
        return -1;
    }

    public String getType() {
        return this.type;
    }

    public boolean isPrevented() {
        return this.isPrevented;
    }

    public boolean isStopped() {
        return this.isStopped;
    }

    public void preventDefault() {
        this.isPrevented = true;
    }

    public void stopPropagation() {
        this.isStopped = true;
    }

    public String toString() {
        return "Event{" + this.type + this.properties + "}";
    }
}