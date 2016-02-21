package com.IQzone.postitial.obfuscated;

import android.media.AudioManager;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.SeekBar;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

final class dk implements OnClickListener {
    final /* synthetic */ Handler a;
    final /* synthetic */ ImageButton b;
    final /* synthetic */ cl c;
    private /* synthetic */ AudioManager d;
    private /* synthetic */ View e;
    private /* synthetic */ SeekBar f;

    dk(cl clVar, Handler handler, ImageButton imageButton, AudioManager audioManager, View view, SeekBar seekBar) {
        this.c = clVar;
        this.a = handler;
        this.b = imageButton;
        this.d = audioManager;
        this.e = view;
        this.f = seekBar;
    }

    public final void onClick(View view) {
        cl.a(this.c, !cl.c(this.c));
        if (cl.c(this.c)) {
            cl.g(this.c).execute(new dl(this));
            if (this.d.getStreamMaxVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE) / 2 > cl.h(this.c)) {
                this.d.setStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, (this.d.getStreamMaxVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE) << 3) / 10, 0);
            } else {
                this.d.setStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, cl.h(this.c), 0);
            }
        } else {
            cl.g(this.c).execute(new dn(this));
            cl.a(this.c, this.d.getStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            this.d.setStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, 0, 0);
        }
        this.e.setVisibility(0);
        if (cl.c(this.c)) {
            this.f.setVisibility(0);
        } else {
            this.f.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        }
        cl.e(this.c).execute(cl.d(this.c));
    }
}