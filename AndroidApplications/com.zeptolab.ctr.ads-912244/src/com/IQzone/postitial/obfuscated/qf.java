package com.IQzone.postitial.obfuscated;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnVideoSizeChangedListener;

final class qf implements OnVideoSizeChangedListener {
    private /* synthetic */ qe a;

    qf(qe qeVar) {
        this.a = qeVar;
    }

    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        qe.a(this.a, mediaPlayer.getVideoWidth());
        qe.b(this.a, mediaPlayer.getVideoHeight());
        if (qe.a(this.a) != 0 && qe.b(this.a) != 0) {
            this.a.getHolder().setFixedSize(qe.a(this.a), qe.b(this.a));
        }
    }
}