package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Libraries.CBOrientation;
import com.chartboost.sdk.Libraries.CBOrientation.Difference;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

public final class t extends RelativeLayout {
    private a a;
    private p b;
    private p c;
    private s d;
    private OrientationEventListener e;
    private Difference f;
    private com.chartboost.sdk.Model.a g;

    public static interface a {
        void a_();

        View b();
    }

    class AnonymousClass_1 extends OrientationEventListener {
        final /* synthetic */ CBPreferences a;

        AnonymousClass_1(Context context, int i, CBPreferences cBPreferences) {
            this.a = cBPreferences;
            super(context, i);
        }

        public void onOrientationChanged(int i) {
            Difference forcedOrientationDifference = this.a.getForcedOrientationDifference();
            if (t.this.f != forcedOrientationDifference) {
                t.this.f = forcedOrientationDifference;
                if (t.this.a != null) {
                    t.this.a.a();
                }
                if (t.this.d != null && t.this.d.getVisibility() == 0) {
                    t.this.d.a();
                }
                t.this.invalidate();
            }
        }
    }

    public t(Context context, com.chartboost.sdk.Model.a aVar) {
        super(context);
        this.f = null;
        this.g = null;
        this.g = aVar;
        this.b = new p(context);
        addView(this.b, new LayoutParams(-1, -1));
        this.c = new p(context);
        addView(this.c, new LayoutParams(-1, -1));
        this.c.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        CBPreferences instance = CBPreferences.getInstance();
        if (!(instance.getOrientation() == null || instance.getOrientation() == CBOrientation.UNSPECIFIED)) {
            this.f = instance.getForcedOrientationDifference();
            this.e = new AnonymousClass_1(context, 1, instance);
            this.e.enable();
        }
        setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    public void a() {
        if (this.a == null) {
            this.a = this.g.e();
            addView(this.a.b(), new LayoutParams(-1, -1));
        }
        c();
    }

    public void b() {
        int i = !this.g.j;
        this.g.j = true;
        if (this.d == null) {
            this.d = new s(getContext());
            this.d.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            addView(this.d, new LayoutParams(-1, -1));
        } else {
            this.c.bringToFront();
            this.c.setVisibility(0);
            this.c.a();
            o.b(this.b);
            this.d.bringToFront();
            this.d.a();
        }
        if (!g()) {
            this.d.setVisibility(0);
            if (i != 0) {
                e().a();
                o.a(this.d);
            }
        }
    }

    public void c() {
        if (this.d != null) {
            this.d.clearAnimation();
            this.d.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        }
    }

    public void d() {
        if (this.e != null) {
            this.e.disable();
            this.e = null;
        }
    }

    public p e() {
        return this.b;
    }

    public View f() {
        return this.a == null ? null : this.a.b();
    }

    public boolean g() {
        return this.d != null && this.d.getVisibility() == 0;
    }

    public com.chartboost.sdk.Model.a h() {
        return this.g;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }
}