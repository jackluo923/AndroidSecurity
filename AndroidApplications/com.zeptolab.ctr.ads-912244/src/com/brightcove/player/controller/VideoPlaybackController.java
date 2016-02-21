package com.brightcove.player.controller;

import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.CuePoint.PositionType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.model.Video.Fields;
import com.brightcove.player.util.EventUtil;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Emits(events = {"completed", "cuePoint", "didSelectSource", "didSetVideo", "play", "selectSource", "setSource", "setVideoStill"})
@ListensFor(events = {"completed", "cuePoint", "didSeekTo", "didSetSource", "play", "progress", "readyToPlay", "removeCuePoint", "setCuePoint", "setCuePoints", "setVideo", "willChangeVideo"})
public class VideoPlaybackController extends AbstractComponent implements Component {
    public static final String TAG;
    private List cuePoints;
    private int currentTime;
    private boolean hasSeenPlayerReadyEvent;
    OnDidSeekToListener onDidSeekToListener;
    OnDidSetSourceListener onDidSetSourceListener;
    OnPlayListener onPlayListener;
    OnPlayerReadyListener onPlayerReadyListener;
    OnProgressUpdateListener onProgressUpdateListener;
    OnRemoveCuePointListener onRemoveCuePointListener;
    OnSetCuePointListener onSetCuePointListener;
    OnSetCuePointsListener onSetCuePointsListener;
    OnSetVideoListener onSetVideoListener;
    OnSourceSelectedListener onSourceSelectedListener;
    OnVideoCompletedListener onVideoCompletedListener;
    OnWillChangeVideoListener onWillChangeVideoListener;
    private List pendingSourcesToLoad;
    private Map sourceToVideoMapping;

    protected class OnDidSeekToListener implements EventListener {
        protected OnDidSeekToListener() {
        }

        @Default
        public void processEvent(Event event) {
            int access$000 = VideoPlaybackController.this.currentTime;
            VideoPlaybackController.this.currentTime = event.getIntegerProperty(Event.SEEK_POSITION);
            if (access$000 < VideoPlaybackController.this.currentTime) {
                VideoPlaybackController.this.emitCuePoints(access$000, VideoPlaybackController.this.currentTime);
            } else {
                VideoPlaybackController.this.emitCuePoints(VideoPlaybackController.this.currentTime, access$000);
            }
        }
    }

    protected class OnDidSetSourceListener implements EventListener {
        protected OnDidSetSourceListener() {
        }

        @Default
        public void processEvent(Event event) {
            Video video = (Video) event.properties.get(Event.VIDEO);
            Source source = (Source) event.properties.get(Event.SOURCE);
            if (video != null && source != null) {
                EventUtil.emit(VideoPlaybackController.this.eventEmitter, EventType.DID_SET_VIDEO, video);
            }
        }
    }

    protected class OnPlayListener implements EventListener {

        class AnonymousClass_1 implements EventListener {
            final /* synthetic */ UUID val$cuePointUniqueKey;
            final /* synthetic */ Event val$playEvent;

            AnonymousClass_1(UUID uuid, Event event) {
                this.val$cuePointUniqueKey = uuid;
                this.val$playEvent = event;
            }

            @Default
            public void processEvent(Event event) {
                if (this.val$cuePointUniqueKey.equals(event.properties.get(Event.UUID))) {
                    OnPlayListener.this.this$0.eventEmitter.emit(this.val$playEvent.getType(), this.val$playEvent.properties);
                }
            }
        }

        protected OnPlayListener() {
        }

        @Default
        public void processEvent(Event event) {
            Log.v(TAG, "OnPlayListener: playEvent = " + event + ", currentTime = " + VideoPlaybackController.this.currentTime);
            if (VideoPlaybackController.this.currentTime == 0 && !event.properties.containsKey(Event.SKIP_CUE_POINTS)) {
                Log.i(TAG, "cuePoints = " + VideoPlaybackController.this.cuePoints);
                ArrayList arrayList = new ArrayList();
                Iterator it = VideoPlaybackController.this.cuePoints.iterator();
                while (it.hasNext()) {
                    CuePoint cuePoint = (CuePoint) it.next();
                    if (cuePoint.getPositionType().equals(PositionType.BEFORE) || (cuePoint.getPositionType().equals(PositionType.POINT_IN_TIME) && cuePoint.getPosition() == 0)) {
                        arrayList.add(cuePoint);
                    }
                }
                if (!arrayList.isEmpty()) {
                    Log.i(TAG, "batch = " + arrayList);
                    event.preventDefault();
                    event.stopPropagation();
                    event.properties.put(Event.SKIP_CUE_POINTS, Boolean.valueOf(true));
                    UUID randomUUID = UUID.randomUUID();
                    VideoPlaybackController.this.eventEmitter.once(EventType.CUE_POINT, new AnonymousClass_1(randomUUID, event));
                    Map hashMap = new HashMap();
                    hashMap.put(Event.CUE_POINTS, arrayList);
                    hashMap.put(Event.END_TIME, Integer.valueOf(0));
                    hashMap.put(Event.START_TIME, Integer.valueOf(0));
                    hashMap.put(Event.ORIGINAL_EVENT, event);
                    hashMap.put(Event.UUID, randomUUID);
                    VideoPlaybackController.this.eventEmitter.emit(EventType.CUE_POINT, hashMap);
                }
            }
        }
    }

    protected class OnPlayerReadyListener implements EventListener {
        protected OnPlayerReadyListener() {
        }

        @Default
        public void processEvent(Event event) {
            if (!VideoPlaybackController.this.hasSeenPlayerReadyEvent) {
                VideoPlaybackController.this.hasSeenPlayerReadyEvent = true;
                if (VideoPlaybackController.this.pendingSourcesToLoad.size() > 0) {
                    while (VideoPlaybackController.this.pendingSourcesToLoad.size() > 0) {
                        Source source = (Source) VideoPlaybackController.this.pendingSourcesToLoad.remove(0);
                        EventUtil.emit(VideoPlaybackController.this.eventEmitter, EventType.SET_SOURCE, (Video) VideoPlaybackController.this.sourceToVideoMapping.remove(source), source);
                    }
                }
            }
        }
    }

    private class OnProgressUpdateListener implements EventListener {
        private OnProgressUpdateListener() {
        }

        @Default
        public void processEvent(Event event) {
            int integerProperty = event.getIntegerProperty(Event.PLAYHEAD_POSITION);
            if (VideoPlaybackController.this.currentTime != -1 && VideoPlaybackController.this.currentTime < integerProperty) {
                int access$000 = VideoPlaybackController.this.currentTime;
                VideoPlaybackController.this.currentTime = integerProperty;
                VideoPlaybackController.this.emitCuePoints(access$000, VideoPlaybackController.this.currentTime);
            }
        }
    }

    protected class OnRemoveCuePointListener implements EventListener {
        protected OnRemoveCuePointListener() {
        }

        @Default
        public void processEvent(Event event) {
            Object obj = event.properties.get(Event.CUE_POINT);
            if (obj == null || !obj instanceof CuePoint) {
                Log.e(TAG, "could not remove CuePoint");
            } else {
                VideoPlaybackController.this.cuePoints.remove((CuePoint) obj);
            }
        }
    }

    protected class OnSetCuePointListener implements EventListener {
        protected OnSetCuePointListener() {
        }

        @Default
        public void processEvent(Event event) {
            Object obj = event.properties.get(Event.CUE_POINT);
            if (obj == null || !obj instanceof CuePoint) {
                Log.e(TAG, "could not find CuePoint in given Event");
            } else {
                VideoPlaybackController.this.cuePoints.add((CuePoint) obj);
            }
        }
    }

    protected class OnSetCuePointsListener implements EventListener {
        protected OnSetCuePointsListener() {
        }

        @Default
        public void processEvent(Event event) {
            Object obj = event.properties.get(Event.CUE_POINTS);
            if (obj == null || !obj instanceof List) {
                Log.e(TAG, "could not find List of CuePoints in given Event");
            } else {
                List list = (List) obj;
                VideoPlaybackController.this.cuePoints.clear();
                VideoPlaybackController.this.cuePoints.addAll(list);
            }
        }
    }

    protected class OnSetVideoListener implements EventListener {
        protected OnSetVideoListener() {
        }

        @Default
        public void processEvent(Event event) {
            Video video = (Video) event.properties.get(Event.VIDEO);
            Log.v(TAG, "OnSetVideoListener: " + video);
            Object obj = video.getProperties().get(Fields.STILL_IMAGE_URI);
            if (obj != null && obj instanceof URI) {
                URI uri = (URI) obj;
                Map hashMap = new HashMap();
                hashMap.put(Event.VIDEO_STILL, uri);
                VideoPlaybackController.this.eventEmitter.emit(EventType.SET_VIDEO_STILL, hashMap);
            }
            Collection cuePoints = video.getCuePoints();
            if (cuePoints != null) {
                VideoPlaybackController.this.cuePoints.addAll(cuePoints);
            }
            Map hashMap2 = new HashMap();
            hashMap2.put(Event.VIDEO, video);
            EventListener onSourceSelectedListener = new OnSourceSelectedListener();
            onSourceSelectedListener.currentVideo = video;
            VideoPlaybackController.this.eventEmitter.request(EventType.SELECT_SOURCE, hashMap2, onSourceSelectedListener);
        }
    }

    protected class OnSourceSelectedListener implements EventListener {
        public Video currentVideo;

        protected OnSourceSelectedListener() {
        }

        @Default
        public void processEvent(Event event) {
            Log.v(TAG, "OnSourceSelectedListener");
            Source source = (Source) event.properties.get(Event.SOURCE);
            VideoPlaybackController.this.sourceToVideoMapping.put(source, this.currentVideo);
            EventUtil.emit(VideoPlaybackController.this.eventEmitter, EventType.DID_SELECT_SOURCE, this.currentVideo, source);
            if (VideoPlaybackController.this.hasSeenPlayerReadyEvent) {
                EventUtil.emit(VideoPlaybackController.this.eventEmitter, EventType.SET_SOURCE, this.currentVideo, source);
            } else {
                VideoPlaybackController.this.pendingSourcesToLoad.add(source);
            }
        }
    }

    protected class OnVideoCompletedListener implements EventListener {
        protected OnVideoCompletedListener() {
        }

        @Default
        public void processEvent(Event event) {
            Log.v(TAG, "OnVideoCompletedListener: " + event);
            VideoPlaybackController.this.currentTime = 0;
            if (!event.properties.containsKey(Event.SKIP_CUE_POINTS)) {
                ArrayList arrayList = new ArrayList();
                Iterator it = VideoPlaybackController.this.cuePoints.iterator();
                while (it.hasNext()) {
                    CuePoint cuePoint = (CuePoint) it.next();
                    if (cuePoint.getPositionType().equals(PositionType.AFTER)) {
                        arrayList.add(cuePoint);
                    }
                }
                if (!arrayList.isEmpty()) {
                    event.preventDefault();
                    event.stopPropagation();
                    event.properties.put(Event.SKIP_CUE_POINTS, Boolean.valueOf(true));
                    Map hashMap = new HashMap();
                    hashMap.put(Event.CUE_POINTS, arrayList);
                    hashMap.put(Event.END_TIME, Integer.valueOf(0));
                    hashMap.put(Event.START_TIME, Integer.valueOf(0));
                    hashMap.put(Event.ORIGINAL_EVENT, event);
                    VideoPlaybackController.this.eventEmitter.emit(EventType.CUE_POINT, hashMap);
                }
            }
        }
    }

    protected class OnWillChangeVideoListener implements EventListener {
        protected OnWillChangeVideoListener() {
        }

        @Default
        public void processEvent(Event event) {
            VideoPlaybackController.this.cuePoints.clear();
            VideoPlaybackController.this.currentTime = 0;
        }
    }

    static {
        TAG = VideoPlaybackController.class.getSimpleName();
    }

    public VideoPlaybackController(EventEmitter eventEmitter) {
        super(eventEmitter, VideoPlaybackController.class);
        initialize();
    }

    private void emitCuePoints(int i, int i2) {
        Log.v(TAG, "emitCuePoints: beginning = " + i + ", end = " + i2);
        List arrayList = new ArrayList();
        Iterator it = this.cuePoints.iterator();
        while (it.hasNext()) {
            CuePoint cuePoint = (CuePoint) it.next();
            if (cuePoint.getPositionType().equals(PositionType.POINT_IN_TIME)) {
                int position = cuePoint.getPosition();
                if (i < position && position <= i2) {
                    arrayList.add(cuePoint);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            Log.v(TAG, "emitCuePoints: batch = " + arrayList);
            Collections.sort(arrayList);
            Map hashMap = new HashMap();
            hashMap.put(Event.START_TIME, Integer.valueOf(i));
            hashMap.put(Event.END_TIME, Integer.valueOf(i2));
            hashMap.put(Event.CUE_POINTS, arrayList);
            this.eventEmitter.emit(EventType.CUE_POINT, hashMap);
        }
    }

    public boolean hasPendingSourcesToLoad() {
        return this.pendingSourcesToLoad.size() > 0;
    }

    public void initialize() {
        Log.i(TAG, "Initializing VideoPlaybackController");
        this.hasSeenPlayerReadyEvent = false;
        this.pendingSourcesToLoad = new ArrayList();
        this.sourceToVideoMapping = new HashMap();
        this.cuePoints = new ArrayList();
        initializeListeners();
    }

    protected void initializeListeners() {
        this.onSetVideoListener = new OnSetVideoListener();
        this.onPlayerReadyListener = new OnPlayerReadyListener();
        this.onDidSetSourceListener = new OnDidSetSourceListener();
        this.onPlayListener = new OnPlayListener();
        this.onProgressUpdateListener = new OnProgressUpdateListener(null);
        this.onVideoCompletedListener = new OnVideoCompletedListener();
        this.onRemoveCuePointListener = new OnRemoveCuePointListener();
        this.onSetCuePointListener = new OnSetCuePointListener();
        this.onSetCuePointsListener = new OnSetCuePointsListener();
        this.onDidSeekToListener = new OnDidSeekToListener();
        this.onWillChangeVideoListener = new OnWillChangeVideoListener();
        addListener(EventType.READY_TO_PLAY, this.onPlayerReadyListener);
        addListener(EventType.SET_VIDEO, this.onSetVideoListener);
        addListener(EventType.DID_SET_SOURCE, this.onDidSetSourceListener);
        addListener(EventType.PLAY, this.onPlayListener);
        addListener(EventType.PROGRESS, this.onProgressUpdateListener);
        addListener(EventType.COMPLETED, this.onVideoCompletedListener);
        addListener(EventType.REMOVE_CUE_POINT, this.onRemoveCuePointListener);
        addListener(EventType.SET_CUE_POINT, this.onSetCuePointListener);
        addListener(EventType.SET_CUE_POINTS, this.onSetCuePointsListener);
        addListener(EventType.DID_SEEK_TO, this.onDidSeekToListener);
        addListener(EventType.WILL_CHANGE_VIDEO, this.onWillChangeVideoListener);
    }
}