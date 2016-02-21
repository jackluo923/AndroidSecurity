package com.IQzone.postitial.obfuscated;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.util.Log;

final class qi implements OnErrorListener {
    private /* synthetic */ qe a;

    qi(qe qeVar) {
        this.a = qeVar;
    }

    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Log.d("VideoView", new StringBuilder("Error: ").append(i).append(",").append(i2).toString());
        qe.c(this.a, -1);
        qe.d(this.a, -1);
        if (qe.e(this.a) != null) {
            qe.e(this.a).hide();
        }
        if ((qe.k(this.a) == null || !qe.k(this.a).onError(qe.d(this.a), i, i2)) && this.a.getWindowToken() != null) {
            qe.a();
            new StringBuilder("ERROR:").append(i).toString();
        }
        return true;
    }
}