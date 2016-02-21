package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import com.admarvel.android.nativeads.AdMarvelNativeAd;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Libraries.CBOrientation.Difference;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError.CBImpressionError;
import com.chartboost.sdk.c;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONObject;

public class g extends c {
    private static int h;
    private static int i;
    private static int j;
    private List k;
    private com.chartboost.sdk.Libraries.g l;
    private com.chartboost.sdk.Libraries.g m;
    private com.chartboost.sdk.Libraries.g n;
    private Map o;

    public static interface b {
        int a();

        void a(JSONObject jSONObject, int i);
    }

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

    public class a extends com.chartboost.sdk.c.b {
        private ImageView d;
        private ImageView e;
        private FrameLayout f;
        private r g;
        private u h;
        private u i;
        private a j;

        class AnonymousClass_1 implements OnClickListener {
            final /* synthetic */ g a;

            AnonymousClass_1(g gVar) {
                this.a = gVar;
            }

            public void onClick(View view) {
                if (com.chartboost.sdk.impl.g.a.this.c.a != null) {
                    com.chartboost.sdk.impl.g.a.this.c.a.a();
                }
            }
        }

        class AnonymousClass_2 implements Runnable {
            final /* synthetic */ Difference a;

            AnonymousClass_2(Difference difference) {
                this.a = difference;
            }

            public void run() {
                if (com.chartboost.sdk.impl.g.a.this.g != null) {
                    com.chartboost.sdk.impl.g.a.this.a = true;
                    com.chartboost.sdk.impl.g.a.this.requestLayout();
                    com.chartboost.sdk.impl.g.a.this.g.a().requestLayout();
                    com.chartboost.sdk.impl.g.a.this.g.b().requestLayout();
                    com.chartboost.sdk.impl.g.a.this.a = false;
                    if (this.a == Difference.ANGLE_180 || this.a == Difference.ANGLE_90) {
                        com.chartboost.sdk.impl.g.a.this.g.c();
                    }
                }
            }
        }

        public class a extends ArrayAdapter {
            private Context b;

            class AnonymousClass_1 implements OnClickListener {
                final /* synthetic */ JSONObject a;

                AnonymousClass_1(JSONObject jSONObject) {
                    this.a = jSONObject;
                }

                public void onClick(View view) {
                    String optString = this.a.optString("deep-link");
                    if (optString == null || optString.equals(AdTrackerConstants.BLANK)) {
                        optString = this.a.optString("link");
                    }
                    if (com.chartboost.sdk.impl.g.a.a.this != null) {
                        com.chartboost.sdk.impl.g.a.a.this.a(com.chartboost.sdk.impl.g.a.a.this.a.c.g, optString, this.a);
                    }
                }
            }

            public a(Context context) {
                super(context, 0, com.chartboost.sdk.impl.g.a.this.c.k);
                this.b = context;
            }

            public JSONObject a_(int i) {
                return (JSONObject) com.chartboost.sdk.impl.g.a.this.c.k.get(i);
            }

            public int getCount() {
                return com.chartboost.sdk.impl.g.a.this.c.k.size();
            }

            public /* synthetic */ Object getItem(int i) {
                return a(i);
            }

            public View getView(int i, View view, ViewGroup viewGroup) {
                Difference forcedOrientationDifference = CBPreferences.getInstance().getForcedOrientationDifference();
                if (forcedOrientationDifference.isReverse()) {
                    i = getCount() - 1 - i;
                }
                JSONObject a = a(i);
                String optString = a.optString(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, AdTrackerConstants.BLANK);
                com.chartboost.sdk.impl.g.b bVar = null;
                if (view == null) {
                    if (optString.equals("featured")) {
                        bVar = new c(this.b);
                    } else if (optString.equals("regular")) {
                        bVar = new d(this.b);
                    } else if (optString.equals("webview")) {
                        bVar = new h(this.b);
                    }
                    view = new u(this.b, (View) bVar);
                } else {
                    u uVar = (u) view;
                    bVar = (com.chartboost.sdk.impl.g.b) uVar.a();
                }
                bVar.a(a, i);
                b bVar2 = (b) bVar;
                if (forcedOrientationDifference.isOdd()) {
                    view.setLayoutParams(new LayoutParams(bVar.a(), -1));
                } else {
                    view.setLayoutParams(new LayoutParams(-1, bVar.a()));
                }
                OnClickListener anonymousClass_1 = new AnonymousClass_1(a);
                com.chartboost.sdk.impl.g.a.this = anonymousClass_1;
                bVar2.setOnClickListener(anonymousClass_1);
                if (bVar instanceof d) {
                    ((d) bVar).b.setOnClickListener(anonymousClass_1);
                }
                return view;
            }
        }

        private a(Context context) {
            super(context);
            setBackgroundColor(-1842205);
            this.f = new FrameLayout(context);
            this.e = new ImageView(context);
            this.d = new ImageView(context);
            this.g = new r(context, CBPreferences.getInstance().getForcedOrientationDifference().isOdd() ? 0 : 1);
            this.g.b().setBackgroundColor(-1842205);
            this.f.setFocusable(false);
            this.e.setFocusable(false);
            this.d.setFocusable(false);
            this.d.setClickable(true);
            this.h = new u(context, this.d);
            this.i = new u(context, this.f);
            addView(this.i);
            this.f.addView(this.e);
            addView(this.h);
            a(this.e);
            a(this.f);
            a(this.d);
            a(this.i);
            a(this.h);
            this.d.setOnClickListener(new AnonymousClass_1(g.this));
            this.j = new a(context);
        }

        private void a_(View view) {
            int i = AdException.INTERNAL_ERROR;
            if (200 == getId()) {
                i = 201;
            }
            int i2 = i;
            View view2 = findViewById(i);
            while (view2 != null) {
                i2++;
                view2 = findViewById(i2);
            }
            view.setId(i2);
            view.setSaveEnabled(false);
        }

        protected void a_(int i, int i2) {
            if (this.g.a() != null) {
                removeView(this.g.a());
            }
            ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
            ViewGroup.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            ViewGroup.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            ViewGroup.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            Difference forcedOrientationDifference = CBPreferences.getInstance().getForcedOrientationDifference();
            layoutParams2.width = forcedOrientationDifference.isOdd() ? CBUtility.a(h, getContext()) : -1;
            layoutParams2.height = forcedOrientationDifference.isOdd() ? -1 : CBUtility.a(h, getContext());
            switch (AnonymousClass_1.a[forcedOrientationDifference.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    layoutParams2.addRule(R.styleable.MapAttrs_uiZoomGestures);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    layoutParams2.addRule(R.styleable.MapAttrs_useViewLifecycle);
                    break;
            }
            Drawable bitmapDrawable = new BitmapDrawable(g.this.n.e());
            bitmapDrawable.setTileModeX(TileMode.REPEAT);
            bitmapDrawable.setTileModeY(TileMode.CLAMP);
            this.f.setBackgroundDrawable(bitmapDrawable);
            if (g.this.m != null) {
                this.e.setImageBitmap(g.this.m.e());
                layoutParams.width = CBUtility.a(g.this.m.a(), getContext());
                layoutParams.height = CBUtility.a(Math.min(h, g.this.m.b()), getContext());
            }
            this.d.setImageBitmap(g.this.l.e());
            layoutParams3.width = CBUtility.a(forcedOrientationDifference.isOdd() ? j : i, getContext());
            layoutParams3.height = CBUtility.a(forcedOrientationDifference.isOdd() ? i : j, getContext());
            switch (AnonymousClass_1.a[forcedOrientationDifference.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    layoutParams3.bottomMargin = CBUtility.a(R.styleable.MapAttrs_uiZoomControls, getContext());
                    layoutParams3.rightMargin = CBUtility.a((h - j) / 2, getContext());
                    layoutParams3.addRule(R.styleable.MapAttrs_uiZoomGestures);
                    layoutParams3.addRule(R.styleable.MapAttrs_useViewLifecycle);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    layoutParams3.leftMargin = CBUtility.a(R.styleable.MapAttrs_uiZoomControls, getContext());
                    layoutParams3.bottomMargin = CBUtility.a((h - j) / 2, getContext());
                    layoutParams3.addRule(R.styleable.MapAttrs_useViewLifecycle);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    layoutParams3.topMargin = CBUtility.a(R.styleable.MapAttrs_uiZoomControls, getContext());
                    layoutParams3.leftMargin = CBUtility.a((h - j) / 2, getContext());
                    break;
                default:
                    layoutParams3.rightMargin = CBUtility.a(R.styleable.MapAttrs_uiZoomControls, getContext());
                    layoutParams3.topMargin = CBUtility.a((h - j) / 2, getContext());
                    layoutParams3.addRule(R.styleable.MapAttrs_uiZoomGestures);
                    break;
            }
            layoutParams4.width = -1;
            layoutParams4.height = -1;
            switch (AnonymousClass_1.a[forcedOrientationDifference.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    layoutParams4.addRule(0, this.i.getId());
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    layoutParams4.addRule(GoogleScorer.CLIENT_PLUS, this.i.getId());
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    layoutParams4.addRule(1, this.i.getId());
                    break;
                default:
                    layoutParams4.addRule(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.i.getId());
                    break;
            }
            this.g.a(forcedOrientationDifference.isOdd() ? 0 : 1);
            a(this.g.a());
            this.g.a(this.j);
            addView(this.g.a(), layoutParams4);
            if (forcedOrientationDifference == Difference.ANGLE_180) {
                this.g.b().setGravity(80);
            } else if (forcedOrientationDifference == Difference.ANGLE_90) {
                this.g.b().setGravity(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
            } else {
                this.g.b().setGravity(0);
            }
            this.i.setLayoutParams(layoutParams2);
            this.e.setLayoutParams(layoutParams);
            this.e.setScaleType(ScaleType.FIT_CENTER);
            this.h.setLayoutParams(layoutParams3);
            this.d.setScaleType(ScaleType.FIT_CENTER);
            post(new AnonymousClass_2(forcedOrientationDifference));
        }

        public void c() {
            super.c();
            this.d = null;
            this.e = null;
            this.g = null;
        }
    }

    static {
        h = 50;
        i = 50;
        j = 30;
    }

    public g(com.chartboost.sdk.Model.a aVar) {
        super(aVar);
        this.e = 3;
        this.k = new ArrayList();
        this.m = new com.chartboost.sdk.Libraries.g(this);
        this.n = new com.chartboost.sdk.Libraries.g(this);
        this.l = new com.chartboost.sdk.Libraries.g(this);
    }

    protected com.chartboost.sdk.c.b a(Context context) {
        return new a(context, null);
    }

    public void a(JSONObject jSONObject) {
        super.a(jSONObject);
        JSONArray optJSONArray = jSONObject.optJSONArray("cells");
        if (optJSONArray == null) {
            this.g.a(CBImpressionError.INTERNAL);
        } else {
            this.o = new HashMap();
            int i = 0;
            while (i < optJSONArray.length()) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                this.k.add(optJSONObject);
                String optString = optJSONObject.optString(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, AdTrackerConstants.BLANK);
                com.chartboost.sdk.Libraries.g gVar;
                if (optString.equals("regular")) {
                    optJSONObject = optJSONObject.optJSONObject("assets");
                    if (optJSONObject != null) {
                        this.e++;
                        gVar = new com.chartboost.sdk.Libraries.g(this);
                        this.o.put(AdTrackerConstants.BLANK + i, gVar);
                        gVar.a(optJSONObject, AdMarvelNativeAd.FIELD_ICON, new Bundle());
                    }
                } else if (optString.equals("featured")) {
                    optJSONObject = optJSONObject.optJSONObject("assets");
                    if (optJSONObject != null) {
                        this.e++;
                        gVar = new com.chartboost.sdk.Libraries.g(this);
                        this.o.put(String.format(Locale.US, "%d-%s", new Object[]{Integer.valueOf(i), DeviceInfo.ORIENTATION_PORTRAIT}), gVar);
                        gVar.a(optJSONObject, DeviceInfo.ORIENTATION_PORTRAIT, new Bundle());
                        this.e++;
                        gVar = new com.chartboost.sdk.Libraries.g(this);
                        this.o.put(String.format(Locale.US, "%d-%s", new Object[]{Integer.valueOf(i), DeviceInfo.ORIENTATION_LANDSCAPE}), gVar);
                        gVar.a(optJSONObject, DeviceInfo.ORIENTATION_LANDSCAPE, new Bundle());
                    }
                } else if (optString.equals("webview")) {
                }
                i++;
            }
            this.l.a("close");
            this.m.a("header-center");
            this.n.a("header-tile");
        }
    }

    public void d() {
        super.d();
        this.k = null;
        Iterator it = this.o.entrySet().iterator();
        while (it.hasNext()) {
            ((com.chartboost.sdk.Libraries.g) ((Entry) it.next()).getValue()).c();
        }
        this.o.clear();
        this.l.c();
        this.m.c();
        this.n.c();
        this.l = null;
        this.n = null;
        this.m = null;
    }
}