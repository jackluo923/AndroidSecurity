package com.heyzap.house.view;

import java.util.TimerTask;

class a extends TimerTask {
    final /* synthetic */ FullscreenVideoView a;

    a(FullscreenVideoView fullscreenVideoView) {
        this.a = fullscreenVideoView;
    }

    public void run() {
        this.a.onVideoTick();
    }
}