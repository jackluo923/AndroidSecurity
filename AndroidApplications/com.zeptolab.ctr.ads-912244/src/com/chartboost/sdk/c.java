package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Model.CBError.CBImpressionError;
import org.json.JSONObject;

public abstract class c {
    public a a;
    public c b;
    public a c;
    public d d;
    protected int e;
    protected JSONObject f;
    protected com.chartboost.sdk.Model.a g;
    private int h;
    private int i;
    private int j;
    private b k;

    public static interface a {
        void a_();
    }

    public static interface c {
        void a(com.chartboost.sdk.Model.a aVar, String str, JSONObject jSONObject);
    }

    public static interface d {
        void a(CBImpressionError cBImpressionError);
    }

    public abstract class b extends RelativeLayout implements com.chartboost.sdk.impl.t.a {
        protected boolean a;

        class AnonymousClass_1 implements OnTouchListener {
            final /* synthetic */ c a;

            AnonymousClass_1(c cVar) {
                this.a = cVar;
            }

            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        public b(Context context) {
            super(context);
            this.a = false;
            setFocusableInTouchMode(true);
            requestFocus();
            setOnTouchListener(new AnonymousClass_1(c.this));
        }

        private boolean b_(int i, int i2) {
            try {
                a(i, i2);
                return true;
            } catch (Exception e) {
                CBLogging.a("CBViewProtocol", "Exception raised while layouting Subviews", e);
                return false;
            }
        }

        public void a() {
            a((Activity) getContext());
        }

        protected abstract void a(int i, int i2);

        public boolean a(Activity activity) {
            int width;
            int height;
            try {
                width = getWidth();
                height = getHeight();
                if (width == 0 || height == 0) {
                    View findViewById = activity.getWindow().findViewById(16908290);
                    if (findViewById == null) {
                        findViewById = activity.getWindow().getDecorView();
                    }
                    width = findViewById.getWidth();
                    height = findViewById.getHeight();
                }
            } catch (Exception e) {
                height = 0;
                width = 0;
            }
            if (width == 0 || i == 0) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                width = displayMetrics.widthPixels;
                height = displayMetrics.heightPixels;
            }
            if (!CBPreferences.getInstance().getForcedOrientationDifference().isOdd()) {
                int i2 = height;
                height = width;
                width = i2;
            }
            return b(height, width);
        }

        public View b_() {
            return this;
        }

        public void c() {
        }

        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            if (!this.a) {
                if (CBPreferences.getInstance().getForcedOrientationDifference().isOdd()) {
                    b(i2, i);
                } else {
                    b(i, i2);
                }
            }
        }
    }

    public c(com.chartboost.sdk.Model.a aVar) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = 0;
        this.g = aVar;
        this.k = null;
    }

    protected abstract b a(Context context);

    public void a() {
        this.j++;
    }

    public void a(g gVar) {
        if (gVar != null && gVar.d()) {
            this.h++;
        }
        this.i++;
        if (this.i == this.e && !b()) {
            this.g.a(CBImpressionError.INTERNAL);
        }
    }

    public void a(JSONObject jSONObject) {
        this.i = 0;
        this.j = 0;
        this.h = 0;
        this.f = jSONObject.optJSONObject("assets");
        if (this.f == null) {
            this.g.a(CBImpressionError.INTERNAL);
        }
    }

    public boolean b() {
        if (this.h < this.j) {
            return false;
        }
        if (this.c != null) {
            this.c.a();
        }
        return true;
    }

    public CBImpressionError c_() {
        Context c = Chartboost.sharedChartboost().c();
        if (c == null) {
            this.k = null;
            return CBImpressionError.NO_HOST_ACTIVITY;
        } else {
            this.k = a(c);
            if (this.k.a(c)) {
                return null;
            }
            this.k = null;
            return CBImpressionError.INTERNAL;
        }
    }

    public void d() {
        f();
        this.c = null;
        this.d = null;
        this.b = null;
        this.a = null;
    }

    public b e() {
        return this.k;
    }

    public void f() {
        if (this.k != null) {
            this.k.c();
        }
        this.k = null;
    }

    public JSONObject g() {
        return this.f;
    }
}