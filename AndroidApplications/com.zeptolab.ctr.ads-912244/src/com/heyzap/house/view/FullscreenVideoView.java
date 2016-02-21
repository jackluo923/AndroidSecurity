package com.heyzap.house.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.admarvel.android.ads.Constants;
import com.heyzap.house.impl.AbstractActivity.AdActionListener;
import com.heyzap.house.model.VideoModel;
import com.heyzap.house.view.VideoControlView.OnActionListener;
import com.heyzap.internal.Logger;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.File;
import java.io.FileInputStream;
import java.util.Timer;

public class FullscreenVideoView extends FrameLayout {
    public Boolean allowClick;
    public Boolean allowHide;
    public Boolean allowSkip;
    public int bufferProgress;
    private Context context;
    private VideoControlView controlView;
    private AdActionListener listener;
    public ProgressDialog loadingSpinner;
    private MediaPlayer mediaPlayer;
    private a mpListener;
    private int playbackDuration;
    public Timer playbackTimer;
    private int totalDuration;
    public SurfaceView videoSurface;
    public Integer waitMillisBeforeSkipShow;

    private class a implements OnBufferingUpdateListener, OnCompletionListener, OnErrorListener, OnPreparedListener, OnVideoSizeChangedListener {
        private a() {
        }

        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
            FullscreenVideoView.this.bufferProgress = i;
        }

        public void onCompletion(MediaPlayer mediaPlayer) {
            FullscreenVideoView.this.playbackTimer.cancel();
            FullscreenVideoView.this.playbackTimer.purge();
            if (FullscreenVideoView.this.listener != null) {
                FullscreenVideoView.this.listener.completed();
            }
        }

        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            String str;
            String str2;
            if (FullscreenVideoView.this.loadingSpinner != null) {
                FullscreenVideoView.this.loadingSpinner.dismiss();
                FullscreenVideoView.this.loadingSpinner = null;
            }
            FullscreenVideoView.this.playbackTimer.cancel();
            FullscreenVideoView.this.playbackTimer.purge();
            switch (i) {
                case MMException.UNKNOWN_ERROR:
                    str = "Server Died.";
                    break;
                default:
                    str = "Unknown";
                    break;
            }
            switch (i2) {
                case IabHelper.IABHELPER_INVALID_CONSUMPTION:
                    str2 = "Unsupported.";
                    break;
                case IabHelper.IABHELPER_MISSING_TOKEN:
                    str2 = "Malformed.";
                    break;
                case IabHelper.IABHELPER_SEND_INTENT_FAILED:
                    str2 = "Error IO.";
                    break;
                case -110:
                    str2 = "Timed Out.";
                    break;
                case AdException.INTERNAL_ERROR:
                    str2 = "Not Valid for Progressive Playback.";
                    break;
                default:
                    str2 = "Unknown.";
                    break;
            }
            Logger.log("MediaPlayer Error! What: " + str + " Extra: " + str2);
            if (FullscreenVideoView.this.listener != null) {
                FullscreenVideoView.this.listener.error();
            }
            return true;
        }

        public void onPrepared(MediaPlayer mediaPlayer) {
            if (FullscreenVideoView.this.loadingSpinner != null && FullscreenVideoView.this.loadingSpinner.isShowing()) {
                FullscreenVideoView.this.loadingSpinner.dismiss();
            }
            FullscreenVideoView.this.onVideoStart();
        }

        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            FullscreenVideoView.this.onVideoSizeChanged(i, i2);
        }
    }

    private class b implements OnActionListener {
        private b() {
        }

        public void onClick() {
            if (FullscreenVideoView.this.allowClick.booleanValue()) {
                if (FullscreenVideoView.this.mediaPlayer != null) {
                    FullscreenVideoView.this.mediaPlayer.pause();
                }
                if (FullscreenVideoView.this.listener != null) {
                    FullscreenVideoView.this.listener.click();
                }
            }
        }

        public void onHide() {
            if (FullscreenVideoView.this.listener == null) {
                return;
            }
            if (FullscreenVideoView.this.mediaPlayer.isPlaying()) {
                int currentPosition = FullscreenVideoView.this.mediaPlayer.getCurrentPosition();
                if (currentPosition > FullscreenVideoView.this.playbackDuration) {
                    FullscreenVideoView.this.playbackDuration = currentPosition;
                }
                FullscreenVideoView.this.mediaPlayer.pause();
                FullscreenVideoView.this.listener.hide();
            } else {
                FullscreenVideoView.this.listener.hide();
            }
        }

        public void onSkip() {
            onHide();
        }
    }

    private class c implements Callback {
        private c() {
        }

        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            try {
                FullscreenVideoView.this.mediaPlayer.start();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            try {
                FullscreenVideoView.this.mediaPlayer.setDisplay(surfaceHolder);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            try {
                if (FullscreenVideoView.this.mediaPlayer != null && FullscreenVideoView.this.mediaPlayer.isPlaying()) {
                    FullscreenVideoView.this.mediaPlayer.pause();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public FullscreenVideoView(Context context, VideoModel videoModel, AdActionListener adActionListener) {
        super(context);
        this.allowSkip = Boolean.valueOf(false);
        this.allowHide = Boolean.valueOf(true);
        this.allowClick = Boolean.valueOf(true);
        this.waitMillisBeforeSkipShow = Integer.valueOf(1);
        this.bufferProgress = 0;
        this.totalDuration = 0;
        this.playbackDuration = 0;
        this.context = context;
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.listener = adActionListener;
        this.playbackTimer = new Timer();
        this.mediaPlayer = new MediaPlayer();
        this.mpListener = new a(null);
        this.mediaPlayer.setOnBufferingUpdateListener(this.mpListener);
        this.mediaPlayer.setOnCompletionListener(this.mpListener);
        this.mediaPlayer.setOnErrorListener(this.mpListener);
        this.mediaPlayer.setOnPreparedListener(this.mpListener);
        this.mediaPlayer.setOnVideoSizeChangedListener(this.mpListener);
        this.mediaPlayer.setScreenOnWhilePlaying(true);
        setBackgroundColor(0);
        this.videoSurface = new SurfaceView(context);
        if (VERSION.SDK_INT < 11) {
            this.videoSurface.getHolder().setType(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        }
        this.videoSurface.getHolder().addCallback(new c(null));
        this.videoSurface.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.videoSurface, layoutParams);
        this.controlView = new VideoControlView(getContext(), videoModel);
        this.controlView.setOnActionListener(new b(null));
        addView(this.controlView, new FrameLayout.LayoutParams(-1, -1));
        showControls();
    }

    public void clear() {
        if (this.playbackTimer != null) {
            this.playbackTimer.cancel();
            this.playbackTimer.purge();
        }
        if (this.mediaPlayer != null) {
            this.mediaPlayer.reset();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
    }

    public int getPlaybackDuration() {
        return this.playbackDuration;
    }

    public int getTotalVideoDuration() {
        return this.totalDuration;
    }

    public void hide(Boolean bool) {
        if (this.playbackTimer != null) {
            this.playbackTimer.cancel();
            this.playbackTimer.purge();
        }
        if (this.mediaPlayer != null && this.mediaPlayer.isPlaying()) {
            this.mediaPlayer.stop();
            this.mediaPlayer.reset();
        }
        clear();
        if (bool.booleanValue() && this.listener != null) {
            this.listener.hide();
        }
    }

    @SuppressLint({"NewApi"})
    public void hideControls() {
        this.controlView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
    }

    public Boolean isReady() {
        return Boolean.valueOf(false);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.mediaPlayer == null || !this.mediaPlayer.isPlaying()) {
            hide(Boolean.valueOf(true));
        }
        if (this.allowSkip.booleanValue() && this.mediaPlayer != null && this.mediaPlayer.isPlaying()) {
            if (this.waitMillisBeforeSkipShow.intValue() != 0 && (this.waitMillisBeforeSkipShow.intValue() <= 0 || this.mediaPlayer.getCurrentPosition() <= this.waitMillisBeforeSkipShow.intValue())) {
                return true;
            }
            hide(Boolean.valueOf(true));
            return true;
        } else if (!this.allowHide.booleanValue()) {
            return true;
        } else {
            hide(Boolean.valueOf(true));
            return true;
        }
    }

    public void onVideoSizeChanged(int i, int i2) {
        int i3 = -1;
        int width = ((Activity) getContext()).getWindowManager().getDefaultDisplay().getWidth();
        int height = ((Activity) getContext()).getWindowManager().getDefaultDisplay().getHeight();
        int videoHeight = this.mediaPlayer.getVideoHeight();
        int videoWidth = this.mediaPlayer.getVideoWidth();
        Float valueOf = Float.valueOf(((float) this.mediaPlayer.getVideoWidth()) / ((float) this.mediaPlayer.getVideoHeight()));
        if (videoWidth <= videoHeight || ((double) valueOf.floatValue()) <= 1.6d) {
            width = -1;
            i3 = (int) (((float) height) * (((float) i) / ((float) i2)));
        } else {
            width = (int) ((((float) i2) / ((float) i)) * ((float) width));
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.videoSurface.getLayoutParams();
        layoutParams.width = i3;
        layoutParams.height = width;
        this.videoSurface.setLayoutParams(layoutParams);
        this.controlView.setLayoutParams(layoutParams);
    }

    @SuppressLint({"NewApi"})
    public void onVideoStart() {
        if (this.listener != null) {
            this.listener.show();
        }
        setBackgroundColor(-16777216);
        this.totalDuration = this.mediaPlayer.getDuration();
        this.videoSurface.setVisibility(0);
        if (this.playbackTimer != null) {
            this.playbackTimer.purge();
            this.playbackTimer = null;
        }
        this.playbackTimer = new Timer();
        this.playbackTimer.scheduleAtFixedRate(new a(this), 0, 100);
        if (this.allowSkip.booleanValue()) {
            if (this.waitMillisBeforeSkipShow.intValue() > 0) {
                this.controlView.addSkipButton(Boolean.valueOf(true), (long) this.waitMillisBeforeSkipShow.intValue());
            } else {
                this.controlView.addSkipButton(Boolean.valueOf(false), 0);
            }
        } else if (this.allowHide.booleanValue()) {
            this.controlView.addHideButton();
        }
    }

    public void onVideoTick() {
        if (this.mediaPlayer == null || this.mediaPlayer.isPlaying()) {
            this.controlView.updateScrubber(this.mediaPlayer.getDuration() - this.mediaPlayer.getCurrentPosition(), ((float) this.mediaPlayer.getCurrentPosition()) / ((float) this.mediaPlayer.getDuration()));
        }
    }

    public Boolean render(Uri uri) {
        try {
            this.loadingSpinner = ProgressDialog.show(getContext(), AdTrackerConstants.BLANK, "Loading...", true);
            this.mediaPlayer.setDataSource(this.context, uri);
            this.mediaPlayer.prepareAsync();
            return Boolean.valueOf(true);
        } catch (Exception e) {
            e.printStackTrace();
            return Boolean.valueOf(false);
        }
    }

    public Boolean render(VideoModel videoModel) {
        try {
            if (videoModel.shouldForceStreaming().booleanValue()) {
                return render(videoModel.getStreamingUri());
            }
            if (!videoModel.isFileCached().booleanValue() || videoModel.getCachedPath() == null) {
                throw new Exception(Constants.LOCAL);
            } else if (render(videoModel.getCachedPath()).booleanValue()) {
                return Boolean.valueOf(true);
            } else {
                throw new Exception("load");
            }
        } catch (Exception e) {
            exception = e;
            Exception exception2;
            if (!exception2.getMessage().equals(Constants.LOCAL)) {
                exception2.printStackTrace();
            }
            videoModel.cancelDownload();
            if (videoModel.shouldAllowFallbackToStreaming().booleanValue()) {
                Logger.log("Local file not found. Falling back to stream and cancelling download.");
                return render(videoModel.getStreamingUri());
            } else {
                Logger.log("Local file not found. No fallback to streaming.");
                throw new Exception("Local file not found. No fallback to streaming.");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (this.listener != null) {
                this.listener.error();
            }
            return Boolean.valueOf(false);
        }
    }

    public Boolean render(String str) {
        Boolean valueOf;
        Throwable th;
        FileInputStream fileInputStream = null;
        try {
            File file = new File(str);
            if (file.exists()) {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    this.mediaPlayer.setDataSource(fileInputStream2.getFD());
                    this.mediaPlayer.prepareAsync();
                    valueOf = Boolean.valueOf(true);
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e2) {
                    exception = e2;
                    fileInputStream = fileInputStream2;
                    exception.printStackTrace();
                    if (this.listener != null) {
                        this.listener.error();
                    }
                    valueOf = Boolean.valueOf(false);
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return valueOf;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
                return valueOf;
            } else {
                throw new Exception("File does not exist.");
            }
        } catch (Exception e3) {
            exception = e3;
            try {
                Exception exception2;
                exception2.printStackTrace();
                if (this.listener != null) {
                    this.listener.error();
                }
                valueOf = Boolean.valueOf(false);
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
            return valueOf;
        }
    }

    public void restart() {
        if (this.listener != null) {
            this.listener.show();
        }
        this.mediaPlayer.start();
    }

    public void show(VideoModel videoModel) {
        try {
            if (!render(videoModel).booleanValue()) {
                throw new Exception("No content to render or error.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            if (this.listener != null) {
                this.listener.error();
            }
        }
    }

    public void showControls() {
        Activity activity = (Activity) getContext();
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), 17432576);
        loadAnimation.setDuration(150);
        this.controlView.setVisibility(0);
        this.controlView.startAnimation(loadAnimation);
    }

    public void stop() {
        if (this.mediaPlayer != null) {
            this.mediaPlayer.pause();
        }
    }
}