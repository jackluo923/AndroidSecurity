package com.IQzone.postitial.obfuscated;

import android.os.Handler;
import android.widget.ImageButton;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

final class cv implements OnSeekBarChangeListener {
    final /* synthetic */ Handler a;
    final /* synthetic */ TextView b;
    final /* synthetic */ ImageButton c;
    final /* synthetic */ cl d;

    cv(cl clVar, Handler handler, TextView textView, ImageButton imageButton) {
        this.d = clVar;
        this.a = handler;
        this.b = textView;
        this.c = imageButton;
    }

    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            int duration = (int) (((float) cl.b(this.d).getDuration()) * (((float) i) / 100.0f));
            cl.b(this.d).seekTo(duration);
            duration /= 1000;
            this.a.post(new cw(this, duration / 60, duration % 60));
        }
    }

    public final void onStartTrackingTouch(SeekBar seekBar) {
        cl.e(this.d).execute(new cx(this));
        cl.b(this.d).pause();
    }

    public final void onStopTrackingTouch(SeekBar seekBar) {
        cl.g(this.d).execute(new cy(this));
        cl.b(this.d).start();
        cl.e(this.d).execute(cl.d(this.d));
    }
}