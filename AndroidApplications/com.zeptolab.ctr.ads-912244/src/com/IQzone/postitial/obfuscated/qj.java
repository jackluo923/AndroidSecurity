package com.IQzone.postitial.obfuscated;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;

final class qj implements OnBufferingUpdateListener {
    private /* synthetic */ qe a;

    qj(qe qeVar) {
        this.a = qeVar;
    }

    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        qe.e(this.a, i);
    }
}