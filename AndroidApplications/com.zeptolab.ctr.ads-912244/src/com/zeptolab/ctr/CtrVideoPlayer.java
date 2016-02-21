package com.zeptolab.ctr;

import android.app.Activity;
import android.content.Intent;

public class CtrVideoPlayer {
    private static PlaybackDelegate delegate;
    private Activity context;
    private int handle;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String val$locator;
        final /* synthetic */ boolean val$mute;

        AnonymousClass_1(String str, boolean z) {
            this.val$locator = str;
            this.val$mute = z;
        }

        public void run() {
            try {
                Thread.sleep(500);
            } catch (Exception e) {
            }
            Intent intent = new Intent();
            intent.setClass(CtrVideoPlayer.this.context, CtrActivities.VIDEO_ACTIVITY);
            intent.putExtra("path", this.val$locator);
            intent.putExtra("mute", this.val$mute);
            CtrVideoPlayer.this.context.startActivity(intent);
        }
    }

    public static interface PlaybackDelegate {
        void onPlaybackFinished();

        void onPlaybackStarted();
    }

    public CtrVideoPlayer(Activity activity) {
        this.context = activity;
    }

    public static void setPlaybackDelegate(PlaybackDelegate playbackDelegate) {
        delegate = playbackDelegate;
    }

    public int getHandle() {
        return this.handle;
    }

    public void playVideo(String str, int i, boolean z) {
        this.handle = i;
        delegate.onPlaybackStarted();
        this.context.runOnUiThread(new AnonymousClass_1(str, z));
    }
}