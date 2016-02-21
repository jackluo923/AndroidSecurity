package com.zeptolab.ctr;

import android.app.Activity;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.VideoView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.ads.R.id;
import com.zeptolab.ctr.ads.R.layout;
import com.zeptolab.ctr.ads.R.raw;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZR;

public class CtrVideoActivity extends Activity implements OnCompletionListener, OnErrorListener, OnPreparedListener, OnTouchListener {
    private boolean mute;
    private VideoView videoView;

    public void onCompletion(MediaPlayer mediaPlayer) {
        finish();
    }

    public void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        requestWindowFeature(1);
        layout com_zeptolab_ctr_ads_R_layout = ZR.layout;
        View inflate = View.inflate(this, R.layout.video_view, null);
        id idVar = ZR.id;
        this.videoView = (VideoView) inflate.findViewById(R.id.video_player);
        this.videoView.setOnCompletionListener(this);
        this.videoView.setOnTouchListener(this);
        this.videoView.setOnPreparedListener(this);
        this.videoView.setOnErrorListener(this);
        this.videoView.requestFocus();
        setContentView(inflate);
        this.mute = getIntent().getBooleanExtra("mute", false);
        raw com_zeptolab_ctr_ads_R_raw;
        if (getIntent().getStringExtra("path").equals("intro.mp4")) {
            com_zeptolab_ctr_ads_R_raw = ZR.raw;
            i = R.raw.intro;
        } else {
            com_zeptolab_ctr_ads_R_raw = ZR.raw;
            i = R.raw.outro;
        }
        this.videoView.setVideoURI(Uri.parse("android.resource://" + getPackageName() + "/" + i));
        this.videoView.start();
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        L.i("VideoPlayer", "Video decoding error. Maybe codec not found. Code: " + i + ", Extra: " + i2);
        finish();
        return true;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case GoogleScorer.CLIENT_APPSTATE:
                finish();
                return true;
            default:
                return super.onKeyDown(i, keyEvent);
        }
    }

    public void onPause() {
        this.videoView.pause();
        super.onPause();
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        if (this.mute) {
            mediaPlayer.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void onResume() {
        super.onResume();
        this.videoView.start();
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        finish();
        return true;
    }
}