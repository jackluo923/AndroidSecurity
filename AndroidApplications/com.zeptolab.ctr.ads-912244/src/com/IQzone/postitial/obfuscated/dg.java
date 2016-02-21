package com.IQzone.postitial.obfuscated;

import android.media.AudioManager;
import android.os.Handler;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

final class dg implements Runnable {
    final /* synthetic */ SeekBar a;
    final /* synthetic */ SeekBar b;
    final /* synthetic */ TextView c;
    final /* synthetic */ View d;
    private /* synthetic */ AudioManager e;
    private /* synthetic */ Handler f;
    private /* synthetic */ cl g;

    dg(cl clVar, AudioManager audioManager, SeekBar seekBar, Handler handler, SeekBar seekBar2, TextView textView, View view) {
        this.g = clVar;
        this.e = audioManager;
        this.a = seekBar;
        this.f = handler;
        this.b = seekBar2;
        this.c = textView;
        this.d = view;
    }

    public final void run() {
        try {
            this.a.setProgress((int) ((((float) this.e.getStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) / ((float) this.e.getStreamMaxVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE))) * 100.0f));
            long currentTimeMillis = System.currentTimeMillis();
            while (System.currentTimeMillis() < 3000 + currentTimeMillis) {
                int currentPosition = cl.b(this.g).getCurrentPosition();
                int i = currentPosition / 1000;
                currentPosition = (int) ((((float) currentPosition) / ((float) cl.b(this.g).getDuration())) * 100.0f);
                this.f.post(new dh(this, currentPosition, i / 60, i % 60));
                Thread.sleep(500);
            }
            this.f.post(new di(this));
        } catch (InterruptedException e) {
            cl.d();
        }
    }
}