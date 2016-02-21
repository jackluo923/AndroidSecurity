package com.brightcove.ima;

import android.annotation.SuppressLint;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.VideoView;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.model.Video.Fields;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.view.BrightcoveVideoView;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"ViewConstructor"})
@ListensFor(events = {"completed", "didPause", "didPlay", "didStop", "error", "progress", "willInterruptContent", "willResumeContent"})
public class GoogleIMAVideoAdPlayer extends VideoView implements OnCompletionListener, OnErrorListener, OnPreparedListener, VideoAdPlayer {
    private static final String TAG;
    private List callbacks;
    private int completedToken;
    private int didPauseToken;
    private int didPlayToken;
    private int didStopToken;
    private int duration;
    private int errorToken;
    private EventEmitter eventEmitter;
    private boolean isPlayingAd;
    private int playheadPosition;
    private int progressToken;
    private PlaybackState state;

    static /* synthetic */ class AnonymousClass_10 {
        static final /* synthetic */ int[] $SwitchMap$com$brightcove$ima$GoogleIMAVideoAdPlayer$PlaybackState;

        static {
            $SwitchMap$com$brightcove$ima$GoogleIMAVideoAdPlayer$PlaybackState = new int[PlaybackState.values().length];
            try {
                $SwitchMap$com$brightcove$ima$GoogleIMAVideoAdPlayer$PlaybackState[PlaybackState.STOPPED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            $SwitchMap$com$brightcove$ima$GoogleIMAVideoAdPlayer$PlaybackState[PlaybackState.PAUSED.ordinal()] = 2;
        }
    }

    private enum PlaybackState {
        STOPPED,
        PAUSED,
        PLAYING
    }

    static {
        TAG = GoogleIMAVideoAdPlayer.class.getSimpleName();
    }

    GoogleIMAVideoAdPlayer(BrightcoveVideoView brightcoveVideoView) {
        super(brightcoveVideoView.getContext());
        this.callbacks = new ArrayList();
        this.state = PlaybackState.STOPPED;
        this.isPlayingAd = false;
        super.setOnCompletionListener(this);
        super.setOnErrorListener(this);
        super.setOnPreparedListener(this);
        this.eventEmitter = brightcoveVideoView.getEventEmitter();
        enableListeners();
        this.eventEmitter.on(EventType.WILL_INTERRUPT_CONTENT, new EventListener() {
            public void processEvent(Event event) {
                GoogleIMAVideoAdPlayer.this.disableListeners();
                GoogleIMAVideoAdPlayer.this.didPause();
            }
        });
        this.eventEmitter.on(EventType.WILL_RESUME_CONTENT, new EventListener() {
            public void processEvent(Event event) {
                GoogleIMAVideoAdPlayer.this.enableListeners();
                GoogleIMAVideoAdPlayer.this.didPlay();
            }
        });
        setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (GoogleIMAVideoAdPlayer.this.state == PlaybackState.PLAYING) {
                    GoogleIMAVideoAdPlayer.this.pause();
                } else if (GoogleIMAVideoAdPlayer.this.state == PlaybackState.PAUSED) {
                    GoogleIMAVideoAdPlayer.this.start();
                }
                return false;
            }
        });
    }

    private void didEnd() {
        this.state = PlaybackState.STOPPED;
        Iterator it = this.callbacks.iterator();
        while (it.hasNext()) {
            ((VideoAdPlayerCallback) it.next()).onEnded();
        }
    }

    private void didError() {
        this.state = PlaybackState.STOPPED;
        Iterator it = this.callbacks.iterator();
        while (it.hasNext()) {
            ((VideoAdPlayerCallback) it.next()).onError();
        }
    }

    private void didPause() {
        this.state = PlaybackState.PAUSED;
        Iterator it = this.callbacks.iterator();
        while (it.hasNext()) {
            ((VideoAdPlayerCallback) it.next()).onPause();
        }
    }

    private void didPlay() {
        PlaybackState playbackState = this.state;
        this.state = PlaybackState.PLAYING;
        Iterator it;
        switch (AnonymousClass_10.$SwitchMap$com$brightcove$ima$GoogleIMAVideoAdPlayer$PlaybackState[playbackState.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                it = this.callbacks.iterator();
                while (it.hasNext()) {
                    ((VideoAdPlayerCallback) it.next()).onPlay();
                }
            case GoogleScorer.CLIENT_PLUS:
                it = this.callbacks.iterator();
                while (it.hasNext()) {
                    ((VideoAdPlayerCallback) it.next()).onResume();
                }
            default:
                break;
        }
    }

    private void disableListeners() {
        this.eventEmitter.off(EventType.PROGRESS, this.progressToken);
        this.eventEmitter.off(EventType.DID_PLAY, this.didPlayToken);
        this.eventEmitter.off(EventType.DID_PAUSE, this.didPauseToken);
        this.eventEmitter.off(EventType.DID_STOP, this.didStopToken);
        this.eventEmitter.off(EventType.COMPLETED, this.completedToken);
        this.eventEmitter.off(ErrorUtil.ERROR, this.errorToken);
    }

    private void enableListeners() {
        this.progressToken = this.eventEmitter.on(EventType.PROGRESS, new EventListener() {
            public void processEvent(Event event) {
                GoogleIMAVideoAdPlayer.this.duration = event.getIntegerProperty(Fields.DURATION);
                GoogleIMAVideoAdPlayer.this.playheadPosition = event.getIntegerProperty(Event.PLAYHEAD_POSITION);
            }
        });
        this.didPlayToken = this.eventEmitter.on(EventType.DID_PLAY, new EventListener() {
            public void processEvent(Event event) {
                GoogleIMAVideoAdPlayer.this.didPlay();
            }
        });
        this.didPauseToken = this.eventEmitter.on(EventType.DID_PAUSE, new EventListener() {
            public void processEvent(Event event) {
                GoogleIMAVideoAdPlayer.this.didPause();
            }
        });
        this.didStopToken = this.eventEmitter.on(EventType.DID_STOP, new EventListener() {
            public void processEvent(Event event) {
                GoogleIMAVideoAdPlayer.this.didEnd();
            }
        });
        this.completedToken = this.eventEmitter.on(EventType.COMPLETED, new EventListener() {
            public void processEvent(Event event) {
                GoogleIMAVideoAdPlayer.this.didEnd();
            }
        });
        this.errorToken = this.eventEmitter.on(ErrorUtil.ERROR, new EventListener() {
            public void processEvent(Event event) {
                GoogleIMAVideoAdPlayer.this.didError();
            }
        });
    }

    public void addCallback(VideoAdPlayerCallback videoAdPlayerCallback) {
        Log.v(TAG, "addCallback: " + videoAdPlayerCallback);
        this.callbacks.add(videoAdPlayerCallback);
    }

    public VideoProgressUpdate getProgress() {
        if (this.isPlayingAd) {
            int duration = getDuration();
            return duration <= 0 ? VideoProgressUpdate.VIDEO_TIME_NOT_READY : new VideoProgressUpdate((long) getCurrentPosition(), (long) duration);
        } else if (this.duration <= 0) {
            return VideoProgressUpdate.VIDEO_TIME_NOT_READY;
        } else {
            return new VideoProgressUpdate((long) this.playheadPosition, (long) this.duration);
        }
    }

    public void loadAd(String str) {
        Log.v(TAG, "loadAd: " + str + ", state = " + this.state);
        setVideoPath(str);
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        Log.v(TAG, "onCompletion");
        this.state = PlaybackState.STOPPED;
        this.isPlayingAd = false;
        didEnd();
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        didError();
        this.isPlayingAd = false;
        return true;
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        Log.v(TAG, "onPrepared");
    }

    public void pause() {
        Log.v(TAG, EventType.PAUSE);
        super.pause();
        didPause();
    }

    public void pauseAd() {
        Log.v(TAG, "pauseAd");
        pause();
    }

    public void playAd() {
        Log.v(TAG, "playAd");
        start();
    }

    public void removeCallback(VideoAdPlayerCallback videoAdPlayerCallback) {
        Log.v(TAG, "removeCallback: " + videoAdPlayerCallback);
        this.callbacks.remove(videoAdPlayerCallback);
    }

    public void resumeAd() {
        Log.v(TAG, "resumeAd");
        start();
    }

    public void start() {
        Log.v(TAG, "start");
        super.start();
        this.isPlayingAd = true;
        didPlay();
    }

    public void stopAd() {
        Log.v(TAG, "stopAd");
        stopPlayback();
        this.isPlayingAd = false;
    }
}