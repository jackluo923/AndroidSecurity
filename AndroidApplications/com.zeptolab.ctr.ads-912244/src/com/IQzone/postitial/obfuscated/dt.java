package com.IQzone.postitial.obfuscated;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.widget.ImageButton;
import android.widget.SeekBar;
import android.widget.TextView;

final class dt implements OnCompletionListener {
    final /* synthetic */ Handler a;
    final /* synthetic */ ImageButton b;
    final /* synthetic */ cl c;
    private /* synthetic */ SeekBar d;
    private /* synthetic */ TextView e;
    private /* synthetic */ View f;
    private /* synthetic */ SeekBar g;
    private /* synthetic */ Uri h;

    dt(cl clVar, SeekBar seekBar, TextView textView, View view, SeekBar seekBar2, Handler handler, ImageButton imageButton, Uri uri) {
        this.c = clVar;
        this.d = seekBar;
        this.e = textView;
        this.f = view;
        this.g = seekBar2;
        this.a = handler;
        this.b = imageButton;
        this.h = uri;
    }

    public final void onCompletion(MediaPlayer mediaPlayer) {
        if (cl.i(this.c) != null) {
            cl.i(this.c).a(this.c);
        }
        cl.b(this.c).seekTo(0);
        this.d.setProgress(0);
        this.e.setText("0:00");
        this.f.setVisibility(0);
        if (cl.c(this.c)) {
            this.g.setVisibility(0);
        }
        cl.g(this.c).execute(new du(this));
        if (Build.MODEL.toLowerCase().equalsIgnoreCase("droidx")) {
            cl.b(this.c).a(this.h);
        }
        cl.e(this.c).execute(new dw(this));
    }
}