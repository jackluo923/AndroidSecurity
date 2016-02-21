package com.brightcove.player.display;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.analytics.Analytics;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.model.Video.Fields;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.EventUtil;
import com.brightcove.player.view.BrightcoveSurfaceView;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@Emits(events = {"bufferedUpdate", "completed", "didPause", "didPlay", "didSeekTo", "didSetSource", "didStop", "error", "pause", "play", "progress", "sourceNotPlayable", "stop", "videoDurationChanged", "videoSizeKnown", "willChangeVideo"})
@ListensFor(events = {"completed", "didSetSource", "pause", "play", "prebufferNextVideo", "seekTo", "setSource", "stop", "willChangeVideo", "willInterruptContent", "willResumeContent", "readyToPlay", "setVolume"})
public class VideoDisplayComponent extends AbstractComponent {
    private static final ScheduledExecutorService EXECUTOR;
    protected static final int ON_PLAY_SEEK_THRESHOLD = 1000;
    private static final int PROGRESS_INTERVAL = 500;
    private static final String TAG;
    private Analytics analytics;
    protected BrightcoveSurfaceView brightcoveSurfaceView;
    protected Context context;
    protected Source currentSource;
    protected Video currentVideo;
    protected int duration;
    private int fromSeekPosition;
    private boolean hasErrored;
    private boolean hasPlaybackStarted;
    private boolean hasPrepared;
    protected boolean hasSurface;
    private MediaPlayer mediaPlayer;
    protected Source nextSource;
    protected Video nextVideo;
    OnBufferingUpdateListener onBufferingUpdateListener;
    OnCompletedListener onCompletedListener;
    OnCompletionListener onCompletionListener;
    OnErrorListener onErrorListener;
    OnInfoListener onInfoListener;
    OnPauseListener onPauseListener;
    OnPlayListener onPlayListener;
    OnPrebufferNextVideoListener onPrebufferNextVideoListener;
    OnPreparedListener onPreparedListener;
    OnSeekCompleteListener onSeekCompleteListener;
    OnSeekListener onSeekListener;
    OnSetSourceListener onSetSourceListener;
    OnSetVolumeListener onSetVolumeListener;
    OnStopListener onStopListener;
    OnVideoSizeChangedListener onVideoSizeChangedListener;
    OnWillInterruptContentListener onWillInterruptContentListener;
    OnWillResumeContentListener onWillResumeContentListener;
    protected int playheadPosition;
    protected int seekPosition;
    protected int seekPositionWhenPrepared;
    protected ScheduledFuture updater;

    class AnonymousClass_2 implements EventListener {
        final /* synthetic */ Source val$source;
        final /* synthetic */ Video val$video;

        AnonymousClass_2(Video video, Source source) {
            this.val$video = video;
            this.val$source = source;
        }

        public void processEvent(Event event) {
            VideoDisplayComponent.this.createPlayer(this.val$video, this.val$source);
        }
    }

    private class OnCompletedListener implements EventListener {

        class AnonymousClass_1 implements EventListener {
            final /* synthetic */ UUID val$uniqueKey;

            AnonymousClass_1(UUID uuid) {
                this.val$uniqueKey = uuid;
            }

            @Default
            public void processEvent(Event event) {
                Log.v(TAG, "OnCompletedListener: WILL_CHANGE_VIDEO");
                if (event.properties.get(Event.UUID).equals(this.val$uniqueKey)) {
                    OnCompletedListener.this.this$0.destroyPlayer();
                    Log.v(TAG, "OnCompletedListener: currentSource = " + OnCompletedListener.this.this$0.currentSource + ", nextSource = " + OnCompletedListener.this.this$0.nextSource);
                    OnCompletedListener.this.this$0.currentVideo = OnCompletedListener.this.this$0.nextVideo;
                    OnCompletedListener.this.this$0.nextVideo = null;
                    OnCompletedListener.this.this$0.currentSource = OnCompletedListener.this.this$0.nextSource;
                    OnCompletedListener.this.this$0.nextSource = null;
                    OnCompletedListener.this.this$0.eventEmitter.once(EventType.DID_SET_SOURCE, new EventListener() {
                        @Default
                        public void processEvent(Event event) {
                            AnonymousClass_1.this.this$1.this$0.eventEmitter.emit(EventType.PLAY);
                        }
                    });
                    OnCompletedListener.this.this$0.openVideo(OnCompletedListener.this.this$0.currentVideo, OnCompletedListener.this.this$0.currentSource);
                }
            }
        }

        private OnCompletedListener() {
        }

        @Default
        public void processEvent(Event event) {
            if (VideoDisplayComponent.this.nextSource != null) {
                UUID randomUUID = UUID.randomUUID();
                VideoDisplayComponent.this.eventEmitter.once(EventType.WILL_CHANGE_VIDEO, new AnonymousClass_1(randomUUID));
                Map hashMap = new HashMap();
                hashMap.put(Event.CURRENT_VIDEO, VideoDisplayComponent.this.currentVideo);
                hashMap.put(Event.NEXT_VIDEO, VideoDisplayComponent.this.nextVideo);
                hashMap.put(Event.UUID, randomUUID);
                VideoDisplayComponent.this.eventEmitter.emit(EventType.WILL_CHANGE_VIDEO, hashMap);
            }
        }
    }

    private class OnPauseListener implements EventListener {
        private OnPauseListener() {
        }

        @Default
        public void processEvent(Event event) {
            Log.v(TAG, "OnPauseListener");
            if (VideoDisplayComponent.this.mediaPlayer != null && VideoDisplayComponent.this.hasPrepared && VideoDisplayComponent.this.hasSurface && VideoDisplayComponent.this.mediaPlayer.isPlaying()) {
                VideoDisplayComponent.this.mediaPlayer.pause();
                Map hashMap = new HashMap();
                hashMap.put(Event.PLAYHEAD_POSITION, Integer.valueOf(VideoDisplayComponent.this.mediaPlayer.getCurrentPosition()));
                VideoDisplayComponent.this.eventEmitter.emit(EventType.DID_PAUSE, hashMap);
            }
        }
    }

    private class OnPlayListener implements EventListener {

        class AnonymousClass_1 implements EventListener {
            final /* synthetic */ int val$position;

            AnonymousClass_1(int i) {
                this.val$position = i;
            }

            @Default
            public void processEvent(Event event) {
                OnPlayListener.this.this$0.play(this.val$position);
            }
        }

        class AnonymousClass_2 implements EventListener {
            final /* synthetic */ int val$position;

            AnonymousClass_2(int i) {
                this.val$position = i;
            }

            @Default
            public void processEvent(Event event) {
                OnPlayListener.this.this$0.play(this.val$position);
            }
        }

        class AnonymousClass_3 implements EventListener {
            final /* synthetic */ int val$position;

            AnonymousClass_3(int i) {
                this.val$position = i;
            }

            @Default
            public void processEvent(Event event) {
                OnPlayListener.this.this$0.play(this.val$position);
            }
        }

        private OnPlayListener() {
        }

        @Default
        public void processEvent(Event event) {
            Log.v(TAG, "OnPlayListener: mediaPlayer = " + VideoDisplayComponent.this.mediaPlayer + ", hasPrepared = " + VideoDisplayComponent.this.hasPrepared + ", hasSurface = " + VideoDisplayComponent.this.hasSurface);
            VideoDisplayComponent.this.hasPlaybackStarted = false;
            if (VideoDisplayComponent.this.currentSource != null) {
                int integerProperty;
                if (event.properties.containsKey(Event.PLAYHEAD_POSITION)) {
                    integerProperty = event.getIntegerProperty(Event.PLAYHEAD_POSITION);
                } else {
                    Log.v(TAG, "OnPlayListener: playheadPosition = " + VideoDisplayComponent.this.playheadPosition);
                    integerProperty = VideoDisplayComponent.this.playheadPosition;
                    VideoDisplayComponent.this.playheadPosition = 0;
                }
                if (VideoDisplayComponent.this.mediaPlayer == null) {
                    Log.v(TAG, "OnPlayListener: MediaPlayer was null - creating a new one.");
                    VideoDisplayComponent.this.eventEmitter.once(EventType.DID_SET_SOURCE, new AnonymousClass_3(integerProperty));
                    VideoDisplayComponent.this.openVideo(VideoDisplayComponent.this.currentVideo, VideoDisplayComponent.this.currentSource);
                } else if (!VideoDisplayComponent.this.hasPrepared) {
                    Log.v(TAG, "OnPlayListener: MediaPlayer has not been prepared yet.");
                    VideoDisplayComponent.this.eventEmitter.once(EventType.DID_SET_SOURCE, new AnonymousClass_2(integerProperty));
                } else if (!VideoDisplayComponent.this.hasSurface) {
                    Log.v(TAG, "OnPlayListener: Surface is not available yet.");
                    VideoDisplayComponent.this.eventEmitter.once(EventType.READY_TO_PLAY, new AnonymousClass_1(integerProperty));
                } else if (VideoDisplayComponent.this.mediaPlayer.isPlaying()) {
                    Log.w(TAG, "Already playing.");
                } else {
                    VideoDisplayComponent.this.play(integerProperty);
                }
            } else {
                Log.e(TAG, "Source has not been set yet.");
            }
        }
    }

    private class OnPrebufferNextVideoListener implements EventListener {
        private OnPrebufferNextVideoListener() {
        }

        @Default
        public void processEvent(Event event) {
            VideoDisplayComponent.this.nextVideo = (Video) event.properties.get(Event.VIDEO);
            VideoDisplayComponent.this.nextSource = (Source) event.properties.get(Event.SOURCE);
        }
    }

    protected class OnSeekListener implements EventListener {
        protected OnSeekListener() {
        }

        @Default
        public void processEvent(Event event) {
            Log.v(TAG, "OnSeekListener: mediaPlayer = " + VideoDisplayComponent.this.mediaPlayer);
            int i = -1;
            if (event.properties.containsKey(Event.SEEK_POSITION)) {
                i = event.getIntegerProperty(Event.SEEK_POSITION);
            } else {
                Log.e(TAG, "Seek event must pass the seekPosition property");
            }
            Log.v(TAG, "OnSeekListener: position = " + i);
            if (VideoDisplayComponent.this.mediaPlayer != null && VideoDisplayComponent.this.hasPrepared && VideoDisplayComponent.this.hasSurface) {
                VideoDisplayComponent.this.seekPosition = i;
                VideoDisplayComponent.this.fromSeekPosition = VideoDisplayComponent.this.playheadPosition;
                VideoDisplayComponent.this.mediaPlayer.seekTo(i);
            } else {
                VideoDisplayComponent.this.seekPositionWhenPrepared = i;
            }
        }
    }

    protected class OnSetSourceListener implements EventListener {
        protected OnSetSourceListener() {
        }

        @Default
        public void processEvent(Event event) {
            Log.v(TAG, "OnSetSourceListener");
            VideoDisplayComponent.this.destroyPlayer();
            VideoDisplayComponent.this.currentVideo = (Video) event.properties.get(Event.VIDEO);
            VideoDisplayComponent.this.currentSource = (Source) event.properties.get(Event.SOURCE);
            if (VideoDisplayComponent.this.currentSource != null && VideoDisplayComponent.this.currentSource.getUrl() != null) {
                if (VideoDisplayComponent.this.currentSource.getDeliveryType() == DeliveryType.HLS || VideoDisplayComponent.this.currentSource.getDeliveryType() == DeliveryType.WVM) {
                    EventUtil.emit(VideoDisplayComponent.this.eventEmitter, EventType.DID_SET_SOURCE, VideoDisplayComponent.this.currentVideo, VideoDisplayComponent.this.currentSource);
                } else {
                    VideoDisplayComponent.this.openVideo(VideoDisplayComponent.this.currentVideo, VideoDisplayComponent.this.currentSource);
                }
            }
        }
    }

    private class OnSetVolumeListener implements EventListener {
        private OnSetVolumeListener() {
        }

        @Default
        public void processEvent(Event event) {
            Log.v(TAG, "OnSetVolumeListener: mediaPlayer = " + VideoDisplayComponent.this.mediaPlayer);
            if (event.properties.containsKey(Event.LEFT_VOLUME) && event.properties.containsKey(Event.RIGHT_VOLUME)) {
                float floatValue = ((Float) event.properties.get(Event.LEFT_VOLUME)).floatValue();
                float floatValue2 = ((Float) event.properties.get(Event.RIGHT_VOLUME)).floatValue();
                Log.v(TAG, "OnSetVolumeListener: leftVolume = " + floatValue + " rightVolume = " + floatValue2);
                if (floatValue < 0.0f || floatValue > 1.0f || floatValue2 < 0.0f || floatValue2 > 1.0f) {
                    Log.e(TAG, "LEFT_VOLUME and RIGHT_VOLUME must be between 0.0f and 1.0f: " + floatValue + ", " + floatValue2);
                } else {
                    VideoDisplayComponent.this.mediaPlayer.setVolume(floatValue, floatValue2);
                }
            } else {
                Log.e(TAG, "SET_VOLUME requires LEFT_VOLUME and RIGHT_VOLUME properties.");
            }
        }
    }

    protected class OnStopListener implements EventListener {
        protected OnStopListener() {
        }

        @Default
        public void processEvent(Event event) {
            Log.v(TAG, "OnStopListener");
            if (VideoDisplayComponent.this.mediaPlayer != null) {
                Map hashMap = new HashMap();
                hashMap.put(Event.PLAYHEAD_POSITION, Integer.valueOf(VideoDisplayComponent.this.mediaPlayer.getCurrentPosition()));
                VideoDisplayComponent.this.eventEmitter.emit(EventType.DID_STOP, hashMap);
            }
            VideoDisplayComponent.this.destroyPlayer();
        }
    }

    private class OnWillInterruptContentListener implements EventListener {
        private OnWillInterruptContentListener() {
        }

        @Default
        public void processEvent(Event event) {
            Log.v(TAG, "OnWillInterruptContentListener: mediaPlayer = " + VideoDisplayComponent.this.mediaPlayer + ", hasPrepared = " + VideoDisplayComponent.this.hasPrepared + ", hasSurface = " + VideoDisplayComponent.this.hasSurface + ", currentSource = " + VideoDisplayComponent.this.currentSource);
            if (VideoDisplayComponent.this.mediaPlayer != null && VideoDisplayComponent.this.hasPrepared && VideoDisplayComponent.this.hasSurface && VideoDisplayComponent.this.mediaPlayer.isPlaying()) {
                Log.v(TAG, "OnWillInterruptContentListener: isPlaying");
                if (VideoDisplayComponent.this.currentSource == null || VideoDisplayComponent.this.currentSource.getDeliveryType() == DeliveryType.HLS) {
                    VideoDisplayComponent.this.destroyPlayer();
                } else {
                    VideoDisplayComponent.this.mediaPlayer.pause();
                }
            }
            VideoDisplayComponent.this.brightcoveSurfaceView.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }
    }

    private class OnWillResumeContentListener implements EventListener {
        private OnWillResumeContentListener() {
        }

        @Default
        public void processEvent(Event event) {
            VideoDisplayComponent.this.brightcoveSurfaceView.setVisibility(0);
            Event event2 = (Event) event.properties.get(Event.ORIGINAL_EVENT);
            Log.v(TAG, "OnWillResumeContentListener: originalEvent = " + event2);
            if (event2 != null) {
                VideoDisplayComponent.this.eventEmitter.emit(event2.getType(), event2.properties);
            }
        }
    }

    static {
        TAG = VideoDisplayComponent.class.getSimpleName();
        EXECUTOR = Executors.newScheduledThreadPool(1);
    }

    public VideoDisplayComponent(BrightcoveSurfaceView brightcoveSurfaceView, EventEmitter eventEmitter) {
        super(eventEmitter, VideoDisplayComponent.class);
        this.onBufferingUpdateListener = new OnBufferingUpdateListener() {
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                Map hashMap = new HashMap();
                hashMap.put(Event.PERCENT_COMPLETE, Integer.valueOf(i));
                VideoDisplayComponent.this.eventEmitter.emit(EventType.BUFFERED_UPDATE, hashMap);
            }
        };
        this.onCompletionListener = new OnCompletionListener() {
            public void onCompletion(MediaPlayer mediaPlayer) {
                if (!VideoDisplayComponent.this.hasErrored) {
                    Map hashMap = new HashMap();
                    if (mediaPlayer != null && VideoDisplayComponent.this.hasPrepared && VideoDisplayComponent.this.hasSurface) {
                        hashMap.put(Event.PLAYHEAD_POSITION, Integer.valueOf(mediaPlayer.getDuration()));
                        hashMap.put(Fields.DURATION, Integer.valueOf(mediaPlayer.getDuration()));
                    }
                    hashMap.put(Event.VIDEO, VideoDisplayComponent.this.currentVideo);
                    VideoDisplayComponent.this.eventEmitter.emit(EventType.COMPLETED, hashMap);
                }
                if (VideoDisplayComponent.this.currentSource != null && VideoDisplayComponent.this.currentSource.getDeliveryType() == DeliveryType.HLS) {
                    VideoDisplayComponent.this.destroyPlayer();
                }
            }
        };
        this.onSeekCompleteListener = new OnSeekCompleteListener() {
            public void onSeekComplete(MediaPlayer mediaPlayer) {
                Log.v(TAG, "onSeekComplete: fromSeekPosition = " + VideoDisplayComponent.this.fromSeekPosition + ", seekPosition = " + VideoDisplayComponent.this.seekPosition + ", currentPosition = " + mediaPlayer.getCurrentPosition());
                if (mediaPlayer.getCurrentPosition() < VideoDisplayComponent.this.seekPosition) {
                    mediaPlayer.seekTo(VideoDisplayComponent.this.seekPosition);
                } else if (VideoDisplayComponent.this.fromSeekPosition != -1) {
                    Map hashMap = new HashMap();
                    hashMap.put(Event.PLAYHEAD_POSITION, Integer.valueOf(mediaPlayer.getCurrentPosition()));
                    hashMap.put(Event.SEEK_POSITION, Integer.valueOf(VideoDisplayComponent.this.seekPosition));
                    hashMap.put(Event.FROM_SEEK_POSITION, Integer.valueOf(VideoDisplayComponent.this.fromSeekPosition));
                    hashMap.put(Event.VIDEO, VideoDisplayComponent.this.currentVideo);
                    VideoDisplayComponent.this.eventEmitter.emit(EventType.DID_SEEK_TO, hashMap);
                    VideoDisplayComponent.this.fromSeekPosition = -1;
                }
                VideoDisplayComponent.this.seekPosition = -1;
            }
        };
        this.onPreparedListener = new OnPreparedListener() {
            public void onPrepared(MediaPlayer mediaPlayer) {
                if (!VideoDisplayComponent.this.hasErrored) {
                    VideoDisplayComponent.this.hasPrepared = true;
                    EventUtil.emit(VideoDisplayComponent.this.eventEmitter, EventType.DID_SET_SOURCE, VideoDisplayComponent.this.currentVideo, VideoDisplayComponent.this.currentSource);
                    VideoDisplayComponent.this.emitVideoSize(mediaPlayer.getVideoWidth(), mediaPlayer.getVideoHeight());
                    Map hashMap = new HashMap();
                    hashMap.put(Event.VIDEO, VideoDisplayComponent.this.currentVideo);
                    hashMap.put(Event.SOURCE, VideoDisplayComponent.this.currentSource);
                    hashMap.put(Fields.DURATION, Integer.valueOf(mediaPlayer.getDuration()));
                    VideoDisplayComponent.this.eventEmitter.emit(EventType.VIDEO_DURATION_CHANGED, hashMap);
                }
            }
        };
        this.onVideoSizeChangedListener = new OnVideoSizeChangedListener() {
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                if (i != 0 && i2 != 0) {
                    VideoDisplayComponent.this.emitVideoSize(i, i2);
                }
            }
        };
        this.onErrorListener = new OnErrorListener() {
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                switch (i) {
                    case MMException.UNKNOWN_ERROR:
                        break;
                    default:
                        VideoDisplayComponent.this.hasErrored = true;
                        Map hashMap = new HashMap();
                        hashMap.put(Event.VIDEO, VideoDisplayComponent.this.currentVideo);
                        hashMap.put(Event.SOURCE, VideoDisplayComponent.this.currentSource);
                        hashMap.put(Event.ERROR_CODE, Integer.valueOf(i));
                        hashMap.put(Event.ERROR_EXTRA, Integer.valueOf(i2));
                        hashMap.put(Event.ERROR_MESSAGE, "MediaPlayer " + ErrorUtil.getMessage(ErrorUtil.ERROR));
                        VideoDisplayComponent.this.eventEmitter.emit(EventType.SOURCE_NOT_PLAYABLE, hashMap);
                        break;
                }
                return false;
            }
        };
        this.onInfoListener = new OnInfoListener() {
            public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                switch (i) {
                    case GoogleScorer.CLIENT_GAMES:
                        Log.i(TAG, "MEDIA_INFO_UNKNOWN");
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        Log.i(TAG, "MEDIA_INFO_VIDEO_RENDERING_START");
                        break;
                    case Constants.ANIMATION_DURATION:
                        Log.i(TAG, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
                        break;
                    case 701:
                        Log.i(TAG, "MEDIA_INFO_BUFFERING_START");
                        break;
                    case 702:
                        Log.i(TAG, "MEDIA_INFO_BUFFERING_END");
                        break;
                    case 703:
                        Log.i(TAG, "MEDIA_INFO_NETWORK_BANDWIDTH");
                        break;
                    case 800:
                        Log.i(TAG, "MEDIA_INFO_BAD_INTERLEAVING");
                        break;
                    case 801:
                        Log.i(TAG, "MEDIA_INFO_NOT_SEEKABLE");
                        break;
                    case 802:
                        Log.i(TAG, "MEDIA_INFO_METADATA_UPDATE");
                        break;
                    case 900:
                        Log.i(TAG, "MEDIA_INFO_TIMED_TEXT_ERROR");
                        break;
                    default:
                        Log.i(TAG, "unknown MediaPlayer info: what = " + i);
                        break;
                }
                return true;
            }
        };
        if (brightcoveSurfaceView == null || eventEmitter == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.SURFACE_VIEW_AND_EVENT_EMITTER_REQUIRED));
        }
        this.analytics = new Analytics(eventEmitter, brightcoveSurfaceView.getContext());
        this.brightcoveSurfaceView = brightcoveSurfaceView;
        this.context = brightcoveSurfaceView.getContext();
        setHolderType();
        initializeListeners();
    }

    @android.annotation.SuppressLint({"NewApi"})
    private void createPlayer(com.brightcove.player.model.Video r6, com.brightcove.player.model.Source r7) {
        throw new UnsupportedOperationException("Method not decompiled: com.brightcove.player.display.VideoDisplayComponent.createPlayer(com.brightcove.player.model.Video, com.brightcove.player.model.Source):void");
        /* JADX: method processing error */
/*
        Error: java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:381)
	at jadx.core.dex.visitors.typeinference.PostTypeInference.process(PostTypeInference.java:89)
	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
        /*
        r5 = this;
        r0 = TAG;
        r1 = "createPlayer";
        android.util.Log.v(r0, r1);
        r0 = r5.brightcoveSurfaceView;
        r0 = r0.getHolder();
        r1 = new android.media.MediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1.<init>();	 Catch:{ IOException -> 0x00c9 }
        r5.mediaPlayer = r1;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1.setDisplay(r0);	 Catch:{ IOException -> 0x00c9 }
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.onPreparedListener;	 Catch:{ IOException -> 0x00c9 }
        r0.setOnPreparedListener(r1);	 Catch:{ IOException -> 0x00c9 }
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.onVideoSizeChangedListener;	 Catch:{ IOException -> 0x00c9 }
        r0.setOnVideoSizeChangedListener(r1);	 Catch:{ IOException -> 0x00c9 }
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.onCompletionListener;	 Catch:{ IOException -> 0x00c9 }
        r0.setOnCompletionListener(r1);	 Catch:{ IOException -> 0x00c9 }
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.onSeekCompleteListener;	 Catch:{ IOException -> 0x00c9 }
        r0.setOnSeekCompleteListener(r1);	 Catch:{ IOException -> 0x00c9 }
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.onBufferingUpdateListener;	 Catch:{ IOException -> 0x00c9 }
        r0.setOnBufferingUpdateListener(r1);	 Catch:{ IOException -> 0x00c9 }
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.onErrorListener;	 Catch:{ IOException -> 0x00c9 }
        r0.setOnErrorListener(r1);	 Catch:{ IOException -> 0x00c9 }
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.onInfoListener;	 Catch:{ IOException -> 0x00c9 }
        r0.setOnInfoListener(r1);	 Catch:{ IOException -> 0x00c9 }
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = 1;
        r0.setScreenOnWhilePlaying(r1);	 Catch:{ IOException -> 0x00c9 }
        r0 = android.os.Build.VERSION.SDK_INT;	 Catch:{ IOException -> 0x00c9 }
        r1 = 14;
        if (r0 < r1) goto L_0x00df;
    L_0x0056:
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.context;	 Catch:{ IOException -> 0x00c9 }
        r2 = r7.getUrl();	 Catch:{ IOException -> 0x00c9 }
        r2 = android.net.Uri.parse(r2);	 Catch:{ IOException -> 0x00c9 }
        r3 = getHeaders(r6, r7);	 Catch:{ IOException -> 0x00c9 }
        r0.setDataSource(r1, r2, r3);	 Catch:{ IOException -> 0x00c9 }
    L_0x0069:
        r0 = r6.getProperties();	 Catch:{ IOException -> 0x00c9 }
        r1 = "subtitleSources";
        r0 = r0.get(r1);	 Catch:{ IOException -> 0x00c9 }
        r0 = (java.util.List) r0;	 Catch:{ IOException -> 0x00c9 }
        if (r0 == 0) goto L_0x00fd;
    L_0x0077:
        r2 = new android.media.SubtitleController;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.context;	 Catch:{ IOException -> 0x00c9 }
        r3 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r3 = r3.getMediaTimeProvider();	 Catch:{ IOException -> 0x00c9 }
        r4 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r2.<init>(r1, r3, r4);	 Catch:{ IOException -> 0x00c9 }
        r1 = new android.media.WebVttRenderer;	 Catch:{ IOException -> 0x00c9 }
        r3 = r5.context;	 Catch:{ IOException -> 0x00c9 }
        r1.<init>(r3);	 Catch:{ IOException -> 0x00c9 }
        r2.registerRenderer(r1);	 Catch:{ IOException -> 0x00c9 }
        r1 = android.os.Build.VERSION.SDK_INT;	 Catch:{ IOException -> 0x00c9 }
        r3 = 19;
        if (r1 < r3) goto L_0x009f;
    L_0x0096:
        r3 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.brightcoveSurfaceView;	 Catch:{ IOException -> 0x00c9 }
        r1 = (com.brightcove.player.view.BrightcoveClosedCaptioningSurfaceView) r1;	 Catch:{ IOException -> 0x00c9 }
        r3.setSubtitleAnchor(r2, r1);	 Catch:{ IOException -> 0x00c9 }
    L_0x009f:
        r2 = r0.iterator();	 Catch:{ IOException -> 0x00c9 }
    L_0x00a3:
        r0 = r2.hasNext();	 Catch:{ IOException -> 0x00c9 }
        if (r0 == 0) goto L_0x00fd;
    L_0x00a9:
        r0 = r2.next();	 Catch:{ IOException -> 0x00c9 }
        r0 = (android.util.Pair) r0;	 Catch:{ IOException -> 0x00c9 }
        r3 = r5.mediaPlayer;	 Catch:{ IllegalStateException -> 0x00bd }
        r1 = r0.first;	 Catch:{ IllegalStateException -> 0x00bd }
        r1 = (java.io.InputStream) r1;	 Catch:{ IllegalStateException -> 0x00bd }
        r0 = r0.second;	 Catch:{ IllegalStateException -> 0x00bd }
        r0 = (android.media.MediaFormat) r0;	 Catch:{ IllegalStateException -> 0x00bd }
        r3.addSubtitleSource(r1, r0);	 Catch:{ IllegalStateException -> 0x00bd }
        goto L_0x00a3;
    L_0x00bd:
        r0 = move-exception;
        r0 = r5.onInfoListener;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r3 = 901; // 0x385 float:1.263E-42 double:4.45E-321;
        r4 = 0;
        r0.onInfo(r1, r3, r4);	 Catch:{ IOException -> 0x00c9 }
        goto L_0x00a3;
    L_0x00c9:
        r0 = move-exception;
        r1 = TAG;
        r2 = "IOException trying to play video";
        android.util.Log.e(r1, r2, r0);
        r1 = r5.eventEmitter;
        r2 = "error";
        r3 = "error";
        r0 = java.util.Collections.singletonMap(r3, r0);
        r1.emit(r2, r0);
    L_0x00de:
        return;
    L_0x00df:
        r0 = getHeaders(r6, r7);	 Catch:{ IOException -> 0x00c9 }
        if (r0 == 0) goto L_0x00ec;
    L_0x00e5:
        r0 = TAG;	 Catch:{ IOException -> 0x00c9 }
        r1 = "Headers ignored below API level 14";
        android.util.Log.w(r0, r1);	 Catch:{ IOException -> 0x00c9 }
    L_0x00ec:
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r1 = r5.context;	 Catch:{ IOException -> 0x00c9 }
        r2 = r7.getUrl();	 Catch:{ IOException -> 0x00c9 }
        r2 = android.net.Uri.parse(r2);	 Catch:{ IOException -> 0x00c9 }
        r0.setDataSource(r1, r2);	 Catch:{ IOException -> 0x00c9 }
        goto L_0x0069;
    L_0x00fd:
        r0 = r5.mediaPlayer;	 Catch:{ IOException -> 0x00c9 }
        r0.prepareAsync();	 Catch:{ IOException -> 0x00c9 }
        r0 = 0;
        r5.playheadPosition = r0;	 Catch:{ IOException -> 0x00c9 }
        r0 = 0;
        r5.duration = r0;	 Catch:{ IOException -> 0x00c9 }
        goto L_0x00de;
        */
    }

    protected static Map getHeaders(Video video, Source source) {
        Map map;
        Map map2 = null;
        try {
            map2 = (Map) video.getProperties().get(Fields.HEADERS);
        } catch (Exception e) {
            Log.e(TAG, "Failed to use Video headers.", e);
        }
        try {
            map = (Map) source.getProperties().get(Fields.HEADERS);
            if (map != null) {
                if (map2 != null) {
                    map2.putAll(map);
                    map = map2;
                }
                Log.v(TAG, "headers = " + map);
                return map;
            }
        } catch (Exception e2) {
            Log.e(TAG, "Failed to use Source headers.", e2);
        }
        map = map2;
        Log.v(TAG, "headers = " + map);
        return map;
    }

    private void play(int i) {
        Log.v(TAG, "play: position = " + i + ", playheadPosition = " + this.playheadPosition + ", seekPositionWhenPrepared = " + this.seekPositionWhenPrepared);
        this.mediaPlayer.setDisplay(this.brightcoveSurfaceView.getHolder());
        if (i >= 0 && Math.abs(i - this.playheadPosition) > 1000) {
            this.fromSeekPosition = -1;
            this.seekPosition = i;
            this.mediaPlayer.seekTo(i);
        } else if (this.seekPositionWhenPrepared >= 0 && Math.abs(this.seekPositionWhenPrepared - this.playheadPosition) > 1000) {
            this.fromSeekPosition = this.playheadPosition;
            this.mediaPlayer.seekTo(this.seekPositionWhenPrepared);
        }
        this.seekPositionWhenPrepared = -1;
        startUpdater();
        this.mediaPlayer.start();
    }

    private void setHolderType() {
        if (VERSION.SDK_INT <= 10) {
            this.brightcoveSurfaceView.getHolder().setType(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        }
    }

    protected void destroyPlayer() {
        stopUpdater();
        if (this.mediaPlayer != null) {
            Log.i(TAG, "Shutting down current MediaPlayer");
            this.mediaPlayer.release();
            this.mediaPlayer = null;
            this.hasPrepared = false;
            this.hasErrored = false;
        }
    }

    protected void emitVideoSize(int i, int i2) {
        Log.v(TAG, "emitVideoSize: " + i + ", " + i2 + ", " + this.brightcoveSurfaceView.getWidth() + ", " + this.brightcoveSurfaceView.getHeight());
        if (i > 0 && i2 > 0) {
            if (i != this.brightcoveSurfaceView.getVideoWidth() || i2 != this.brightcoveSurfaceView.getVideoHeight()) {
                this.brightcoveSurfaceView.setVideoSize(i, i2);
                Map hashMap = new HashMap();
                hashMap.put(MMLayout.KEY_WIDTH, Integer.valueOf(i));
                hashMap.put(MMLayout.KEY_HEIGHT, Integer.valueOf(i2));
                this.eventEmitter.emit(EventType.VIDEO_SIZE_KNOWN, hashMap);
            }
        }
    }

    public Analytics getAnalytics() {
        return this.analytics;
    }

    public MediaPlayer getMediaPlayer() {
        return this.mediaPlayer;
    }

    public SurfaceView getSurfaceView() {
        return this.brightcoveSurfaceView;
    }

    protected void initializeListeners() {
        this.onSetSourceListener = new OnSetSourceListener();
        this.onPlayListener = new OnPlayListener(null);
        this.onPauseListener = new OnPauseListener(null);
        this.onSeekListener = new OnSeekListener();
        this.onStopListener = new OnStopListener();
        this.onPrebufferNextVideoListener = new OnPrebufferNextVideoListener(null);
        this.onCompletedListener = new OnCompletedListener(null);
        this.onWillInterruptContentListener = new OnWillInterruptContentListener(null);
        this.onWillResumeContentListener = new OnWillResumeContentListener(null);
        this.onSetVolumeListener = new OnSetVolumeListener(null);
        addListener(EventType.SET_SOURCE, this.onSetSourceListener);
        addListener(EventType.PLAY, this.onPlayListener);
        addListener(EventType.SEEK_TO, this.onSeekListener);
        addListener(EventType.PAUSE, this.onPauseListener);
        addListener(EventType.STOP, this.onStopListener);
        addListener(EventType.PREBUFFER_NEXT_VIDEO, this.onPrebufferNextVideoListener);
        addListener(EventType.COMPLETED, this.onCompletedListener);
        addListener(EventType.WILL_INTERRUPT_CONTENT, this.onWillInterruptContentListener);
        addListener(EventType.WILL_RESUME_CONTENT, this.onWillResumeContentListener);
        addListener(EventType.SET_VOLUME, this.onSetVolumeListener);
    }

    protected void openVideo(Video video, Source source) {
        String url = source.getUrl();
        if (url == null || url.trim().equals(AdTrackerConstants.BLANK)) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.INVALID_URL));
        }
        destroyPlayer();
        this.hasPlaybackStarted = false;
        if (this.brightcoveSurfaceView.getHolder().getSurface() == null || !this.hasSurface) {
            this.eventEmitter.once(EventType.READY_TO_PLAY, new AnonymousClass_2(video, source));
        } else {
            createPlayer(video, source);
        }
    }

    protected void startUpdater() {
        Log.v(TAG, "startUpdater");
        this.updater = EXECUTOR.scheduleAtFixedRate(new Runnable() {
            public void run() {
                Throwable th;
                try {
                    if (VideoDisplayComponent.this.mediaPlayer != null && VideoDisplayComponent.this.hasPrepared && VideoDisplayComponent.this.hasSurface && VideoDisplayComponent.this.mediaPlayer.isPlaying() && VideoDisplayComponent.this.mediaPlayer.getCurrentPosition() >= 0) {
                        Map hashMap = new HashMap(4);
                        hashMap.put(Event.VIDEO, VideoDisplayComponent.this.currentVideo);
                        VideoDisplayComponent.this.playheadPosition = VideoDisplayComponent.this.mediaPlayer.getCurrentPosition();
                        hashMap.put(Event.PLAYHEAD_POSITION, Integer.valueOf(VideoDisplayComponent.this.playheadPosition));
                        VideoDisplayComponent.this.duration = VideoDisplayComponent.this.mediaPlayer.getDuration();
                        hashMap.put(Fields.DURATION, Integer.valueOf(VideoDisplayComponent.this.duration));
                        VideoDisplayComponent.this.eventEmitter.emit(EventType.PROGRESS, hashMap);
                        if (VideoDisplayComponent.this.playheadPosition > 0 && !VideoDisplayComponent.this.hasPlaybackStarted) {
                            hashMap.put(Event.SOURCE, VideoDisplayComponent.this.currentSource);
                            VideoDisplayComponent.this.eventEmitter.emit(EventType.DID_PLAY, hashMap);
                            VideoDisplayComponent.this.hasPlaybackStarted = true;
                        }
                    }
                } catch (IllegalStateException e) {
                    th = e;
                    VideoDisplayComponent.this.destroyPlayer();
                    Log.e(TAG, "Media player position sampled when it was in an invalid state: " + th.getMessage(), th);
                    VideoDisplayComponent.this.eventEmitter.emit(ErrorUtil.ERROR, Collections.singletonMap(ErrorUtil.ERROR, th));
                } catch (Exception e2) {
                    th = e2;
                    VideoDisplayComponent.this.destroyPlayer();
                    Log.e(TAG, "Error monitoring playback progress" + th.getMessage(), th);
                    VideoDisplayComponent.this.eventEmitter.emit(ErrorUtil.ERROR, Collections.singletonMap(ErrorUtil.ERROR, th));
                }
            }
        }, 0, 500, TimeUnit.MILLISECONDS);
    }

    protected void stopUpdater() {
        Log.v(TAG, "stopUpdater: " + this.updater);
        if (this.updater != null) {
            this.updater.cancel(false);
            this.updater = null;
        }
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Log.d(TAG, "surfaceChanged");
        if (!(this.mediaPlayer == null || surfaceHolder == null)) {
            if (surfaceHolder.getSurface() != null) {
                this.mediaPlayer.setDisplay(surfaceHolder);
                this.hasSurface = true;
            } else {
                String message = ErrorUtil.getMessage(ErrorUtil.INVALID_SURFACE);
                Log.e(TAG, "surfaceChanged: " + message);
                this.eventEmitter.emit(ErrorUtil.ERROR, Collections.singletonMap(Event.ERROR_MESSAGE, message));
            }
        }
        this.hasSurface = true;
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.d(TAG, "surfaceCreated");
        this.hasSurface = true;
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.d(TAG, "surfaceDestroyed");
        if (this.mediaPlayer != null && this.mediaPlayer.isPlaying()) {
            if (this.currentSource == null || this.currentSource.getDeliveryType() == DeliveryType.HLS) {
                destroyPlayer();
            } else {
                this.mediaPlayer.pause();
            }
        }
        this.hasSurface = false;
    }
}