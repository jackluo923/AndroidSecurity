package com.google.ads.interactivemedia.v3.b;

import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback;

final class m implements VideoAdPlayerCallback {
    private v a;

    public m(v vVar) {
        this.a = vVar;
    }

    public final void onEnded() {
        this.a.c();
    }

    public final void onError() {
        this.a.c();
    }

    public final void onPause() {
        this.a.c();
    }

    public final void onPlay() {
        this.a.a();
    }

    public final void onResume() {
        this.a.a();
    }

    public final void onVolumeChanged(int i) {
    }
}