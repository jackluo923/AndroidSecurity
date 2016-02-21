package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.widget.Toast;

final class cm implements OnErrorListener {
    private /* synthetic */ Context a;

    cm(cl clVar, Context context) {
        this.a = context;
    }

    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Toast.makeText(this.a, "ERROR WITH VIDEO", 1).show();
        return false;
    }
}