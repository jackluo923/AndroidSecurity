package com.IQzone.postitial.obfuscated;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.SeekBar;

final class dj implements OnTouchListener {
    private /* synthetic */ View a;
    private /* synthetic */ SeekBar b;
    private /* synthetic */ cl c;

    dj(cl clVar, View view, SeekBar seekBar) {
        this.c = clVar;
        this.a = view;
        this.b = seekBar;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.a.setVisibility(0);
        if (cl.c(this.c)) {
            this.b.setVisibility(0);
        }
        if (cl.d(this.c) != null) {
            cl.e(this.c).execute(cl.d(this.c));
        }
        return false;
    }
}