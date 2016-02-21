package com.brightcove.player.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaFormat;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import com.brightcove.player.analytics.Analytics;
import com.brightcove.player.controller.DefaultSourceSelectionController;
import com.brightcove.player.controller.VideoPlaybackController;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.display.VideoStillDisplayComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventEmitterImpl;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.management.BrightcovePluginManager;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.model.Video.Fields;
import com.brightcove.player.util.EventUtil;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Emits(events = {"didChangeList", "didSelectSource", "pause", "play", "prebufferNextVideo", "readyToPlay", "seekTo", "selectSource", "setSource", "setVideo", "stop", "willChangeVideo"})
@ListensFor(events = {"bufferedUpdate", "completed", "didPause", "didPlay", "didSeekTo", "didSetSource", "didStop", "progress", "seekTo", "sourceNotPlayable", "videoDurationChanged", "willChangeVideo", "willInterruptContent"})
public class BrightcoveVideoView extends FrameLayout implements MediaPlayerControl, Component {
    private static final String TAG;
    protected View anchorView;
    protected BrightcoveSurfaceView brightcoveSurfaceView;
    protected Class brightcoveSurfaceViewClass;
    private int bufferedPercent;
    private int currentIndex;
    private boolean currentlyPlaying;
    protected int duration;
    protected EventEmitter eventEmitter;
    private boolean hasPendingPlay;
    private boolean hasSetSource;
    protected ImageView imageView;
    protected MediaController mediaController;
    protected MediaPlayerControl mediaPlayerControl;
    private OnCompletionListener onCompletionListener;
    protected OnPreparedListener onPreparedListener;
    protected VideoPlaybackController playbackController;
    protected int playheadPosition;
    protected BrightcovePluginManager pluginManager;
    protected DefaultSourceSelectionController sourceController;
    protected SurfaceListener surfaceListener;
    protected VideoDisplayComponent videoDisplay;
    protected VideoStillDisplayComponent videoStillDisplay;
    private Map videoToSourceMap;
    private ArrayList videos;

    class AnonymousClass_15 implements EventListener {
        final /* synthetic */ int val$index;
        final /* synthetic */ UUID val$uniqueKey;

        AnonymousClass_15(UUID uuid, int i) {
            this.val$uniqueKey = uuid;
            this.val$index = i;
        }

        @Default
        public void processEvent(Event event) {
            if (event.properties.get(Event.UUID).equals(this.val$uniqueKey)) {
                BrightcoveVideoView.this.resetMetaData();
                BrightcoveVideoView.this.currentIndex = this.val$index;
                Video video = (Video) event.properties.get(Event.NEXT_VIDEO);
                if (video != null) {
                    EventUtil.emit(BrightcoveVideoView.this.eventEmitter, EventType.SET_VIDEO, video);
                } else {
                    BrightcoveVideoView.this.eventEmitter.emit(EventType.SET_SOURCE);
                }
            }
        }
    }

    class AnonymousClass_16 implements EventListener {
        final /* synthetic */ Video val$video;

        AnonymousClass_16(Video video) {
            this.val$video = video;
        }

        public void processEvent(Event event) {
            Source source = (Source) event.properties.get(Event.SOURCE);
            BrightcoveVideoView.this.videoToSourceMap.put(this.val$video, source);
            EventUtil.emit(BrightcoveVideoView.this.eventEmitter, EventType.DID_SELECT_SOURCE, this.val$video, source);
            EventUtil.emit(BrightcoveVideoView.this.eventEmitter, EventType.PREBUFFER_NEXT_VIDEO, this.val$video, source);
        }
    }

    class AnonymousClass_17 implements EventListener {
        final /* synthetic */ Pair val$pair;

        AnonymousClass_17(Pair pair) {
            this.val$pair = pair;
        }

        public void processEvent(Event event) {
            Video video = (Video) event.properties.get(Event.NEXT_VIDEO);
            if (video != null) {
                BrightcoveVideoView.this.addSubtitlePair(video, this.val$pair);
            }
        }
    }

    private class SurfaceListener implements Callback {
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            Log.d(TAG, "Surface changed to " + i2 + ", " + i3);
            BrightcoveVideoView.this.videoDisplay.surfaceChanged(surfaceHolder, i, i2, i3);
        }

        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            Log.d(TAG, "Surface created.");
            BrightcoveVideoView.this.eventEmitter.emit(EventType.READY_TO_PLAY);
            BrightcoveVideoView.this.videoDisplay.surfaceCreated(surfaceHolder);
        }

        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            Log.d(TAG, "Surface destroyed.");
            BrightcoveVideoView.this.videoDisplay.surfaceDestroyed(surfaceHolder);
        }
    }

    static {
        TAG = BrightcoveVideoView.class.getSimpleName();
    }

    public BrightcoveVideoView(Context context) {
        super(context);
        this.videos = new ArrayList();
        this.videoToSourceMap = new HashMap();
        this.currentIndex = -1;
        this.brightcoveSurfaceViewClass = BrightcoveSurfaceView.class;
        init(context);
    }

    public BrightcoveVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BrightcoveVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.videos = new ArrayList();
        this.videoToSourceMap = new HashMap();
        this.currentIndex = -1;
        this.brightcoveSurfaceViewClass = BrightcoveSurfaceView.class;
        init(context);
    }

    static /* synthetic */ int access$208(BrightcoveVideoView brightcoveVideoView) {
        int i = brightcoveVideoView.currentIndex;
        brightcoveVideoView.currentIndex = i + 1;
        return i;
    }

    private void addSubtitlePair(Video video, Pair pair) {
        List list = (List) video.getProperties().get(Fields.SUBTITLE_SOURCES);
        if (list == null) {
            list = new ArrayList();
            video.getProperties().put(Fields.SUBTITLE_SOURCES, list);
        }
        list.add(pair);
    }

    private void emitDidChangeList() {
        Map hashMap = new HashMap();
        hashMap.put(Event.LIST, this.videos);
        this.eventEmitter.emit(EventType.DID_CHANGE_LIST, hashMap);
    }

    private Video getCurrentVideo() {
        return (this.currentIndex < 0 || this.currentIndex >= this.videos.size()) ? null : (Video) this.videos.get(this.currentIndex);
    }

    private boolean hasNextVideo() {
        return this.videos.size() > 1 && this.currentIndex + 1 < this.videos.size();
    }

    private void prebufferNextVideo() {
        if (hasNextVideo()) {
            Video video = (Video) this.videos.get(this.currentIndex + 1);
            Source source = (Source) this.videoToSourceMap.get(video);
            if (source != null) {
                EventUtil.emit(this.eventEmitter, EventType.PREBUFFER_NEXT_VIDEO, video, source);
            } else {
                Map hashMap = new HashMap();
                hashMap.put(Event.VIDEO, video);
                this.eventEmitter.request(EventType.SELECT_SOURCE, hashMap, new AnonymousClass_16(video));
            }
        } else {
            this.eventEmitter.emit(EventType.PREBUFFER_NEXT_VIDEO);
        }
    }

    private void setCurrentIndexPrivate(int i) {
        if (i == -1) {
            this.hasSetSource = false;
            if (this.currentIndex == -1) {
                return;
            }
        }
        UUID randomUUID = UUID.randomUUID();
        this.eventEmitter.once(EventType.WILL_CHANGE_VIDEO, new AnonymousClass_15(randomUUID, i));
        Map hashMap = new HashMap();
        hashMap.put(Event.INDEX, Integer.valueOf(this.currentIndex));
        hashMap.put(Event.CURRENT_VIDEO, getCurrentVideo());
        Object obj = null;
        if (i >= 0 && i < this.videos.size()) {
            Video video = (Video) this.videos.get(i);
        }
        hashMap.put(Event.NEXT_VIDEO, obj);
        hashMap.put(Event.UUID, randomUUID);
        this.eventEmitter.emit(EventType.WILL_CHANGE_VIDEO, hashMap);
    }

    private void setCurrentlyPlaying(boolean z) {
        this.currentlyPlaying = z;
        if (this.mediaController != null) {
            this.mediaController.setMediaPlayer(this);
        }
    }

    private void updateIndex(int i, int i2) {
        if (this.currentIndex == -1 || this.currentIndex == i) {
            setCurrentIndexPrivate(i);
        } else if (i < this.currentIndex) {
            this.currentIndex += i2;
        } else if (this.currentIndex >= 0 && this.currentIndex + 1 == i && this.currentlyPlaying) {
            prebufferNextVideo();
        }
    }

    public void add(int i, Video video) {
        this.videos.add(i, video);
        emitDidChangeList();
        updateIndex(i, 1);
    }

    public void add(Video video) {
        add(this.videos.size(), video);
    }

    public void addAll(int i, Collection collection) {
        this.videos.addAll(i, collection);
        emitDidChangeList();
        updateIndex(i, collection.size());
    }

    public void addAll(Collection collection) {
        addAll(this.videos.size(), collection);
    }

    @TargetApi(19)
    public void addSubtitleSource(InputStream inputStream, MediaFormat mediaFormat) {
        Video currentVideo = getCurrentVideo();
        Pair create = Pair.create(inputStream, mediaFormat);
        if (currentVideo != null) {
            addSubtitlePair(currentVideo, create);
        } else {
            this.eventEmitter.once(EventType.WILL_CHANGE_VIDEO, new AnonymousClass_17(create));
        }
    }

    protected void attachMediaController() {
        Log.v(TAG, "attachMediaController: mediaPlayer = " + this.videoDisplay.getMediaPlayer() + ", mediaController = " + this.mediaController);
        if (this.mediaController != null) {
            if (this.anchorView == null) {
                this.mediaController.setAnchorView(getParent() instanceof View ? (View) getParent() : this);
            }
            if (this.mediaPlayerControl == null) {
                this.mediaController.setMediaPlayer(new MediaPlayerControl() {
                    public boolean canPause() {
                        return BrightcoveVideoView.this.canPause();
                    }

                    public boolean canSeekBackward() {
                        return BrightcoveVideoView.this.canSeekBackward();
                    }

                    public boolean canSeekForward() {
                        return BrightcoveVideoView.this.canSeekForward();
                    }

                    public int getAudioSessionId() {
                        return 0;
                    }

                    public int getBufferPercentage() {
                        return BrightcoveVideoView.this.getBufferPercentage();
                    }

                    public int getCurrentPosition() {
                        return BrightcoveVideoView.this.getCurrentPosition() / 1000;
                    }

                    public int getDuration() {
                        return BrightcoveVideoView.this.getDuration() / 1000;
                    }

                    public boolean isPlaying() {
                        return BrightcoveVideoView.this.isPlaying();
                    }

                    public void pause() {
                        BrightcoveVideoView.this.pause();
                    }

                    public void seekTo(int i) {
                        BrightcoveVideoView.this.seekTo(i * 1000);
                    }

                    public void start() {
                        BrightcoveVideoView.this.start();
                    }
                });
            }
            if (this.videoDisplay.getMediaPlayer() != null) {
                this.mediaController.setEnabled(true);
                if (this.brightcoveSurfaceView.isShown()) {
                    this.mediaController.show(0);
                }
                if (this.playheadPosition > 0) {
                    this.videoDisplay.getMediaPlayer().seekTo(this.playheadPosition);
                }
            }
        }
    }

    public boolean canPause() {
        return true;
    }

    public boolean canSeekBackward() {
        return true;
    }

    public boolean canSeekForward() {
        return true;
    }

    public void clear() {
        int i = this.videos.size() > 0 ? 1 : 0;
        this.videos.clear();
        this.videoToSourceMap.clear();
        setCurrentIndexPrivate(-1);
        if (i != 0) {
            emitDidChangeList();
        }
    }

    public void clearOnCompletionListener() {
        this.onCompletionListener = null;
    }

    public void clearOnPreparedListener() {
        this.onPreparedListener = null;
    }

    public Video get(int i) {
        return (Video) this.videos.get(i);
    }

    public Analytics getAnalytics() {
        return this.videoDisplay != null ? this.videoDisplay.getAnalytics() : null;
    }

    public int getAudioSessionId() {
        return 0;
    }

    public int getBufferPercentage() {
        return this.bufferedPercent;
    }

    public int getCurrentIndex() {
        return this.currentIndex;
    }

    public int getCurrentPosition() {
        return this.playheadPosition;
    }

    public int getDuration() {
        return this.duration;
    }

    public EventEmitter getEventEmitter() {
        return this.eventEmitter == null ? null : ((RegisteringEventEmitter) this.eventEmitter).getRootEmitter();
    }

    public List getList() {
        return Collections.unmodifiableList(this.videos);
    }

    public VideoPlaybackController getPlaybackController() {
        return this.playbackController;
    }

    public DefaultSourceSelectionController getSourceController() {
        return this.sourceController;
    }

    public SurfaceView getSurfaceView() {
        return this.brightcoveSurfaceView;
    }

    public VideoDisplayComponent getVideoDisplay() {
        return this.videoDisplay;
    }

    public int getVideoHeight() {
        return this.brightcoveSurfaceView.getVideoHeight();
    }

    public VideoStillDisplayComponent getVideoStillDisplay() {
        return this.videoStillDisplay;
    }

    public int getVideoWidth() {
        return this.brightcoveSurfaceView.getVideoWidth();
    }

    protected void init(Context context) {
        Log.i(TAG, "init");
        resetMetaData();
        this.playheadPosition = -1;
        setClickable(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        try {
            this.brightcoveSurfaceView = (BrightcoveSurfaceView) this.brightcoveSurfaceViewClass.getConstructors()[0].newInstance(new Object[]{context});
            this.surfaceListener = new SurfaceListener();
            this.brightcoveSurfaceView.getHolder().addCallback(this.surfaceListener);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e2) {
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
        this.imageView = new ImageView(context);
        addView(this.brightcoveSurfaceView);
        addView(this.imageView);
    }

    protected void initListeners() {
        this.eventEmitter.on(EventType.SOURCE_NOT_PLAYABLE, new EventListener() {
            @Default
            public void processEvent(Event event) {
                BrightcoveVideoView.this.eventEmitter.emit(EventType.STOP);
            }
        });
        this.eventEmitter.on(EventType.VIDEO_DURATION_CHANGED, new EventListener() {
            @Default
            public void processEvent(Event event) {
                BrightcoveVideoView.this.duration = event.getIntegerProperty(Fields.DURATION);
                if (BrightcoveVideoView.this.brightcoveSurfaceView.isShown() && BrightcoveVideoView.this.mediaController != null) {
                    BrightcoveVideoView.this.mediaController.show();
                }
            }
        });
        this.eventEmitter.on(EventType.PROGRESS, new EventListener() {
            @Default
            public void processEvent(Event event) {
                int integerProperty = event.getIntegerProperty(Fields.DURATION);
                if (integerProperty > -1) {
                    BrightcoveVideoView.this.duration = integerProperty;
                }
                integerProperty = event.getIntegerProperty(Event.PLAYHEAD_POSITION);
                if (integerProperty > -1) {
                    BrightcoveVideoView.this.playheadPosition = integerProperty;
                }
            }
        });
        this.eventEmitter.on(EventType.DID_SET_SOURCE, new EventListener() {
            static final /* synthetic */ boolean $assertionsDisabled;

            static {
                $assertionsDisabled = !BrightcoveVideoView.class.desiredAssertionStatus();
            }

            @Default
            public void processEvent(Event event) {
                BrightcoveVideoView.this.onPrepared();
                BrightcoveVideoView.this.attachMediaController();
                Video video = (Video) event.properties.get(Event.VIDEO);
                if (video != null && !video.equals(BrightcoveVideoView.this.getCurrentVideo()) && BrightcoveVideoView.this.videos.indexOf(video) >= 0) {
                    BrightcoveVideoView.access$208(BrightcoveVideoView.this);
                    if (!$assertionsDisabled && !video.equals(BrightcoveVideoView.this.getCurrentVideo())) {
                        throw new AssertionError();
                    }
                }
            }
        });
        this.eventEmitter.on(EventType.COMPLETED, new EventListener() {
            public void processEvent(Event event) {
                if (BrightcoveVideoView.this.onCompletionListener != null) {
                    BrightcoveVideoView.this.onCompletionListener.onCompletion(null);
                }
                BrightcoveVideoView.this.playheadPosition = 0;
                BrightcoveVideoView.this.setCurrentlyPlaying(false);
            }
        });
        this.eventEmitter.on(EventType.BUFFERED_UPDATE, new EventListener() {
            public void processEvent(Event event) {
                BrightcoveVideoView.this.bufferedPercent = event.getIntegerProperty(Event.PERCENT_COMPLETE);
            }
        });
        this.eventEmitter.on(EventType.SEEK_TO, new EventListener() {
            public void processEvent(Event event) {
                int integerProperty = event.getIntegerProperty(Event.SEEK_POSITION);
                if (integerProperty > -1) {
                    BrightcoveVideoView.this.playheadPosition = integerProperty;
                }
            }
        });
        this.eventEmitter.on(EventType.DID_SEEK_TO, new EventListener() {
            public void processEvent(Event event) {
                int integerProperty = event.getIntegerProperty(Event.PLAYHEAD_POSITION);
                if (integerProperty > -1) {
                    BrightcoveVideoView.this.playheadPosition = integerProperty;
                }
            }
        });
        this.eventEmitter.on(EventType.DID_SET_SOURCE, new EventListener() {
            @Default
            public void processEvent(Event event) {
                BrightcoveVideoView.this.hasSetSource = true;
                if (BrightcoveVideoView.this.hasPendingPlay) {
                    BrightcoveVideoView.this.hasPendingPlay = false;
                    BrightcoveVideoView.this.eventEmitter.emit(EventType.PLAY);
                }
            }
        });
        this.eventEmitter.on(EventType.DID_PLAY, new EventListener() {
            public void processEvent(Event event) {
                BrightcoveVideoView.this.setCurrentlyPlaying(true);
                if (BrightcoveVideoView.this.brightcoveSurfaceView.isShown() && BrightcoveVideoView.this.mediaController != null) {
                    BrightcoveVideoView.this.mediaController.show();
                }
                BrightcoveVideoView.this.prebufferNextVideo();
            }
        });
        this.eventEmitter.on(EventType.DID_STOP, new EventListener() {
            public void processEvent(Event event) {
                BrightcoveVideoView.this.resetMetaData();
            }
        });
        this.eventEmitter.on(EventType.DID_PAUSE, new EventListener() {
            public void processEvent(Event event) {
                BrightcoveVideoView.this.setCurrentlyPlaying(false);
            }
        });
        this.eventEmitter.on(EventType.WILL_INTERRUPT_CONTENT, new EventListener() {
            public void processEvent(Event event) {
                if (BrightcoveVideoView.this.mediaController != null) {
                    BrightcoveVideoView.this.mediaController.hide();
                    BrightcoveVideoView.this.eventEmitter.once(EventType.PROGRESS, new EventListener() {
                        public void processEvent(Event event) {
                            AnonymousClass_13.this.this$0.mediaController.show();
                        }
                    });
                }
            }
        });
    }

    public boolean isPlaying() {
        return this.currentlyPlaying;
    }

    public void onControllerHide() {
        Log.i(TAG, "onControllerHide");
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.eventEmitter == null) {
            setEventEmitter(new EventEmitterImpl());
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Log.v(TAG, "onLayout: changed = " + z + ", left = " + i + ", top = " + i2 + ", right = " + i3 + ", bottom = " + i4);
        super.onLayout(z, i, i2, i3, i4);
    }

    protected void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int mode = MeasureSpec.getMode(i);
        Log.v(TAG, "onMeasure: width = " + size + ", height = " + MeasureSpec.getSize(i2) + ", videoWidth = " + getVideoWidth() + ", videoHeight = " + getVideoHeight() + ", widthMode = " + LayoutUtil.getSpecMode(mode) + ", heightMode = " + LayoutUtil.getSpecMode(MeasureSpec.getMode(i2)));
        super.onMeasure(i, i2);
    }

    protected void onPrepared() {
        if (this.onPreparedListener != null) {
            this.onPreparedListener.onPrepared(this.videoDisplay.getMediaPlayer());
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        Log.v(TAG, "onSizeChanged: width = " + i + ", height = " + i2 + ", oldw = " + i3 + ", oldh = " + i4);
        super.onSizeChanged(i, i2, i3, i4);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        Log.i(TAG, "onTouchEvent");
        if (this.brightcoveSurfaceView.isShown() && this.mediaController != null) {
            Log.i(TAG, "onTouchEvent: " + this.mediaController.isShowing());
            if (this.mediaController.isShowing()) {
                this.mediaController.hide();
            } else {
                this.mediaController.show();
            }
        }
        return false;
    }

    public void pause() {
        Map hashMap = new HashMap();
        hashMap.put(Event.PLAYHEAD_POSITION, Integer.valueOf(this.playheadPosition));
        this.eventEmitter.emit(EventType.PAUSE, hashMap);
    }

    public void remove(int i) {
        this.videoToSourceMap.remove((Video) this.videos.remove(i));
        if (this.currentIndex > i) {
            this.currentIndex--;
        } else if (this.videos.isEmpty()) {
            setCurrentIndexPrivate(-1);
        } else if (this.currentIndex == i) {
            if (i == this.videos.size()) {
                setCurrentIndex(i - 1);
            } else if (i < this.videos.size()) {
                setCurrentIndexPrivate(i);
            }
        } else if (this.currentIndex + 1 == i && this.currentlyPlaying) {
            prebufferNextVideo();
        }
        emitDidChangeList();
    }

    protected void resetMetaData() {
        if (this.brightcoveSurfaceView != null) {
            this.brightcoveSurfaceView.setVideoSize(0, 0);
        }
        this.bufferedPercent = 0;
        this.playheadPosition = 0;
        this.duration = -1;
        setCurrentlyPlaying(false);
    }

    public void seekTo(int i) {
        Log.d(TAG, "Seeking to " + i);
        Map hashMap = new HashMap();
        hashMap.put(Event.SEEK_POSITION, Integer.valueOf(i));
        this.playheadPosition = i;
        this.eventEmitter.emit(EventType.SEEK_TO, hashMap);
    }

    public void setCurrentIndex(int i) {
        if (i != this.currentIndex) {
            if (i < 0 || i >= this.videos.size()) {
                throw new IndexOutOfBoundsException();
            }
            setCurrentIndexPrivate(i);
        }
    }

    public void setEventEmitter(EventEmitter eventEmitter) {
        this.eventEmitter = RegisteringEventEmitter.build(eventEmitter, getClass());
        this.playbackController = new VideoPlaybackController(eventEmitter);
        this.sourceController = new DefaultSourceSelectionController(eventEmitter);
        this.videoStillDisplay = new VideoStillDisplayComponent(this.imageView, eventEmitter);
        this.videoDisplay = new VideoDisplayComponent(this.brightcoveSurfaceView, eventEmitter);
        this.pluginManager = new BrightcovePluginManager(eventEmitter);
        initListeners();
    }

    public void setLayoutParams(LayoutParams layoutParams) {
        Log.v(TAG, "setLayoutParams: " + layoutParams);
        super.setLayoutParams(layoutParams);
        if (layoutParams != null) {
            int childCount = getChildCount();
            LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height);
            layoutParams2.gravity = 17;
            int i = 0;
            while (i < childCount) {
                getChildAt(i).setLayoutParams(layoutParams2);
                i++;
            }
        }
    }

    public void setMediaController(MediaController mediaController) {
        setMediaController(mediaController, null, null);
    }

    public void setMediaController(MediaController mediaController, View view, MediaPlayerControl mediaPlayerControl) {
        if (this.mediaController != null) {
            this.mediaController.hide();
        }
        this.mediaController = mediaController;
        this.mediaPlayerControl = mediaPlayerControl;
        this.anchorView = view;
        attachMediaController();
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.onCompletionListener = onCompletionListener;
    }

    public void setOnPreparedListener(OnPreparedListener onPreparedListener) {
        this.onPreparedListener = onPreparedListener;
    }

    public void setVideoPath(String str) {
        if (hasNextVideo()) {
            this.eventEmitter.emit(EventType.PREBUFFER_NEXT_VIDEO);
        }
        this.videos.clear();
        this.videoToSourceMap.clear();
        add(Video.createVideo(str));
    }

    public void setVideoURI(Uri uri) {
        setVideoPath(uri.toString());
    }

    public void start() {
        if (this.hasSetSource) {
            this.hasPendingPlay = false;
            Map hashMap = new HashMap();
            hashMap.put(Event.PLAYHEAD_POSITION, Integer.valueOf(this.playheadPosition));
            this.eventEmitter.emit(EventType.PLAY, hashMap);
        } else if (this.videos.isEmpty()) {
            Log.e(TAG, "No video to play.");
        } else {
            this.hasPendingPlay = true;
        }
    }

    public void stopPlayback() {
        Map hashMap = new HashMap();
        hashMap.put(Event.PLAYHEAD_POSITION, Integer.valueOf(this.playheadPosition));
        this.eventEmitter.emit(EventType.STOP, hashMap);
    }
}