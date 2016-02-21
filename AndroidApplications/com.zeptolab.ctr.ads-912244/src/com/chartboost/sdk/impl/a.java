package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout.LayoutParams;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Model.CBError.CBImpressionError;
import com.chartboost.sdk.c;
import com.chartboost.sdk.c.b;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import java.util.Locale;
import org.json.JSONObject;

public class a extends c {
    private static Point n;
    public g h;
    public g i;
    public g j;
    public g k;
    public g l;
    public g m;

    public class a extends b {
        public ImageView c;
        public ImageView d;
        public Button e;
        public u f;

        class AnonymousClass_1 implements OnClickListener {
            final /* synthetic */ a a;

            AnonymousClass_1(a aVar) {
                this.a = aVar;
            }

            public void onClick(View view) {
                if (com.chartboost.sdk.impl.a.a.this.g.a != null) {
                    com.chartboost.sdk.impl.a.a.this.g.a.a();
                }
            }
        }

        class AnonymousClass_2 implements OnClickListener {
            final /* synthetic */ a a;

            AnonymousClass_2(a aVar) {
                this.a = aVar;
            }

            public void onClick(View view) {
                if (com.chartboost.sdk.impl.a.a.this != null) {
                    com.chartboost.sdk.impl.a.a.this.a(com.chartboost.sdk.impl.a.a.this.g.g, null, null);
                }
            }
        }

        private a(Context context) {
            super(context);
            setBackgroundColor(0);
            setLayoutParams(new LayoutParams(-1, -1));
            this.f = new u(context);
            this.c = new ImageView(context);
            this.e = new Button(context);
            this.d = new ImageView(context);
            this.e.setOnClickListener(new AnonymousClass_1(a.this));
            this.c.setClickable(true);
            this.c.setOnClickListener(new AnonymousClass_2(a.this));
            this.f.a(this.d);
            this.f.a(this.c);
            this.f.a(this.e);
            addView(this.f, new LayoutParams(-1, -1));
        }

        protected void a_(int i, int i2) {
            g gVar;
            g gVar2;
            g gVar3;
            boolean isPortrait = CBPreferences.getInstance().getOrientation().isPortrait();
            gVar = isPortrait ? a.this.j : a.this.k;
            gVar2 = isPortrait ? a.this.h : a.this.i;
            gVar3 = isPortrait ? a.this.l : a.this.m;
            ViewGroup.LayoutParams layoutParams = new LayoutParams(-2, -2);
            ViewGroup.LayoutParams layoutParams2 = new LayoutParams(-2, -2);
            ViewGroup.LayoutParams layoutParams3 = new LayoutParams(-2, -2);
            CBLogging.a("CBNativeInterstitialViewProtocol", "Layout orientation changed");
            layoutParams.width = (int) (((float) gVar.a()) / gVar.f());
            layoutParams.height = (int) (((float) gVar.b()) / gVar.f());
            Point a = a.this.a(isPortrait ? "frame-portrait" : "frame-landscape");
            layoutParams.leftMargin = Math.round(((float) (i - layoutParams.width)) / 2.0f + ((float) a.x) / gVar.f());
            layoutParams.topMargin = Math.round(((float) a.y) / gVar.f() + ((float) (i2 - layoutParams.height)) / 2.0f);
            this.c.setId(MMException.UNKNOWN_ERROR);
            layoutParams2.width = (int) (((float) gVar2.a()) / gVar2.f());
            layoutParams2.height = (int) (((float) gVar2.b()) / gVar2.f());
            a = a.this.a(isPortrait ? "ad-portrait" : "ad-landscape");
            layoutParams2.leftMargin = Math.round(((float) (i - layoutParams2.width)) / 2.0f + ((float) a.x) / gVar2.f());
            layoutParams2.topMargin = Math.round(((float) a.y) / gVar2.f() + ((float) (i2 - layoutParams2.height)) / 2.0f);
            layoutParams3.width = (int) (((float) gVar3.a()) / gVar3.f());
            layoutParams3.height = (int) (((float) gVar3.b()) / gVar3.f());
            a = a.this.a(isPortrait ? "close-portrait" : "close-landscape");
            Point b = a.c(getContext());
            int round = layoutParams2.leftMargin + layoutParams2.width + Math.round((float) (a.x + b.x));
            int round2 = Math.round((float) (a.y + b.y)) + layoutParams2.topMargin - layoutParams3.height;
            layoutParams3.leftMargin = Math.min(Math.max(0, round), i - layoutParams3.width);
            layoutParams3.topMargin = Math.min(Math.max(0, round2), i2 - layoutParams3.height);
            this.d.setLayoutParams(layoutParams);
            this.c.setLayoutParams(layoutParams2);
            this.e.setLayoutParams(layoutParams3);
            Drawable bitmapDrawable = new BitmapDrawable(gVar.e());
            this.d.setScaleType(ScaleType.FIT_CENTER);
            this.d.setImageDrawable(bitmapDrawable);
            bitmapDrawable = new BitmapDrawable(gVar2.e());
            this.c.setScaleType(ScaleType.FIT_CENTER);
            this.c.setImageDrawable(bitmapDrawable);
            this.e.setBackgroundDrawable(new BitmapDrawable(gVar3.e()));
        }

        public void c() {
            super.c();
            this.d = null;
            this.c = null;
            this.e = null;
        }
    }

    static {
        n = null;
    }

    public a(com.chartboost.sdk.Model.a aVar) {
        super(aVar);
        this.e = 6;
        this.j = new g(this);
        this.k = new g(this);
        this.h = new g(this);
        this.i = new g(this);
        this.l = new g(this);
        this.m = new g(this);
    }

    private Point a_(String str) {
        JSONObject optJSONObject = this.f.optJSONObject(str);
        if (optJSONObject != null) {
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("offset");
            if (optJSONObject2 != null) {
                return new Point(optJSONObject2.optInt("x", 0), optJSONObject2.optInt("y", 0));
            }
        }
        return new Point(0, 0);
    }

    private static Point c(Context context) {
        if (n == null) {
            n = new Point(-((int) (CBUtility.b(R.styleable.MapAttrs_uiZoomControls, context) + 0.5f)), -((int) (CBUtility.b(R.styleable.MapAttrs_uiZoomControls, context) + 0.5f)));
        }
        return n;
    }

    protected b a_(Context context) {
        return new a(context, null);
    }

    public void a_(JSONObject jSONObject) {
        super.a(jSONObject);
        String str = CBPreferences.getInstance().getOrientation().isPortrait() ? DeviceInfo.ORIENTATION_PORTRAIT : DeviceInfo.ORIENTATION_LANDSCAPE;
        if (this.f.optJSONObject(String.format(Locale.US, "ad-%s", new Object[]{str})) != null) {
            if (this.f.optJSONObject(String.format(Locale.US, "frame-%s", new Object[]{str})) != null) {
                this.i.a("ad-landscape");
                this.h.a("ad-portrait");
                this.k.a("frame-landscape");
                this.j.a("frame-portrait");
                this.m.a("close-landscape");
                this.l.a("close-portrait");
                return;
            }
        }
        this.g.a(CBImpressionError.WRONG_ORIENTATION);
    }

    public void d() {
        super.d();
        this.i.c();
        this.h.c();
        this.k.c();
        this.j.c();
        this.m.c();
        this.l.c();
        this.i = null;
        this.h = null;
        this.k = null;
        this.j = null;
        this.m = null;
        this.l = null;
    }
}