package com.jirbo.adcolony;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import com.brightcove.player.event.EventType;
import com.brightcove.player.media.MediaService;
import java.io.FileDescriptor;
import java.io.IOException;

class ADCCustomVideoView extends SurfaceView implements MediaPlayerControl {
    static final int STATE_ERROR = -1;
    static final int STATE_IDLE = 0;
    static final int STATE_PAUSED = 4;
    static final int STATE_PLAYBACK_COMPLETED = 5;
    static final int STATE_PLAYING = 3;
    static final int STATE_PREPARED = 2;
    static final int STATE_PREPARING = 1;
    static final int STATE_RESUME = 7;
    static final int STATE_SUSPEND = 6;
    static final int STATE_SUSPEND_UNSUPPORTED = 8;
    String TAG;
    FileDescriptor fd;
    private OnBufferingUpdateListener mBufferingUpdateListener;
    boolean mCanPause;
    boolean mCanSeekBack;
    boolean mCanSeekForward;
    private OnCompletionListener mCompletionListener;
    int mCurrentBufferPercentage;
    int mCurrentState;
    int mDuration;
    private OnErrorListener mErrorListener;
    MediaController mMediaController;
    MediaPlayer mMediaPlayer;
    OnCompletionListener mOnCompletionListener;
    OnErrorListener mOnErrorListener;
    OnPreparedListener mOnPreparedListener;
    OnPreparedListener mPreparedListener;
    Callback mSHCallback;
    int mSeekWhenPrepared;
    OnVideoSizeChangedListener mSizeChangedListener;
    int mStateWhenSuspended;
    int mSurfaceHeight;
    SurfaceHolder mSurfaceHolder;
    int mSurfaceWidth;
    int mTargetState;
    Uri mUri;
    int mVideoHeight;
    int mVideoWidth;

    ADCCustomVideoView(Context context) {
        super(context);
        this.TAG = "ADCCustomVideoView";
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mSurfaceHolder = null;
        this.mMediaPlayer = null;
        this.mSizeChangedListener = new OnVideoSizeChangedListener() {
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                ADCCustomVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                ADCCustomVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                if (ADCCustomVideoView.this.mVideoWidth != 0 && ADCCustomVideoView.this.mVideoHeight != 0) {
                    ADCCustomVideoView.this.getHolder().setFixedSize(ADCCustomVideoView.this.mVideoWidth, ADCCustomVideoView.this.mVideoHeight);
                }
            }
        };
        this.mPreparedListener = new OnPreparedListener() {
            public void onPrepared(MediaPlayer mediaPlayer) {
                ADCCustomVideoView.this.mCurrentState = 2;
                ADCCustomVideoView aDCCustomVideoView = ADCCustomVideoView.this;
                ADCCustomVideoView aDCCustomVideoView2 = ADCCustomVideoView.this;
                ADCCustomVideoView.this.mCanSeekForward = true;
                aDCCustomVideoView2.mCanSeekBack = true;
                aDCCustomVideoView.mCanPause = true;
                if (ADCCustomVideoView.this.mOnPreparedListener != null) {
                    ADCCustomVideoView.this.mOnPreparedListener.onPrepared(ADCCustomVideoView.this.mMediaPlayer);
                }
                if (ADCCustomVideoView.this.mMediaController != null) {
                    ADCCustomVideoView.this.mMediaController.setEnabled(true);
                }
                ADCCustomVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                ADCCustomVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                int i = ADCCustomVideoView.this.mSeekWhenPrepared;
                if (i != 0) {
                    ADCCustomVideoView.this.seekTo(i);
                }
                if (ADCCustomVideoView.this.mVideoWidth != 0 && ADCCustomVideoView.this.mVideoHeight != 0) {
                    ADCCustomVideoView.this.getHolder().setFixedSize(ADCCustomVideoView.this.mVideoWidth, ADCCustomVideoView.this.mVideoHeight);
                    if (ADCCustomVideoView.this.mSurfaceWidth != ADCCustomVideoView.this.mVideoWidth || ADCCustomVideoView.this.mSurfaceHeight != ADCCustomVideoView.this.mVideoHeight) {
                        return;
                    }
                    if (ADCCustomVideoView.this.mTargetState == 3) {
                        ADCCustomVideoView.this.start();
                        if (ADCCustomVideoView.this.mMediaController != null) {
                            ADCCustomVideoView.this.mMediaController.show();
                        }
                    } else if (!ADCCustomVideoView.this.isPlaying()) {
                        if ((i != 0 || ADCCustomVideoView.this.getCurrentPosition() > 0) && ADCCustomVideoView.this.mMediaController != null) {
                            ADCCustomVideoView.this.mMediaController.show(STATE_IDLE);
                        }
                    }
                } else if (ADCCustomVideoView.this.mTargetState == 3) {
                    ADCCustomVideoView.this.start();
                }
            }
        };
        this.mCompletionListener = new OnCompletionListener() {
            public void onCompletion(MediaPlayer mediaPlayer) {
                ADCCustomVideoView.this.mCurrentState = 5;
                ADCCustomVideoView.this.mTargetState = 5;
                if (ADCCustomVideoView.this.mMediaController != null) {
                    ADCCustomVideoView.this.mMediaController.hide();
                }
                if (ADCCustomVideoView.this.mOnCompletionListener != null) {
                    ADCCustomVideoView.this.mOnCompletionListener.onCompletion(ADCCustomVideoView.this.mMediaPlayer);
                }
            }
        };
        this.mErrorListener = new OnErrorListener() {
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                Log.d(ADCCustomVideoView.this.TAG, "Error: " + i + "," + i2);
                ADCCustomVideoView.this.mCurrentState = -1;
                ADCCustomVideoView.this.mTargetState = -1;
                if (ADCCustomVideoView.this.mMediaController != null) {
                    ADCCustomVideoView.this.mMediaController.hide();
                }
                if ((ADCCustomVideoView.this.mOnErrorListener == null || !ADCCustomVideoView.this.mOnErrorListener.onError(ADCCustomVideoView.this.mMediaPlayer, i, i2)) && ADCCustomVideoView.this.getWindowToken() != null) {
                    ADCCustomVideoView.this.activity().getResources();
                    new Builder(ADCCustomVideoView.this.activity()).setTitle("ERROR").setMessage(i == 200 ? "Invalid progressive playback" : "Unknown error").setPositiveButton("OKAY", new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            if (AnonymousClass_4.this.this$0.mOnCompletionListener != null) {
                                AnonymousClass_4.this.this$0.mOnCompletionListener.onCompletion(AnonymousClass_4.this.this$0.mMediaPlayer);
                            }
                        }
                    }).setCancelable(false).show();
                }
                return true;
            }
        };
        this.mBufferingUpdateListener = new OnBufferingUpdateListener() {
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                ADCCustomVideoView.this.mCurrentBufferPercentage = i;
            }
        };
        this.mSHCallback = new Callback() {
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                boolean z = STATE_PREPARING;
                ADCCustomVideoView.this.mSurfaceWidth = i2;
                ADCCustomVideoView.this.mSurfaceHeight = i3;
                int i4 = ADCCustomVideoView.this.mTargetState == 3;
                if (!(ADCCustomVideoView.this.mVideoWidth == i2 && ADCCustomVideoView.this.mVideoHeight == i3)) {
                    z = false;
                }
                if (ADCCustomVideoView.this.mMediaPlayer != null && i4 != 0 && i != 0) {
                    if (ADCCustomVideoView.this.mSeekWhenPrepared != 0) {
                        ADCCustomVideoView.this.seekTo(ADCCustomVideoView.this.mSeekWhenPrepared);
                    }
                    ADCCustomVideoView.this.start();
                    if (ADCCustomVideoView.this.mMediaController != null) {
                        ADCCustomVideoView.this.mMediaController.show();
                    }
                }
            }

            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                ADCCustomVideoView.this.mSurfaceHolder = surfaceHolder;
                if (ADCCustomVideoView.this.mMediaPlayer != null && ADCCustomVideoView.this.mCurrentState == 6 && ADCCustomVideoView.this.mTargetState == 7) {
                    ADCCustomVideoView.this.mMediaPlayer.setDisplay(ADCCustomVideoView.this.mSurfaceHolder);
                    ADCCustomVideoView.this.resume();
                } else {
                    ADCCustomVideoView.this.openVideo();
                }
            }

            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                ADCCustomVideoView.this.mSurfaceHolder = null;
                if (ADCCustomVideoView.this.mMediaController != null) {
                    ADCCustomVideoView.this.mMediaController.hide();
                }
                if (ADCCustomVideoView.this.mCurrentState != 6) {
                    ADCCustomVideoView.this.release(true);
                }
            }
        };
        initVideoView();
    }

    public ADCCustomVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        initVideoView();
    }

    public ADCCustomVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = "ADCCustomVideoView";
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mSurfaceHolder = null;
        this.mMediaPlayer = null;
        this.mSizeChangedListener = new OnVideoSizeChangedListener() {
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                ADCCustomVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                ADCCustomVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                if (ADCCustomVideoView.this.mVideoWidth != 0 && ADCCustomVideoView.this.mVideoHeight != 0) {
                    ADCCustomVideoView.this.getHolder().setFixedSize(ADCCustomVideoView.this.mVideoWidth, ADCCustomVideoView.this.mVideoHeight);
                }
            }
        };
        this.mPreparedListener = new OnPreparedListener() {
            public void onPrepared(MediaPlayer mediaPlayer) {
                ADCCustomVideoView.this.mCurrentState = 2;
                ADCCustomVideoView aDCCustomVideoView = ADCCustomVideoView.this;
                ADCCustomVideoView aDCCustomVideoView2 = ADCCustomVideoView.this;
                ADCCustomVideoView.this.mCanSeekForward = true;
                aDCCustomVideoView2.mCanSeekBack = true;
                aDCCustomVideoView.mCanPause = true;
                if (ADCCustomVideoView.this.mOnPreparedListener != null) {
                    ADCCustomVideoView.this.mOnPreparedListener.onPrepared(ADCCustomVideoView.this.mMediaPlayer);
                }
                if (ADCCustomVideoView.this.mMediaController != null) {
                    ADCCustomVideoView.this.mMediaController.setEnabled(true);
                }
                ADCCustomVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                ADCCustomVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                int i = ADCCustomVideoView.this.mSeekWhenPrepared;
                if (i != 0) {
                    ADCCustomVideoView.this.seekTo(i);
                }
                if (ADCCustomVideoView.this.mVideoWidth != 0 && ADCCustomVideoView.this.mVideoHeight != 0) {
                    ADCCustomVideoView.this.getHolder().setFixedSize(ADCCustomVideoView.this.mVideoWidth, ADCCustomVideoView.this.mVideoHeight);
                    if (ADCCustomVideoView.this.mSurfaceWidth != ADCCustomVideoView.this.mVideoWidth || ADCCustomVideoView.this.mSurfaceHeight != ADCCustomVideoView.this.mVideoHeight) {
                        return;
                    }
                    if (ADCCustomVideoView.this.mTargetState == 3) {
                        ADCCustomVideoView.this.start();
                        if (ADCCustomVideoView.this.mMediaController != null) {
                            ADCCustomVideoView.this.mMediaController.show();
                        }
                    } else if (!ADCCustomVideoView.this.isPlaying()) {
                        if ((i != 0 || ADCCustomVideoView.this.getCurrentPosition() > 0) && ADCCustomVideoView.this.mMediaController != null) {
                            ADCCustomVideoView.this.mMediaController.show(STATE_IDLE);
                        }
                    }
                } else if (ADCCustomVideoView.this.mTargetState == 3) {
                    ADCCustomVideoView.this.start();
                }
            }
        };
        this.mCompletionListener = new OnCompletionListener() {
            public void onCompletion(MediaPlayer mediaPlayer) {
                ADCCustomVideoView.this.mCurrentState = 5;
                ADCCustomVideoView.this.mTargetState = 5;
                if (ADCCustomVideoView.this.mMediaController != null) {
                    ADCCustomVideoView.this.mMediaController.hide();
                }
                if (ADCCustomVideoView.this.mOnCompletionListener != null) {
                    ADCCustomVideoView.this.mOnCompletionListener.onCompletion(ADCCustomVideoView.this.mMediaPlayer);
                }
            }
        };
        this.mErrorListener = new OnErrorListener() {
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                Log.d(ADCCustomVideoView.this.TAG, "Error: " + i + "," + i2);
                ADCCustomVideoView.this.mCurrentState = -1;
                ADCCustomVideoView.this.mTargetState = -1;
                if (ADCCustomVideoView.this.mMediaController != null) {
                    ADCCustomVideoView.this.mMediaController.hide();
                }
                if ((ADCCustomVideoView.this.mOnErrorListener == null || !ADCCustomVideoView.this.mOnErrorListener.onError(ADCCustomVideoView.this.mMediaPlayer, i, i2)) && ADCCustomVideoView.this.getWindowToken() != null) {
                    ADCCustomVideoView.this.activity().getResources();
                    new Builder(ADCCustomVideoView.this.activity()).setTitle("ERROR").setMessage(i == 200 ? "Invalid progressive playback" : "Unknown error").setPositiveButton("OKAY", new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            if (AnonymousClass_4.this.this$0.mOnCompletionListener != null) {
                                AnonymousClass_4.this.this$0.mOnCompletionListener.onCompletion(AnonymousClass_4.this.this$0.mMediaPlayer);
                            }
                        }
                    }).setCancelable(false).show();
                }
                return true;
            }
        };
        this.mBufferingUpdateListener = new OnBufferingUpdateListener() {
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                ADCCustomVideoView.this.mCurrentBufferPercentage = i;
            }
        };
        this.mSHCallback = new Callback() {
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                boolean z = STATE_PREPARING;
                ADCCustomVideoView.this.mSurfaceWidth = i2;
                ADCCustomVideoView.this.mSurfaceHeight = i3;
                int i4 = ADCCustomVideoView.this.mTargetState == 3;
                if (!(ADCCustomVideoView.this.mVideoWidth == i2 && ADCCustomVideoView.this.mVideoHeight == i3)) {
                    z = false;
                }
                if (ADCCustomVideoView.this.mMediaPlayer != null && i4 != 0 && i != 0) {
                    if (ADCCustomVideoView.this.mSeekWhenPrepared != 0) {
                        ADCCustomVideoView.this.seekTo(ADCCustomVideoView.this.mSeekWhenPrepared);
                    }
                    ADCCustomVideoView.this.start();
                    if (ADCCustomVideoView.this.mMediaController != null) {
                        ADCCustomVideoView.this.mMediaController.show();
                    }
                }
            }

            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                ADCCustomVideoView.this.mSurfaceHolder = surfaceHolder;
                if (ADCCustomVideoView.this.mMediaPlayer != null && ADCCustomVideoView.this.mCurrentState == 6 && ADCCustomVideoView.this.mTargetState == 7) {
                    ADCCustomVideoView.this.mMediaPlayer.setDisplay(ADCCustomVideoView.this.mSurfaceHolder);
                    ADCCustomVideoView.this.resume();
                } else {
                    ADCCustomVideoView.this.openVideo();
                }
            }

            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                ADCCustomVideoView.this.mSurfaceHolder = null;
                if (ADCCustomVideoView.this.mMediaController != null) {
                    ADCCustomVideoView.this.mMediaController.hide();
                }
                if (ADCCustomVideoView.this.mCurrentState != 6) {
                    ADCCustomVideoView.this.release(true);
                }
            }
        };
        initVideoView();
    }

    private void attachMediaController() {
        if (this.mMediaPlayer != null && this.mMediaController != null) {
            this.mMediaController.setMediaPlayer(this);
            this.mMediaController.setAnchorView(getParent() instanceof View ? (View) getParent() : this);
            this.mMediaController.setEnabled(isInPlaybackState());
        }
    }

    private void initVideoView() {
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        getHolder().addCallback(this.mSHCallback);
        getHolder().setType(STATE_PLAYING);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.mCurrentState = 0;
        this.mTargetState = 0;
    }

    private boolean isInPlaybackState() {
        return this.mMediaPlayer != null && this.mCurrentState != -1 && this.mCurrentState != 0 && this.mCurrentState != 1;
    }

    private void openVideo() {
        Throwable th;
        if ((this.mUri != null || this.fd != null) && this.mSurfaceHolder != null) {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra(MediaService.COMMAND, EventType.PAUSE);
            activity().sendBroadcast(intent);
            release(false);
            try {
                this.mMediaPlayer = new MediaPlayer();
                this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
                this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
                this.mDuration = -1;
                this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
                this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
                this.mMediaPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
                this.mCurrentBufferPercentage = 0;
                if (this.mUri != null) {
                    this.mMediaPlayer.setDataSource(activity(), this.mUri);
                } else {
                    this.mMediaPlayer.setDataSource(this.fd);
                }
                this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
                this.mMediaPlayer.setAudioStreamType(STATE_PLAYING);
                this.mMediaPlayer.setScreenOnWhilePlaying(true);
                this.mMediaPlayer.prepare();
                this.mCurrentState = 1;
                attachMediaController();
            } catch (IOException e) {
                th = e;
                if (this.mUri != null) {
                    Log.w(this.TAG, "Unable to open content: " + this.mUri, th);
                } else {
                    Log.w(this.TAG, "Unable to open content");
                }
                this.mCurrentState = -1;
                this.mTargetState = -1;
                this.mErrorListener.onError(this.mMediaPlayer, STATE_PREPARING, STATE_IDLE);
            } catch (IllegalArgumentException e2) {
                th = e2;
                if (this.mUri != null) {
                    Log.w(this.TAG, "Unable to open content: " + this.mUri, th);
                } else {
                    Log.w(this.TAG, "Unable to open content");
                }
                this.mCurrentState = -1;
                this.mTargetState = -1;
                this.mErrorListener.onError(this.mMediaPlayer, STATE_PREPARING, STATE_IDLE);
            }
        }
    }

    private void release(boolean z) {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            if (z) {
                this.mTargetState = 0;
            }
        }
    }

    private void toggleMediaControlsVisiblity() {
        if (this.mMediaController.isShowing()) {
            this.mMediaController.hide();
        } else {
            this.mMediaController.show();
        }
    }

    Activity activity() {
        return AdColony.activity();
    }

    public boolean canPause() {
        return this.mCanPause;
    }

    public boolean canSeekBackward() {
        return this.mCanSeekBack;
    }

    public boolean canSeekForward() {
        return this.mCanSeekForward;
    }

    public int getAudioSessionId() {
        return STATE_IDLE;
    }

    public int getBufferPercentage() {
        return this.mMediaPlayer != null ? this.mCurrentBufferPercentage : STATE_IDLE;
    }

    public int getCurrentPosition() {
        return isInPlaybackState() ? this.mMediaPlayer.getCurrentPosition() : STATE_IDLE;
    }

    public int getDuration() {
        if (!isInPlaybackState()) {
            this.mDuration = -1;
            return this.mDuration;
        } else if (this.mDuration > 0) {
            return this.mDuration;
        } else {
            this.mDuration = this.mMediaPlayer.getDuration();
            return this.mDuration;
        }
    }

    public boolean isPlaying() {
        return isInPlaybackState() && this.mMediaPlayer.isPlaying();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int i2 = (i == 4 || i == 24 || i == 25 || i == 82 || i == 5 || i == 6) ? STATE_IDLE : true;
        if (isInPlaybackState() && i2 != 0 && this.mMediaController != null && (i != 79 && i != 85)) {
            if (i == 86 && this.mMediaPlayer.isPlaying()) {
                pause();
                this.mMediaController.show();
            } else {
                toggleMediaControlsVisiblity();
            }
            return super.onKeyDown(i, keyEvent);
        } else if (this.mMediaPlayer.isPlaying()) {
            pause();
            this.mMediaController.show();
            return true;
        } else {
            start();
            this.mMediaController.hide();
            return true;
        }
    }

    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.mVideoWidth, i);
        int defaultSize2 = getDefaultSize(this.mVideoHeight, i2);
        if (this.mVideoWidth > 0 && this.mVideoHeight > 0) {
            if (this.mVideoWidth * defaultSize2 > this.mVideoHeight * defaultSize) {
                defaultSize2 = (this.mVideoHeight * defaultSize) / this.mVideoWidth;
            } else if (this.mVideoWidth * defaultSize2 < this.mVideoHeight * defaultSize) {
                defaultSize = (this.mVideoWidth * defaultSize2) / this.mVideoHeight;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isInPlaybackState() && this.mMediaController != null) {
            toggleMediaControlsVisiblity();
        }
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (isInPlaybackState() && this.mMediaController != null) {
            toggleMediaControlsVisiblity();
        }
        return false;
    }

    public void pause() {
        if (isInPlaybackState() && this.mMediaPlayer.isPlaying()) {
            this.mMediaPlayer.pause();
            this.mCurrentState = 4;
        }
        this.mTargetState = 4;
    }

    public int resolveAdjustedSize(int i, int i2) {
        int mode = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i2);
        switch (mode) {
            case ExploreByTouchHelper.INVALID_ID:
                return Math.min(i, size);
            case 1073741824:
                return size;
            default:
                return i;
        }
    }

    public void resume() {
        if (this.mSurfaceHolder == null && this.mCurrentState == 6) {
            this.mTargetState = 7;
        } else if (this.mMediaPlayer != null && this.mCurrentState == 6) {
            this.mMediaPlayer.start();
            this.mCurrentState = this.mStateWhenSuspended;
            this.mTargetState = this.mStateWhenSuspended;
        } else if (this.mCurrentState == 8) {
            openVideo();
        }
    }

    public void seekTo(int i) {
        if (isInPlaybackState()) {
            this.mMediaPlayer.seekTo(i);
            this.mSeekWhenPrepared = 0;
        } else {
            this.mSeekWhenPrepared = i;
        }
    }

    public void setMediaController(MediaController mediaController) {
        if (this.mMediaController != null) {
            this.mMediaController.hide();
        }
        this.mMediaController = mediaController;
        attachMediaController();
    }

    public void setOnCompletionListener(OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnPreparedListener(OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setVideoPath(FileDescriptor fileDescriptor) {
        this.fd = fileDescriptor;
        this.mSeekWhenPrepared = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) {
        this.mUri = uri;
        this.mSeekWhenPrepared = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    public void start() {
        if (isInPlaybackState()) {
            this.mMediaPlayer.start();
            this.mCurrentState = 3;
        }
        this.mTargetState = 3;
    }

    public void stopPlayback() {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.stop();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            this.mTargetState = 0;
        }
    }

    public void suspend() {
        if (isInPlaybackState()) {
            this.mMediaPlayer.stop();
            this.mStateWhenSuspended = this.mCurrentState;
            this.mCurrentState = 6;
            this.mTargetState = 6;
        }
    }
}