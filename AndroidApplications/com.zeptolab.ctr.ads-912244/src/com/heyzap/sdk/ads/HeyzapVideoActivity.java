package com.heyzap.sdk.ads;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.heyzap.house.Manager;
import com.heyzap.house.impl.AbstractActivity;
import com.heyzap.house.impl.AbstractActivity.AdActionListener;
import com.heyzap.house.model.VideoModel;
import com.heyzap.house.view.FullscreenVideoView;
import com.heyzap.house.view.InterstitialWebView;
import com.heyzap.internal.Logger;
import com.heyzap.internal.Utils;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

public class HeyzapVideoActivity extends AbstractActivity {
    private static final int NO_SCREEN = 0;
    private static final int VIDEO_SCREEN = 2;
    private static final int WEBVIEW_SCREEN = 1;
    protected FrameLayout backgroundView;
    private int currentScreen;
    private Boolean prepared;
    protected Boolean startedVideo;
    protected FullscreenVideoView videoView;
    protected InterstitialWebView webView;

    private class a implements AdActionListener {
        private a() {
        }

        public void click() {
            HeyzapVideoActivity.this.onClick();
        }

        public void clickUrl(String str, String str2) {
            Logger.log(str);
        }

        public void completed() {
            Logger.log("(FINISH VIDEO)");
            HeyzapVideoActivity.this.onAudioFinished();
            HeyzapVideoActivity.this.startedVideo = Boolean.valueOf(false);
            HeyzapVideoActivity.this.currentAdComplete = Boolean.valueOf(true);
            if (((VideoModel) HeyzapVideoActivity.this.currentAd).showPostRollInterstitial().booleanValue()) {
                HeyzapVideoActivity.this.switchToView(WEBVIEW_SCREEN);
            }
        }

        public void error() {
            Logger.trace();
            HeyzapVideoActivity.this.onAudioFinished();
            HeyzapVideoActivity.this.startedVideo = Boolean.valueOf(false);
            if (!Utils.isApplicationOnTop(HeyzapVideoActivity.this)) {
                hide();
            } else if (((VideoModel) HeyzapVideoActivity.this.currentAd).showPostRollInterstitial().booleanValue()) {
                ((VideoModel) HeyzapVideoActivity.this.currentAd).onInterstitialFallback();
                HeyzapVideoActivity.this.switchToView(WEBVIEW_SCREEN);
            } else {
                HeyzapVideoActivity.this.onHide();
            }
        }

        public void hide() {
            Logger.log("(FINISH VIDEO)");
            HeyzapVideoActivity.this.onAudioFinished();
            HeyzapVideoActivity.this.startedVideo = Boolean.valueOf(false);
            if (((VideoModel) HeyzapVideoActivity.this.currentAd).showPostRollInterstitial().booleanValue()) {
                HeyzapVideoActivity.this.switchToView(WEBVIEW_SCREEN);
            } else {
                HeyzapVideoActivity.this.onHide();
            }
        }

        public void installHeyzap() {
        }

        public void restart() {
        }

        public void show() {
            Logger.log("(STARTING VIDEO)");
            HeyzapVideoActivity.this.startedVideo = Boolean.valueOf(true);
            HeyzapVideoActivity.this.onAudioStarted();
        }
    }

    private class b implements AdActionListener {
        private b() {
        }

        public void click() {
            HeyzapVideoActivity.this.onClick();
        }

        public void clickUrl(String str, String str2) {
            HeyzapVideoActivity.this.onClick(str, str2);
        }

        public void completed() {
        }

        public void error() {
        }

        public void hide() {
            HeyzapVideoActivity.this.onHide();
        }

        public void installHeyzap() {
            Manager.getInstance().installHeyzap(HeyzapVideoActivity.this.currentAd);
        }

        public void restart() {
            HeyzapVideoActivity.this.switchToView(VIDEO_SCREEN);
            HeyzapVideoActivity.this.videoView.restart();
        }

        public void show() {
        }
    }

    public HeyzapVideoActivity() {
        this.startedVideo = Boolean.valueOf(false);
        this.prepared = Boolean.valueOf(false);
        this.currentScreen = 0;
    }

    private void onAudioFinished() {
        if (this.startedVideo.booleanValue()) {
            Manager.getInstance().getOnStatusListener(Integer.valueOf(this.currentAdUnit)).onAudioFinished();
        }
    }

    private void onAudioStarted() {
        if (this.startedVideo.booleanValue()) {
            Manager.getInstance().getOnStatusListener(Integer.valueOf(this.currentAdUnit)).onAudioStarted();
        }
    }

    public View getContentView() {
        this.backgroundView.setLayoutParams(new LayoutParams(-1, -1));
        return this.backgroundView;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Utils.getSdkVersion() >= 9) {
            super.setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ERROR);
        } else {
            super.setRequestedOrientation(NO_SCREEN);
        }
    }

    public void onHide() {
        Boolean valueOf = Boolean.valueOf(this.currentAdUnit == 2);
        if (this.videoView != null) {
            ((VideoModel) this.currentAd).onComplete(this, this.videoView.getPlaybackDuration(), this.videoView.getTotalVideoDuration(), this.currentAdComplete);
        }
        if (valueOf.booleanValue()) {
            if (this.currentAdComplete.booleanValue()) {
                Manager.getInstance().getOnIncentiveListener().onComplete(this.currentAdTag);
            } else {
                Manager.getInstance().getOnIncentiveListener().onIncomplete(this.currentAdTag);
            }
        }
        super.onHide();
        if (this.webView != null) {
            this.webView.clear();
        }
        if (this.videoView != null) {
            this.videoView.clear();
        }
    }

    protected void onPause() {
        super.onPause();
        if (this.videoView != null) {
            this.videoView.stop();
        }
    }

    public Boolean onPrepared() {
        return this.prepared;
    }

    public void onRestart() {
        super.onRestart();
        if (VERSION.SDK_INT < 11 && this.currentScreen == 2) {
            if (((VideoModel) this.currentAd).showPostRollInterstitial().booleanValue()) {
                switchToView(WEBVIEW_SCREEN);
            } else {
                onHide();
            }
        }
    }

    public void prepare() {
        VideoModel videoModel = (VideoModel) this.currentAd;
        this.backgroundView = new FrameLayout(this);
        this.backgroundView.setBackgroundColor(NO_SCREEN);
        this.webView = new InterstitialWebView(this, new b(null));
        this.webView.render((VideoModel) this.currentAd);
        if (videoModel.isFileCached().booleanValue() || videoModel.shouldAllowFallbackToStreaming().booleanValue() || videoModel.shouldForceStreaming().booleanValue()) {
            this.videoView = new FullscreenVideoView(this, (VideoModel) this.currentAd, new a(null));
            this.videoView.allowHide = ((VideoModel) this.currentAd).allowHide();
            this.videoView.allowSkip = ((VideoModel) this.currentAd).allowSkip();
            this.videoView.allowClick = ((VideoModel) this.currentAd).allowClick();
            this.videoView.waitMillisBeforeSkipShow = Integer.valueOf(((VideoModel) this.currentAd).getSkipLockoutTime());
            Logger.log(videoModel.getCachedPath());
            this.videoView.render(videoModel);
            this.backgroundView.addView(this.videoView, new LayoutParams(-1, -1));
            this.currentScreen = 2;
        } else if (videoModel.showPostRollInterstitial().booleanValue()) {
            Logger.log("(INTERSTITIAL FALLBACK)");
            videoModel.onInterstitialFallback();
            this.backgroundView.addView(this.webView, new LayoutParams(-1, -1));
            this.currentScreen = 1;
        }
        this.prepared = Boolean.valueOf(true);
    }

    protected void switchToView(int i) {
        View view = null;
        if (i != this.currentScreen) {
            View view2;
            Animation loadAnimation = AnimationUtils.loadAnimation(this, 17432576);
            AnimationUtils.loadAnimation(this, 17432577);
            switch (this.currentScreen) {
                case WEBVIEW_SCREEN:
                    view2 = this.webView;
                    break;
                case VIDEO_SCREEN:
                    view2 = this.videoView;
                    break;
                default:
                    view2 = null;
                    break;
            }
            switch (i) {
                case WEBVIEW_SCREEN:
                    view = this.webView;
                    view.invalidate();
                    break;
                case VIDEO_SCREEN:
                    view = this.videoView;
                    break;
            }
            if (view2 != null && view != null) {
                this.backgroundView.addView(view, new LayoutParams(-1, -1));
                view.startAnimation(loadAnimation);
                this.backgroundView.removeView(view2);
                this.currentScreen = i;
            }
        }
    }
}