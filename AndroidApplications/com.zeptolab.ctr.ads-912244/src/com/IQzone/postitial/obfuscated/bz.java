package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class bz {
    private static final ql a;
    private final Context b;
    private int c;

    static {
        a = new ql();
    }

    public bz(Context context, int i) {
        this.b = context;
        this.c = i;
    }

    public final View a() {
        bk bkVar = new bk(this.b);
        Executor noVar = new no(Executors.newSingleThreadExecutor());
        Handler mvVar = new mv();
        View relativeLayout = new RelativeLayout(this.b);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.rightMargin = fh.a(this.b.getResources(), (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setId(bt.a);
        relativeLayout.setClickable(true);
        relativeLayout.setFocusable(false);
        relativeLayout.setFocusableInTouchMode(false);
        View relativeLayout2 = new RelativeLayout(this.b);
        LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout2.setClickable(true);
        relativeLayout2.setFocusable(false);
        relativeLayout2.setFocusableInTouchMode(false);
        View qeVar = new qe(this.b);
        qeVar.setId(bt.d);
        qeVar.setBackgroundColor(0);
        LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(R.styleable.MapAttrs_zOrderOnTop);
        qeVar.setClickable(true);
        qeVar.setFocusable(true);
        qeVar.setFocusableInTouchMode(true);
        qeVar.setKeepScreenOn(true);
        relativeLayout2.addView(qeVar, layoutParams3);
        relativeLayout.addView(relativeLayout2, layoutParams2);
        relativeLayout2 = new ImageButton(this.b);
        relativeLayout2.setId(bt.e);
        layoutParams2 = new RelativeLayout.LayoutParams(fh.a(this.b.getResources(), 70), fh.a(this.b.getResources(), 70));
        layoutParams2.addRule(ZBuildConfig.$minsdk);
        layoutParams2.addRule(R.styleable.MapAttrs_uiZoomControls);
        if (VERSION.SDK_INT > 10) {
            layoutParams2.setMargins(0, fh.a(this.b.getResources(), this.c), 0, 0);
        }
        relativeLayout2.setBackgroundColor(0);
        relativeLayout2.setFocusable(false);
        relativeLayout2.setFocusableInTouchMode(false);
        relativeLayout2.setPadding(0, 0, fh.a(this.b.getResources(), (int)MMException.REQUEST_BAD_RESPONSE), fh.a(this.b.getResources(), (int)MMException.REQUEST_BAD_RESPONSE));
        relativeLayout2.setScaleType(ScaleType.FIT_XY);
        noVar.execute(new ca(this, bkVar, mvVar, relativeLayout2));
        relativeLayout.addView(relativeLayout2, layoutParams2);
        relativeLayout2 = new SeekBar(this.b);
        relativeLayout2.setId(bt.p);
        layoutParams2 = new RelativeLayout.LayoutParams(fh.a(this.b.getResources(), 150), -2);
        layoutParams2.addRule(1, bt.e);
        if (this.c != 25 || VERSION.SDK_INT <= 10) {
            layoutParams2.setMargins(0, fh.a(this.b.getResources(), (int)MMException.REQUEST_BAD_RESPONSE), 0, 0);
        } else {
            layoutParams2.setMargins(0, fh.a(this.b.getResources(), (int)ApiEventType.API_MRAID_SEND_SMS), 0, 0);
        }
        relativeLayout.addView(relativeLayout2, layoutParams2);
        relativeLayout2 = new LinearLayout(this.b);
        layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(R.styleable.MapAttrs_useViewLifecycle);
        relativeLayout2.setFocusable(false);
        relativeLayout2.setFocusableInTouchMode(false);
        relativeLayout2.setOrientation(1);
        qeVar = new ImageButton(this.b);
        qeVar.setId(bt.f);
        layoutParams3 = new LinearLayout.LayoutParams(fh.a(this.b.getResources(), 70), fh.a(this.b.getResources(), 70));
        layoutParams3.gravity = 5;
        qeVar.setBackgroundColor(0);
        qeVar.setFocusable(false);
        qeVar.setFocusableInTouchMode(false);
        qeVar.setPadding(fh.a(this.b.getResources(), (int)MMException.REQUEST_BAD_RESPONSE), fh.a(this.b.getResources(), (int)MMException.REQUEST_BAD_RESPONSE), 0, 0);
        qeVar.setScaleType(ScaleType.FIT_XY);
        noVar.execute(new cc(this, bkVar, mvVar, qeVar));
        relativeLayout2.addView(qeVar, layoutParams3);
        qeVar = new RelativeLayout(this.b);
        qeVar.setId(bt.g);
        layoutParams3 = new LinearLayout.LayoutParams(-1, fh.a(this.b.getResources(), 85));
        qeVar.setFocusable(false);
        qeVar.setFocusableInTouchMode(false);
        qeVar.setBackgroundColor(1717986918);
        relativeLayout2.addView(qeVar, layoutParams3);
        View linearLayout = new LinearLayout(this.b);
        linearLayout.setId(bt.i);
        LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(fh.a(this.b.getResources(), (int)AdException.INTERNAL_ERROR), fh.a(this.b.getResources(), 55));
        layoutParams4.addRule(R.styleable.MapAttrs_uiZoomControls);
        layoutParams4.addRule(MMException.REQUEST_NOT_FILLED);
        layoutParams4.setMargins(0, 0, 0, 0);
        linearLayout.setFocusable(false);
        linearLayout.setFocusableInTouchMode(false);
        qeVar.addView(linearLayout, layoutParams4);
        View imageButton = new ImageButton(this.b);
        imageButton.setId(bt.j);
        LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams5.setMargins(fh.a(this.b.getResources(), (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE), 0, fh.a(this.b.getResources(), (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE), 0);
        layoutParams5.weight = 1.0f;
        imageButton.setBackgroundColor(0);
        imageButton.setFocusable(false);
        imageButton.setFocusableInTouchMode(false);
        noVar.execute(new cf(this, bkVar, mvVar, imageButton));
        imageButton.setScaleType(ScaleType.CENTER_CROP);
        linearLayout.addView(imageButton, layoutParams5);
        imageButton = new ImageButton(this.b);
        imageButton.setId(bt.k);
        layoutParams5 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams5.setMargins(fh.a(this.b.getResources(), (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE), 0, fh.a(this.b.getResources(), (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE), 0);
        layoutParams5.weight = 1.0f;
        imageButton.setBackgroundColor(0);
        imageButton.setFocusable(false);
        imageButton.setFocusableInTouchMode(false);
        noVar.execute(new ch(this, bkVar, mvVar, imageButton));
        imageButton.setScaleType(ScaleType.CENTER_CROP);
        linearLayout.addView(imageButton, layoutParams5);
        imageButton = new ImageButton(this.b);
        imageButton.setId(bt.l);
        layoutParams5 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams5.setMargins(fh.a(this.b.getResources(), (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE), 0, fh.a(this.b.getResources(), (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE), 0);
        layoutParams5.weight = 1.0f;
        imageButton.setBackgroundColor(0);
        imageButton.setFocusable(false);
        imageButton.setFocusableInTouchMode(false);
        noVar.execute(new cj(this, bkVar, mvVar, imageButton));
        imageButton.setScaleType(ScaleType.CENTER_CROP);
        linearLayout.addView(imageButton, layoutParams5);
        View seekBar = new SeekBar(this.b);
        seekBar.setId(bt.h);
        LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams6.addRule(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, bt.i);
        layoutParams6.setMargins(fh.a(this.b.getResources(), (int)ApiEventType.API_MRAID_IS_AUDIO_MUTED), 0, fh.a(this.b.getResources(), (int)ApiEventType.API_MRAID_IS_AUDIO_MUTED), 0);
        seekBar.setFocusable(false);
        seekBar.setFocusableInTouchMode(false);
        qeVar.addView(seekBar, layoutParams6);
        seekBar = new TextView(this.b);
        seekBar.setId(bt.m);
        layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, bt.h);
        layoutParams6.addRule(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, bt.h);
        layoutParams6.addRule(ZBuildConfig.$minsdk);
        layoutParams6.setMargins(fh.a(this.b.getResources(), (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE), 0, 0, 0);
        seekBar.setText("0:00");
        seekBar.setFocusable(false);
        seekBar.setFocusableInTouchMode(false);
        qeVar.addView(seekBar, layoutParams6);
        relativeLayout.addView(relativeLayout2, layoutParams2);
        return relativeLayout;
    }
}