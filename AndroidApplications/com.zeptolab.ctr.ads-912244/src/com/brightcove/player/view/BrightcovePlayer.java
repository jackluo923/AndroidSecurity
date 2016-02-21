package com.brightcove.player.view;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.ViewGroup;
import android.view.WindowManager.LayoutParams;
import android.widget.MediaController;
import com.brightcove.player.event.EventEmitter;

public class BrightcovePlayer extends Activity {
    protected static final String POSITION = "position";
    public static final String TAG;
    protected BrightcoveVideoView brightcoveVideoView;
    private int originalLayoutParamsHeight;
    private int originalLayoutParamsWidth;
    private int position;
    private boolean wasPlaying;

    static {
        TAG = BrightcovePlayer.class.getSimpleName();
    }

    @SuppressLint({"NewApi"})
    public void fullScreen() {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.hide();
        }
        LayoutParams attributes = getWindow().getAttributes();
        attributes.flags |= 1024;
        getWindow().setAttributes(attributes);
        Log.v(TAG, "fullScreen: " + this.originalLayoutParamsWidth + "x" + this.originalLayoutParamsHeight);
        ViewGroup.LayoutParams layoutParams = this.brightcoveVideoView.getLayoutParams();
        this.originalLayoutParamsWidth = layoutParams.width;
        this.originalLayoutParamsHeight = layoutParams.height;
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.brightcoveVideoView.setLayoutParams(layoutParams);
    }

    public BrightcoveVideoView getBrightcoveVideoView() {
        return this.brightcoveVideoView;
    }

    @SuppressLint({"NewApi"})
    public void normalScreen() {
        Log.v(TAG, "normalScreen: " + this.originalLayoutParamsWidth + "x" + this.originalLayoutParamsHeight);
        if (this.originalLayoutParamsWidth != Integer.MIN_VALUE && this.originalLayoutParamsHeight != Integer.MIN_VALUE) {
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.show();
            }
            LayoutParams attributes = getWindow().getAttributes();
            attributes.flags ^= 1024;
            getWindow().setAttributes(attributes);
            ViewGroup.LayoutParams layoutParams = this.brightcoveVideoView.getLayoutParams();
            layoutParams.width = this.originalLayoutParamsWidth;
            layoutParams.height = this.originalLayoutParamsHeight;
            this.brightcoveVideoView.setLayoutParams(layoutParams);
            this.originalLayoutParamsWidth = Integer.MIN_VALUE;
            this.originalLayoutParamsHeight = Integer.MIN_VALUE;
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.brightcoveVideoView != null) {
            EventEmitter eventEmitter = this.brightcoveVideoView.getEventEmitter();
            String simpleName = getClass().getSimpleName();
            if (bundle != null) {
                this.position = bundle.getInt(POSITION);
            }
            this.brightcoveVideoView.setMediaController(new MediaController(this));
        } else {
            throw new IllegalStateException("brightcoveVideoView needs to be wired up to the layout.");
        }
    }

    protected void onDestroy() {
        Log.v(TAG, "onDestroy");
        super.onDestroy();
        this.brightcoveVideoView.getEventEmitter().off();
    }

    protected void onPause() {
        Log.v(TAG, "onPause");
        super.onPause();
        if (this.brightcoveVideoView.isPlaying()) {
            this.brightcoveVideoView.pause();
            this.wasPlaying = true;
        }
    }

    protected void onRestart() {
        Log.v(TAG, "onRestart");
        super.onRestart();
        if (this.position > 0) {
            this.brightcoveVideoView.seekTo(this.position);
            this.position = -1;
        }
    }

    protected void onResume() {
        Log.v(TAG, "onResume");
        super.onResume();
        if (this.wasPlaying) {
            this.brightcoveVideoView.start();
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(POSITION, this.position);
        super.onSaveInstanceState(bundle);
    }

    protected void onStart() {
        Log.v(TAG, "onStart");
        super.onStart();
    }

    protected void onStop() {
        Log.v(TAG, "onStop");
        super.onStop();
        this.position = this.brightcoveVideoView.getCurrentPosition();
        this.brightcoveVideoView.stopPlayback();
    }
}