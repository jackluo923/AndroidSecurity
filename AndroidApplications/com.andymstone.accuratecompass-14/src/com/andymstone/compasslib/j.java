package com.andymstone.compasslib;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.CycleInterpolator;
import android.widget.ImageButton;
import com.andymstone.core.o;

public class j extends ImageButton implements f, h {
    g a;
    private int b;
    private l c;
    private ag d;
    private boolean e;
    private Animation f;
    private long g;
    private int h;

    Activity a(Context context) {
        try {
            return (Activity) context;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public void a() {
        if (this.d != null) {
            this.d.a();
        }
    }

    public void a(aa aaVar) {
        this.a.a(aaVar);
    }

    public void a(float[] fArr, float f, float f2, float f3, int i) {
    }

    public void b() {
        if (this.d != null) {
            this.d.b();
        }
    }

    public void c() {
        setVisibility(0);
        if (this.f == null) {
            this.f = new AlphaAnimation(1.0f, 0.0f);
            this.f.setDuration(4000);
            this.f.setInterpolator(new CycleInterpolator(2.0f));
        }
        if (SystemClock.elapsedRealtime() > this.g + 10000) {
            startAnimation(this.f);
            this.g = SystemClock.elapsedRealtime();
        }
        if (this.d != null) {
            if (this.c == null || !this.c.a() || this.e) {
                this.d.d();
            } else {
                Activity a = a(getContext());
                if (a != null) {
                    this.d.a(a);
                }
            }
        }
    }

    public void d() {
        setVisibility(o.MyAlertDialog_MAD_buttonBarStyle);
        if (this.d != null) {
            this.d.d();
        }
    }

    public void e() {
        if (this.d != null) {
            this.d.c();
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.d = new ag(getContext(), this.h > 0 ? Math.min(getRootView().getWidth() - 25, this.h) : getRootView().getWidth() - 25, new k(this));
    }

    public void setListener(l lVar) {
        this.c = lVar;
    }

    public void setNewActiveWarning(int i) {
        if (i != this.b) {
            this.e = false;
        }
        this.b = i;
        if (this.d != null) {
            this.d.a(i.b(i), i.a(i));
        }
        if (i == 2) {
            a();
        } else if (i == 1) {
            b();
        } else {
            e();
        }
    }
}