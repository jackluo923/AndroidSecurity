package com.amazon.device.ads;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.net.Uri;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.MediaController;
import android.widget.VideoView;
import com.amazon.device.ads.Controller.PlayerProperties;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

final class AdVideoPlayer implements OnCompletionListener, OnErrorListener {
    private static String a;
    private PlayerProperties b;
    private AudioManager c;
    private AdVideoPlayerListener d;
    private String e;
    private int f;
    private boolean g;
    private Context h;
    private VideoView i;
    private LayoutParams j;
    private ViewGroup k;

    public static interface AdVideoPlayerListener {
        void onComplete();

        void onError();
    }

    static {
        a = "AdVideoPlayer";
    }

    public AdVideoPlayer(Context context) {
        this.g = false;
        this.i = null;
        this.j = null;
        this.k = null;
        this.h = context;
        this.b = new PlayerProperties();
        this.c = (AudioManager) this.h.getSystemService("audio");
    }

    private void a() {
        VideoView videoView = new VideoView(this.h);
        videoView.setOnCompletionListener(this);
        videoView.setOnErrorListener(this);
        videoView.setLayoutParams(this.j);
        this.i = videoView;
        this.k.addView(this.i);
    }

    private void b() {
        this.i.setVideoURI(Uri.parse(this.e));
    }

    private void c() {
        Log.d(a, "in displayPlayerControls");
        if (this.b.showControl()) {
            MediaController mediaController = new MediaController(this.h);
            this.i.setMediaController(mediaController);
            mediaController.setAnchorView(this.i);
            mediaController.requestFocus();
        }
    }

    private void d() {
        Log.d(a, "in removePlayerFromParent");
        this.k.removeView(this.i);
    }

    public void mutePlayer() {
        Log.d(a, "in mutePlayer");
        this.f = this.c.getStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        this.c.setStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, 0, GoogleScorer.CLIENT_APPSTATE);
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        if (this.b.doLoop()) {
            this.i.start();
        } else if (this.b.exitOnComplete() || this.b.inline) {
            releasePlayer();
            if (this.d != null) {
                this.d.onComplete();
            }
        }
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        d();
        if (this.d != null) {
            this.d.onError();
        }
        return false;
    }

    public void playAudio() {
        Log.d(a, "in playAudio");
        b();
    }

    public void playVideo() {
        Log.d(a, "in playVideo");
        if (this.b.doMute()) {
            mutePlayer();
        }
        a();
        b();
        startPlaying();
    }

    public void releasePlayer() {
        Log.d(a, "in releasePlayer");
        if (!this.g) {
            this.g = true;
            this.i.stopPlayback();
            d();
            if (this.b.doMute()) {
                unmutePlayer();
            }
        }
    }

    public void setLayoutParams(LayoutParams layoutParams) {
        this.j = layoutParams;
    }

    public void setListener(AdVideoPlayerListener adVideoPlayerListener) {
        this.d = adVideoPlayerListener;
    }

    public void setPlayData(PlayerProperties playerProperties, String str) {
        this.g = false;
        if (playerProperties != null) {
            this.b = playerProperties;
        }
        this.e = str;
    }

    public void setViewGroup(ViewGroup viewGroup) {
        this.k = viewGroup;
    }

    public void startPlaying() {
        Log.d(a, "in startPlaying");
        c();
        if (this.b.isAutoPlay()) {
            this.i.start();
        }
    }

    public void unmutePlayer() {
        Log.d(a, "in unmutePlayer");
        this.c.setStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.f, GoogleScorer.CLIENT_APPSTATE);
    }
}