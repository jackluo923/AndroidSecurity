package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Libraries.CBOrientation.Difference;
import com.chartboost.sdk.impl.t.a;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public final class s extends LinearLayout implements a {
    private TextView a;
    private u b;
    private v c;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[Difference.values().length];
            try {
                a[Difference.ANGLE_90.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[Difference.ANGLE_180.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[Difference.ANGLE_270.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a[Difference.ANGLE_0.ordinal()] = 4;
        }
    }

    public s(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        setGravity(ZBuildConfig.$targetsdk);
        this.a = new TextView(getContext());
        this.a.setTextColor(-1);
        this.a.setTextSize(GoogleScorer.CLIENT_PLUS, 16.0f);
        this.a.setTypeface(null, 1);
        this.a.setText("Loading...");
        this.a.setGravity(ZBuildConfig.$targetsdk);
        this.b = new u(context, this.a);
        this.c = new v(getContext());
        addView(this.b);
        addView(this.c);
        a();
    }

    public void a() {
        removeView(this.b);
        removeView(this.c);
        float f = getContext().getResources().getDisplayMetrics().density;
        int round = Math.round(20.0f * f);
        LayoutParams layoutParams;
        LayoutParams layoutParams2;
        switch (AnonymousClass_1.a[CBPreferences.getInstance().getForcedOrientationDifference().ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                setOrientation(0);
                layoutParams = new LinearLayout.LayoutParams(Math.round(f * 32.0f), -1);
                layoutParams.setMargins(round, round, 0, round);
                addView(this.c, layoutParams);
                layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
                layoutParams2.setMargins(round, round, round, round);
                addView(this.b, layoutParams2);
            case GoogleScorer.CLIENT_PLUS:
                setOrientation(1);
                layoutParams = new LinearLayout.LayoutParams(-1, Math.round(f * 32.0f));
                layoutParams.setMargins(round, round, round, 0);
                addView(this.c, layoutParams);
                layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams2.setMargins(round, round, round, round);
                addView(this.b, layoutParams2);
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                setOrientation(0);
                layoutParams = new LinearLayout.LayoutParams(-2, -1);
                layoutParams.setMargins(round, round, 0, round);
                addView(this.b, layoutParams);
                layoutParams = new LinearLayout.LayoutParams(Math.round(f * 32.0f), -1);
                layoutParams.setMargins(round, round, round, round);
                addView(this.c, layoutParams);
            default:
                setOrientation(1);
                layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.setMargins(round, round, round, 0);
                addView(this.b, layoutParams);
                layoutParams = new LinearLayout.LayoutParams(-1, Math.round(f * 32.0f));
                layoutParams.setMargins(round, round, round, round);
                addView(this.c, layoutParams);
        }
    }

    public View b() {
        return this;
    }
}