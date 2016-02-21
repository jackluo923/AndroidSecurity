package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout.LayoutParams;
import android.widget.SeekBar;
import android.widget.TextView;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class cl {
    private static final ql a;
    private final Executor b;
    private volatile boolean c;
    private volatile int d;
    private final Runnable e;
    private final bk f;
    private final ExecutorService g;
    private final Handler h;
    private final Context i;
    private final qe j;
    private mx k;
    private final View l;

    static {
        a = new ql();
    }

    private cl(Context context, Uri uri, mx mxVar, ViewGroup viewGroup, Handler handler, String str, ExecutorService executorService, int i) {
        this.h = handler;
        this.i = context;
        this.b = nh.a(executorService, executorService, 1);
        this.f = new bk(context);
        this.g = new nr(Executors.newSingleThreadExecutor());
        this.l = new bz(context, i).a();
        this.j = (qe) this.l.findViewById(bt.d);
        this.j.a(new cm(this, context));
        ImageButton imageButton = (ImageButton) this.l.findViewById(bt.f);
        TextView textView = (TextView) this.l.findViewById(bt.m);
        SeekBar seekBar = (SeekBar) this.l.findViewById(bt.h);
        SeekBar seekBar2 = (SeekBar) this.l.findViewById(bt.p);
        seekBar2.setMax(MMException.UNKNOWN_ERROR);
        seekBar2.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        this.c = false;
        if (str.trim().equals(AdTrackerConstants.BLANK)) {
            imageButton.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        } else {
            imageButton.setOnClickListener(new dc(this, str, context, executorService, mxVar, viewGroup, handler));
        }
        View findViewById = this.l.findViewById(bt.g);
        findViewById.setVisibility(0);
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        this.d = audioManager.getStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        this.e = new dg(this, audioManager, seekBar2, handler, seekBar, textView, findViewById);
        this.j.a(uri);
        viewGroup.addView(this.l, new LayoutParams(-2, -2));
        this.j.setOnTouchListener(new dj(this, findViewById, seekBar2));
        ImageButton imageButton2 = (ImageButton) this.l.findViewById(bt.e);
        imageButton2.setOnClickListener(new dk(this, handler, imageButton2, audioManager, findViewById, seekBar2));
        ImageButton imageButton3 = (ImageButton) this.l.findViewById(bt.k);
        ImageButton imageButton4 = (ImageButton) this.l.findViewById(bt.l);
        ((ImageButton) this.l.findViewById(bt.j)).setOnClickListener(new dp(this, handler, imageButton3));
        imageButton4.setOnClickListener(new ds(this));
        this.j.a(new dt(this, seekBar, textView, findViewById, seekBar2, handler, imageButton3, uri));
        imageButton3.setOnClickListener(new cn(this, handler, imageButton3));
        seekBar2.setOnSeekBarChangeListener(new ct(this, audioManager));
        seekBar.setOnSeekBarChangeListener(new cv(this, handler, textView, imageButton3));
    }

    public cl(Context context, Uri uri, mx mxVar, ViewGroup viewGroup, Handler handler, ExecutorService executorService, mx mxVar2, int i) {
        this(context, uri, mxVar, viewGroup, handler, mxVar2 != null ? "not used" : AdTrackerConstants.BLANK, executorService, 25);
        this.k = mxVar2;
    }

    public final void a() {
        this.h.post(new da(this));
    }

    public final void b() {
        ((AudioManager) this.i.getSystemService("audio")).setStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, 0, 0);
    }

    public final void c() {
        if (this.e != null) {
            this.h.post(new db(this));
        }
    }
}