package com.admob.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import com.admob.android.ads.view.AdMobWebView;
import com.tic_mobile.android.connectfour.Config;
import com.tic_mobile.android.connectfour.GameParameters;
import com.tic_mobile.android.connectfour.R;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// compiled from: Ad.java
final class d implements OnClickListener, h {
    private static final int c;
    private static final Rect d;
    private static final PointF e;
    private static final PointF f;
    private static final PointF g;
    private static final Matrix h;
    private static final RectF i;
    private Hashtable<String, byte[]> A;
    private HashSet<r> B;
    private Vector<Bitmap> C;
    private b D;
    private double E;
    private double F;
    protected View a;
    protected g b;
    private String j;
    private String k;
    private boolean l;
    private boolean m;
    private Vector<Intent> n;
    private Vector<String> o;
    private Vector<e> p;
    private f q;
    private Rect r;
    private long s;
    private int t;
    private int u;
    private a v;
    private int w;
    private int x;
    private int y;
    private JSONObject z;

    // compiled from: Ad.java
    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[f.values().length];
            a[f.g.ordinal()] = 1;
        }
    }

    // compiled from: Ad.java
    class AnonymousClass_2 implements h {
        AnonymousClass_2(d dVar) {
        }

        public final void a(r rVar) {
            String str = AdManager.LOG;
            String str2 = AdManager.LOG;
            if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                str2 = AdManager.LOG;
                Log.d(str, "Click processed at " + rVar.f());
            }
        }

        public final void a(r rVar, Exception exception) {
            String str = AdManager.LOG;
            String str2 = AdManager.LOG;
            if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                str2 = AdManager.LOG;
                Log.d(str, "Click processing failed at " + rVar.f(), exception);
            }
        }
    }

    // compiled from: AdView.java
    protected static interface a {
        WeakReference<AdView> a;

        a(AdView adView) {
            this.a = new WeakReference(adView);
        }

        void a_() {
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                AdView.c(adView);
            }
        }

        void a_(d dVar) {
            String str = AdManager.LOG;
            AdView adView = (AdView) this.a.get();
            if (adView != null) {
                synchronized (adView) {
                    if (adView.c == null || !dVar.equals(adView.c.b())) {
                        if (Log.isLoggable(AdManager.LOG, R.styleable.com_admob_android_ads_AdView_refreshInterval)) {
                            Log.i(AdManager.LOG, "Ad returned (" + (SystemClock.uptimeMillis() - adView.p) + " ms):  " + dVar);
                        }
                        adView.getContext();
                        adView.a(dVar, dVar.b());
                    } else if (Log.isLoggable(AdManager.LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                        Log.d(AdManager.LOG, "Received the same ad we already had.  Discarding it.");
                    }
                }
            }
        }
    }

    // compiled from: Ad.java
    static interface b {
        void a();
    }

    // compiled from: Ad.java
    static class c implements Runnable {
        private String a;
        private int b;
        private int c;
        private String d;
        private WeakReference<d> e;

        public c(String str, String str2, int i, int i2, d dVar) {
            this.a = str;
            this.b = 320;
            this.c = 295;
            this.d = str2;
            this.e = new WeakReference(dVar);
        }

        public final void run() {
            String str;
            String str2 = AdManager.LOG;
            try {
                d dVar = (d) this.e.get();
                if (dVar != null && dVar.b != null) {
                    Context context = dVar.b.getContext();
                    WindowManager windowManager = (WindowManager) context.getSystemService("window");
                    LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 1000, 2, -3);
                    layoutParams.dimAmount = 0.75f;
                    dVar.a = dVar.a(context, this.a, this.d, this.b, this.c);
                    windowManager.addView(dVar.a, layoutParams);
                    AdView.a(dVar.a);
                }
            } catch (Exception e) {
                exception = e;
                str = AdManager.LOG;
                if (Log.isLoggable(str2, Config.ACTIVITY_ID_STATS)) {
                    Exception exception2;
                    str = AdManager.LOG;
                    Log.e(str2, "exception caught in Ad$WebViewLoader.run(), " + exception2.getMessage());
                }
            }
        }
    }

    // compiled from: Ad.java
    private static class d implements Runnable {
        Vector<g> a;
        private g b;
        private WeakReference<d> c;

        public d(g gVar, d dVar) {
            this.a = new Vector();
            this.b = gVar;
            this.c = new WeakReference(dVar);
        }

        public final void run() {
            String str;
            int i = Config.ACTIVITY_ID_STATS;
            String str2 = AdManager.LOG;
            try {
                if (this.b != null) {
                    this.b.setPadding(0, 0, 0, 0);
                    Iterator it = this.a.iterator();
                    while (it.hasNext()) {
                        g gVar = (g) it.next();
                        View view = gVar.a;
                        this.b.addView(view, gVar.b);
                        Animation animation = gVar.c;
                        if (animation != null) {
                            view.startAnimation(animation);
                        }
                    }
                    this.b.invalidate();
                    this.b.requestLayout();
                } else if (Log.isLoggable(AdManager.LOG, Config.ACTIVITY_ID_STATS)) {
                    Log.e(AdManager.LOG, "containerView was null in ViewAdd!");
                }
                d dVar = (d) this.c.get();
                if (dVar != null) {
                    d.a(dVar);
                }
            } catch (Exception e) {
                exception = e;
                str = AdManager.LOG;
                if (Log.isLoggable(str2, i)) {
                    Exception exception2;
                    str = AdManager.LOG;
                    Log.e(str2, "exception caught in Ad$ViewAdd.run(), " + exception2.getMessage());
                }
            }
        }
    }

    // compiled from: Ad.java
    private static class e {
        public String a;
        public boolean b;

        public e(String str, boolean z) {
            this.a = str;
            this.b = z;
        }
    }

    // compiled from: Ad.java
    protected enum f {
        CLICK_TO_MAP,
        CLICK_TO_VIDEO,
        CLICK_TO_APP,
        CLICK_TO_BROWSER,
        CLICK_TO_CALL,
        CLICK_TO_MUSIC,
        CLICK_TO_CANVAS,
        CLICK_TO_CONTACT;

        static {
            a = new f("CLICK_TO_MAP", 0);
            b = new f("CLICK_TO_VIDEO", 1);
            c = new f("CLICK_TO_APP", 2);
            d = new f("CLICK_TO_BROWSER", 3);
            e = new f("CLICK_TO_CALL", 4);
            f = new f("CLICK_TO_MUSIC", 5);
            g = new f("CLICK_TO_CANVAS", 6);
            h = new f("CLICK_TO_CONTACT", 7);
            i = new f[]{a, b, c, d, e, f, g, h};
        }
    }

    // compiled from: Ad.java
    private static class g {
        public View a;
        public RelativeLayout.LayoutParams b;
        public AnimationSet c;

        /* synthetic */ g() {
            this((byte) 0);
        }

        private g(byte b) {
        }
    }

    static {
        c = Color.rgb(102, 102, 102);
        d = new Rect(0, 0, 0, 0);
        PointF pointF = new PointF(0.0f, 0.0f);
        e = pointF;
        f = pointF;
        g = new PointF(0.5f, 0.5f);
        h = new Matrix();
        i = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
    }

    protected d() {
        this.o = new Vector();
        this.p = new Vector();
        this.s = 0;
        this.v = null;
        this.j = null;
        this.k = null;
        this.r = null;
        this.t = -1;
        this.u = -1;
        this.D = null;
        this.x = -1;
        this.w = -1;
        this.y = -16777216;
        this.A = new Hashtable();
        this.B = new HashSet();
        this.C = new Vector();
        this.n = new Vector();
        this.E = -1.0d;
        this.F = -1.0d;
    }

    private static float a(JSONObject jSONObject, String str, float f) {
        return (float) jSONObject.optDouble(str, (double) f);
    }

    private static int a(JSONObject jSONObject, String str, int i) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return i;
        }
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(str);
            return Color.argb((int) (jSONArray.getDouble(R.styleable.com_admob_android_ads_AdView_keywords) * 255.0d), (int) (jSONArray.getDouble(0) * 255.0d), (int) (jSONArray.getDouble(1) * 255.0d), (int) (jSONArray.getDouble(R.styleable.com_admob_android_ads_AdView_secondaryTextColor) * 255.0d));
        } catch (Exception e) {
            return i;
        }
    }

    private static Matrix a(JSONArray jSONArray) {
        float[] b = b(jSONArray);
        if (b == null || b.length != 9) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.setValues(b);
        return matrix;
    }

    private static Matrix a(JSONObject jSONObject, String str, Matrix matrix) {
        float[] b = b(jSONObject, str);
        if (b == null || b.length != 9) {
            return matrix;
        }
        Matrix matrix2 = new Matrix();
        matrix2.setValues(b);
        return matrix2;
    }

    private static PointF a(RectF rectF, PointF pointF) {
        float width = rectF.width();
        float height = rectF.height();
        return new PointF(width * pointF.x + rectF.left, height * pointF.y + rectF.top);
    }

    private static PointF a(JSONObject jSONObject, String str, PointF pointF) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return pointF;
        }
        try {
            return e(jSONObject.getJSONArray(str));
        } catch (JSONException e) {
            return pointF;
        }
    }

    private static Rect a(JSONObject jSONObject, String str, Rect rect) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return rect;
        }
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(str);
            int i = (int) jSONArray.getDouble(0);
            int i2 = (int) jSONArray.getDouble(1);
            return new Rect(i, i2, ((int) jSONArray.getDouble(R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) + i, ((int) jSONArray.getDouble(R.styleable.com_admob_android_ads_AdView_keywords)) + i2);
        } catch (JSONException e) {
            return rect;
        }
    }

    private static RectF a(JSONObject jSONObject, String str, RectF rectF) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return rectF;
        }
        try {
            return d(jSONObject.getJSONArray(str));
        } catch (JSONException e) {
            return rectF;
        }
    }

    private View a(JSONObject jSONObject, Rect rect) throws JSONException {
        if (this.b == null) {
            return null;
        }
        float a = a(jSONObject, "ia", 0.5f);
        float a2 = a(jSONObject, "epy", 0.4375f);
        int a3 = a(jSONObject, "bc", this.y);
        try {
            Bitmap createBitmap = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
            this.C.add(createBitmap);
            Canvas canvas = new Canvas(createBitmap);
            int i = (int) (a * 255.0f);
            int height = ((int) (a2 * ((float) rect.height()))) + rect.top;
            Rect rect2 = new Rect(rect.left, rect.top, rect.right, height);
            Paint paint = new Paint();
            paint.setColor(-1);
            paint.setStyle(Style.FILL);
            canvas.drawRect(rect2, paint);
            i = Color.argb(i, Color.red(a3), Color.green(a3), Color.blue(a3));
            GradientDrawable gradientDrawable = new GradientDrawable(Orientation.TOP_BOTTOM, new int[]{i, a3});
            gradientDrawable.setBounds(rect2);
            gradientDrawable.draw(canvas);
            Rect rect3 = new Rect(rect.left, height, rect.right, rect.bottom);
            Paint paint2 = new Paint();
            paint2.setColor(a3);
            paint2.setStyle(Style.FILL);
            canvas.drawRect(rect3, paint2);
            View view = new View(this.b.getContext());
            view.setBackgroundDrawable(new BitmapDrawable(createBitmap));
            return view;
        } catch (Throwable th) {
            return null;
        }
    }

    private static android.view.animation.Animation a(int r12, java.lang.String r13, java.lang.String r14, float[] r15, org.json.JSONArray r16, java.lang.String[] r17, long r18, android.view.View r20, android.graphics.Rect r21, org.json.JSONObject r22, org.json.JSONArray r23) {
        throw new UnsupportedOperationException("Method not decompiled: com.admob.android.ads.d.a(int, java.lang.String, java.lang.String, float[], org.json.JSONArray, java.lang.String[], long, android.view.View, android.graphics.Rect, org.json.JSONObject, org.json.JSONArray):android.view.animation.Animation");
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Wrong literal type: android.view.View for value: 6
	at jadx.core.dex.instructions.args.LiteralArg.<init>(LiteralArg.java:16)
	at jadx.core.dex.instructions.args.InsnArg.lit(InsnArg.java:34)
	at jadx.core.dex.visitors.ConstInlinerVisitor.replaceConst(ConstInlinerVisitor.java:87)
	at jadx.core.dex.visitors.ConstInlinerVisitor.checkInsn(ConstInlinerVisitor.java:70)
	at jadx.core.dex.visitors.ConstInlinerVisitor.visit(ConstInlinerVisitor.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
        /*
        r5 = 0;
        r6 = r12 + 1;
        r7 = r15[r12];
        r15 = r15[r6];
        if (r13 == 0) goto L_0x000b;
    L_0x0009:
        if (r14 != 0) goto L_0x0072;
    L_0x000b:
        r16 = "AdMobSDK";
        r20 = 6;
        r0 = r16;
        r1 = r20;
        r16 = android.util.Log.isLoggable(r0, r1);
        if (r16 == 0) goto L_0x01df;
    L_0x0019:
        r16 = "AdMobSDK";
        r20 = new java.lang.StringBuilder;
        r20.<init>();
        r21 = "Could not read keyframe animation: keyPath(";
        r20 = r20.append(r21);
        r0 = r20;
        r1 = r13;
        r13 = r0.append(r1);
        r20 = ") or valueType(";
        r0 = r13;
        r1 = r20;
        r13 = r0.append(r1);
        r13 = r13.append(r14);
        r14 = ") is null.";
        r13 = r13.append(r14);
        r13 = r13.toString();
        r0 = r16;
        r1 = r13;
        android.util.Log.e(r0, r1);
        r13 = r5;
    L_0x004b:
        if (r13 == 0) goto L_0x0071;
    L_0x004d:
        r0 = r18;
        r0 = (float) r0;
        r14 = r0;
        r14 = r14 * r7;
        r14 = (int) r14;
        r15 = r15 - r7;
        r0 = r18;
        r0 = (float) r0;
        r16 = r0;
        r15 = r15 * r16;
        r15 = (int) r15;
        r8 = (long) r15;
        r0 = r13;
        r1 = r18;
        r0.setDuration(r1);
        r5 = r17[r12];
        r6 = (long) r14;
        r10 = r18;
        r12 = a(r5, r6, r8, r10);
        if (r12 == 0) goto L_0x0071;
    L_0x006e:
        r13.setInterpolator(r12);
    L_0x0071:
        return r13;
    L_0x0072:
        r8 = "position";
        r8 = r8.equals(r13);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x00a3;
    L_0x007a:
        r8 = "P";
        r8 = r8.equals(r14);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x00a3;
    L_0x0082:
        r0 = r16;
        r1 = r12;
        r13 = r0.getJSONArray(r1);	 Catch:{ JSONException -> 0x01de }
        r13 = e(r13);	 Catch:{ JSONException -> 0x01de }
        r0 = r16;
        r1 = r6;
        r14 = r0.getJSONArray(r1);	 Catch:{ JSONException -> 0x01de }
        r14 = e(r14);	 Catch:{ JSONException -> 0x01de }
        r0 = r13;
        r1 = r14;
        r2 = r20;
        r3 = r21;
        r13 = a(r0, r1, r2, r3);	 Catch:{ JSONException -> 0x01de }
        goto L_0x004b;
    L_0x00a3:
        r8 = "opacity";
        r8 = r8.equals(r13);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x00cb;
    L_0x00ab:
        r8 = "F";
        r8 = r8.equals(r14);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x00cb;
    L_0x00b3:
        r0 = r16;
        r1 = r12;
        r13 = r0.getDouble(r1);	 Catch:{ JSONException -> 0x01de }
        r13 = (float) r13;	 Catch:{ JSONException -> 0x01de }
        r0 = r16;
        r1 = r6;
        r20 = r0.getDouble(r1);	 Catch:{ JSONException -> 0x01de }
        r0 = r20;
        r0 = (float) r0;	 Catch:{ JSONException -> 0x01de }
        r14 = r0;
        r13 = a(r13, r14);	 Catch:{ JSONException -> 0x01de }
        goto L_0x004b;
    L_0x00cb:
        r8 = "bounds";
        r8 = r8.equals(r13);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x00fd;
    L_0x00d3:
        r8 = "R";
        r8 = r8.equals(r14);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x00fd;
    L_0x00db:
        r0 = r16;
        r1 = r12;
        r13 = r0.getJSONArray(r1);	 Catch:{ JSONException -> 0x01de }
        r13 = d(r13);	 Catch:{ JSONException -> 0x01de }
        r0 = r16;
        r1 = r6;
        r14 = r0.getJSONArray(r1);	 Catch:{ JSONException -> 0x01de }
        r14 = d(r14);	 Catch:{ JSONException -> 0x01de }
        r0 = r13;
        r1 = r14;
        r2 = r20;
        r3 = r21;
        r13 = a(r0, r1, r2, r3);	 Catch:{ JSONException -> 0x01de }
        goto L_0x004b;
    L_0x00fd:
        r8 = "zPosition";
        r8 = r8.equals(r13);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x012a;
    L_0x0105:
        r8 = "F";
        r8 = r8.equals(r14);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x012a;
    L_0x010d:
        r0 = r16;
        r1 = r12;
        r13 = r0.getDouble(r1);	 Catch:{ JSONException -> 0x01de }
        r13 = (float) r13;	 Catch:{ JSONException -> 0x01de }
        r0 = r16;
        r1 = r6;
        r21 = r0.getDouble(r1);	 Catch:{ JSONException -> 0x01de }
        r0 = r21;
        r0 = (float) r0;	 Catch:{ JSONException -> 0x01de }
        r14 = r0;
        r0 = r13;
        r1 = r14;
        r2 = r20;
        r13 = a(r0, r1, r2);	 Catch:{ JSONException -> 0x01de }
        goto L_0x004b;
    L_0x012a:
        r8 = "backgroundColor";
        r8 = r8.equals(r13);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x015a;
    L_0x0132:
        r8 = "C";
        r8 = r8.equals(r14);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x015a;
    L_0x013a:
        r0 = r16;
        r1 = r12;
        r13 = r0.getJSONArray(r1);	 Catch:{ JSONException -> 0x01de }
        r13 = c(r13);	 Catch:{ JSONException -> 0x01de }
        r0 = r16;
        r1 = r6;
        r14 = r0.getJSONArray(r1);	 Catch:{ JSONException -> 0x01de }
        r14 = c(r14);	 Catch:{ JSONException -> 0x01de }
        r0 = r13;
        r1 = r14;
        r2 = r20;
        r13 = a(r0, r1, r2);	 Catch:{ JSONException -> 0x01de }
        goto L_0x004b;
    L_0x015a:
        r8 = "transform";
        r8 = r8.equals(r13);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x019c;
    L_0x0162:
        r8 = "AT";
        r8 = r8.equals(r14);	 Catch:{ JSONException -> 0x01de }
        if (r8 == 0) goto L_0x019c;
    L_0x016a:
        if (r23 == 0) goto L_0x01db;
    L_0x016c:
        r0 = r16;
        r1 = r12;
        r13 = r0.getJSONArray(r1);	 Catch:{ JSONException -> 0x01de }
        a(r13);	 Catch:{ JSONException -> 0x01de }
        r0 = r16;
        r1 = r6;
        r13 = r0.getJSONArray(r1);	 Catch:{ JSONException -> 0x01de }
        a(r13);	 Catch:{ JSONException -> 0x01de }
        r0 = r23;
        r1 = r12;
        r13 = r0.getJSONArray(r1);	 Catch:{ JSONException -> 0x01de }
        r0 = r23;
        r1 = r6;
        r14 = r0.getJSONArray(r1);	 Catch:{ JSONException -> 0x01de }
        r0 = r20;
        r1 = r21;
        r2 = r22;
        r3 = r13;
        r4 = r14;
        r13 = a(r0, r1, r2, r3, r4);	 Catch:{ JSONException -> 0x01de }
        goto L_0x004b;
    L_0x019c:
        r16 = "AdMobSDK";
        r20 = 6;
        r0 = r16;
        r1 = r20;
        r16 = android.util.Log.isLoggable(r0, r1);	 Catch:{ JSONException -> 0x01de }
        if (r16 == 0) goto L_0x01db;
    L_0x01aa:
        r16 = "AdMobSDK";
        r20 = new java.lang.StringBuilder;	 Catch:{ JSONException -> 0x01de }
        r20.<init>();	 Catch:{ JSONException -> 0x01de }
        r21 = "Could not read keyframe animation: could not interpret keyPath(";
        r20 = r20.append(r21);	 Catch:{ JSONException -> 0x01de }
        r0 = r20;
        r1 = r13;
        r13 = r0.append(r1);	 Catch:{ JSONException -> 0x01de }
        r20 = ") and valueType(";
        r0 = r13;
        r1 = r20;
        r13 = r0.append(r1);	 Catch:{ JSONException -> 0x01de }
        r13 = r13.append(r14);	 Catch:{ JSONException -> 0x01de }
        r14 = ") combination.";
        r13 = r13.append(r14);	 Catch:{ JSONException -> 0x01de }
        r13 = r13.toString();	 Catch:{ JSONException -> 0x01de }
        r0 = r16;
        r1 = r13;
        android.util.Log.e(r0, r1);	 Catch:{ JSONException -> 0x01de }
    L_0x01db:
        r13 = r5;
        goto L_0x004b;
    L_0x01de:
        r13 = move-exception;
    L_0x01df:
        r13 = r5;
        goto L_0x004b;
        */
    }

    private static Animation a(View view, Rect rect, JSONObject jSONObject, JSONArray jSONArray, JSONArray jSONArray2) throws JSONException {
        String optString = jSONObject.optString("tt", null);
        if (optString != null && "t".equals(optString)) {
            return a(e(jSONArray), e(jSONArray2), view, rect);
        }
        float[] b;
        if ("r".equals(optString)) {
            b = b(jSONArray);
            float[] b2 = b(jSONArray2);
            if (b == null || b2 == null || Arrays.equals(b, b2)) {
                return null;
            }
            PointF a = a(new RectF(rect), f.b(view));
            return new j(b, b2, a.x, a.y, 0.0f, false);
        } else if ("sc".equals(optString)) {
            float[] b3 = b(jSONArray);
            float[] b4 = b(jSONArray2);
            PointF b5 = f.b(view);
            return new ScaleAnimation(b3[0], b4[0], b3[1], b4[1], 1, b5.x, 1, b5.y);
        } else if ("sk".equals(optString)) {
            float[] b6 = b(jSONArray);
            b = b(jSONArray2);
            if (b6 == null || b == null || Arrays.equals(b6, b)) {
                return null;
            }
            return new p(b6, b, a(new RectF(rect), f.b(view)));
        } else {
            "p".equals(optString);
        }
        return null;
    }

    private AnimationSet a(JSONArray jSONArray, JSONObject jSONObject, View view, Rect rect) throws JSONException {
        Animation animationSet = new AnimationSet(false);
        int i = 0;
        while (i < jSONArray.length()) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            Animation animation = null;
            String optString = jSONObject2.optString("t", null);
            int a = (int) (((double) a(jSONObject2, "d", 0.25f)) * 1000.0d);
            if ("B".equals(optString)) {
                Animation animation2;
                optString = jSONObject2.optString("kp", null);
                String optString2 = jSONObject2.optString("vt", null);
                boolean z;
                if (optString == null || optString2 == null) {
                    if (Log.isLoggable(AdManager.LOG, Config.ACTIVITY_ID_STATS)) {
                        Log.e(AdManager.LOG, "Could not read basic animation: keyPath(" + optString + ") or valueType(" + optString2 + ") is null.");
                        z = false;
                    }
                    z = false;
                } else if ("position".equals(optString) && "P".equals(optString2)) {
                    l lVar = a(a(jSONObject2, "fv", e), a(jSONObject2, "tv", f), view, rect);
                } else if ("opacity".equals(optString) && "F".equals(optString2)) {
                    m mVar = a(a(jSONObject2, "fv", 0.0f), a(jSONObject2, "tv", 0.0f));
                } else if ("transform".equals(optString) && "AT".equals(optString2)) {
                    a(jSONObject2, "fv", h);
                    a(jSONObject2, "fv", h);
                    animation2 = a(view, rect, jSONObject2, jSONObject2.getJSONArray("tfv"), jSONObject2.getJSONArray("ttv"));
                } else if ("bounds".equals(optString) && "R".equals(optString2)) {
                    n nVar = a(a(jSONObject2, "fv", i), a(jSONObject2, "tv", i), null, rect);
                } else if ("zPosition".equals(optString) && "F".equals(optString2)) {
                    b bVar = a(a(jSONObject2, "fv", 0.0f), a(jSONObject2, "tv", 0.0f), view);
                } else if ("backgroundColor".equals(optString) && "C".equals(optString2)) {
                    k kVar = a(a(jSONObject2, "fv", 0), a(jSONObject2, "tv", 0), view);
                } else {
                    if (Log.isLoggable(AdManager.LOG, Config.ACTIVITY_ID_STATS)) {
                        Log.e(AdManager.LOG, "Could not read basic animation: could not interpret keyPath(" + optString + ") and valueType(" + optString2 + ") combination.");
                    }
                    z = false;
                }
                if (animation2 != null) {
                    Interpolator a2 = a(jSONObject2.optString("tf", null), -1, -1, -1);
                    if (a2 == null) {
                        a2 = null;
                    }
                    if (a2 != null) {
                        animation2.setInterpolator(a2);
                    }
                }
                animation = animation2;
            } else if ("K".equals(optString)) {
                animation = a(jSONObject2, view, rect, (long) a);
            }
            if (animation != null) {
                animation.setDuration((long) a);
                a(jSONObject2, animation, (AnimationSet)animationSet);
                animationSet.addAnimation(animation);
                animation.getDuration();
            }
            i++;
        }
        if (jSONObject != null) {
            a(jSONObject, animationSet, null);
        }
        return animationSet;
    }

    private AnimationSet a(JSONObject jSONObject, View view, Rect rect, long j) throws JSONException {
        String string = jSONObject.getString("vt");
        float[] b = b(jSONObject, "kt");
        JSONArray jSONArray = jSONObject.getJSONArray("vs");
        String[] a = a(jSONObject, "tfs");
        JSONArray optJSONArray = jSONObject.optJSONArray("ttvs");
        int length = b.length;
        int length2 = jSONArray.length();
        int length3 = a.length;
        if (!(length == length2 && length2 == length3 + 1) && ((double) b[0]) == 0.0d && ((double) b[length - 1]) == 1.0d) {
            if (Log.isLoggable(AdManager.LOG, Config.ACTIVITY_ID_STATS)) {
                Log.e(AdManager.LOG, "keyframe animations were invalid: numKeyTimes=" + length + " numKeyValues=" + length2 + " numKeyFunctions=" + length3 + " keyTimes[0]=" + b[0] + " keyTimes[" + (length - 1) + "]=" + b[length - 1]);
            }
            return null;
        } else {
            Animation animationSet = animation;
            boolean z = false;
            String string2 = jSONObject.getString("kp");
            int e = e(jSONObject);
            length2 = 0;
            while (length2 < length - 1) {
                Animation a2 = a(length2, string2, string, b, jSONArray, a, j, view, rect, jSONObject, optJSONArray);
                if (a2 != null) {
                    a2.setRepeatCount(e);
                    animation.addAnimation(a2);
                }
                length2++;
            }
            a(jSONObject.optString("fm", "r"), animation);
            return animation;
        }
    }

    private static Interpolator a(String str, long j, long j2, long j3) {
        if ("i".equals(str)) {
            AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        } else if ("o".equals(str)) {
            DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
        } else if ("io".equals(str)) {
            AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        } else if ("l".equals(str)) {
            LinearInterpolator linearInterpolator = new LinearInterpolator();
        } else {
            Interpolator interpolator = null;
        }
        return (interpolator == null || j == -1 || j2 == -1 || j3 == -1) ? interpolator : new c(interpolator, j, j2, j3);
    }

    private static b a(float f, float f2, View view) {
        return f != f2 ? new b(f, f2, view) : null;
    }

    public static d a(a aVar, JSONObject jSONObject, int i, int i2, int i3, g gVar) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return null;
        }
        d dVar = new d();
        dVar.v = aVar;
        dVar.w = i;
        dVar.x = i2;
        dVar.y = i3;
        dVar.b = gVar;
        return dVar.c(jSONObject) ? dVar : null;
    }

    private static k a(int i, int i2, View view) {
        return i != i2 ? new k(i, i2, view) : null;
    }

    private static l a(PointF pointF, PointF pointF2, View view, Rect rect) {
        if (pointF.equals(pointF2)) {
            return null;
        }
        PointF b = f.b(view);
        float width = ((float) rect.width()) * b.x + ((float) rect.left);
        float height = b.y * ((float) rect.height()) + ((float) rect.top);
        pointF.x -= width;
        pointF.y -= height;
        pointF2.x -= width;
        pointF2.y -= height;
        return new l(0, pointF.x, 0, pointF2.x, 0, pointF.y, 0, pointF2.y);
    }

    private static m a(float f, float f2) {
        return f != f2 ? new m(f, f2) : null;
    }

    private static n a(RectF rectF, RectF rectF2, View view, Rect rect) {
        if (rectF.equals(rectF2)) {
            return null;
        }
        PointF a = a(rectF, f.b(view));
        float width = (float) rect.width();
        float height = (float) rect.height();
        return new n(rectF.width() / width, rectF2.width() / width, rectF.height() / height, rectF2.height() / height, a.x, a.y);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(android.os.Bundle r7, java.lang.String r8, org.json.JSONArray r9) {
        throw new UnsupportedOperationException("Method not decompiled: com.admob.android.ads.d.a(android.os.Bundle, java.lang.String, org.json.JSONArray):void");
        /*
        r6 = 6;
        r4 = 0;
        r5 = "AdMobSDK";
        if (r8 == 0) goto L_0x0045;
    L_0x0006:
        if (r9 == 0) goto L_0x0045;
    L_0x0008:
        r0 = new java.util.Vector;
        r0.<init>();
        r1 = r9.length();
        r2 = r4;
    L_0x0012:
        if (r2 >= r1) goto L_0x002e;
    L_0x0014:
        r3 = r9.get(r2);	 Catch:{ JSONException -> 0x001e }
        r0.add(r3);	 Catch:{ JSONException -> 0x001e }
        r2 = r2 + 1;
        goto L_0x0012;
    L_0x001e:
        r2 = move-exception;
        r2 = "AdMobSDK";
        r2 = android.util.Log.isLoggable(r5, r6);
        if (r2 == 0) goto L_0x002e;
    L_0x0027:
        r2 = "AdMobSDK";
        r2 = "couldn't read bundle array while adding extras";
        android.util.Log.e(r5, r2);
    L_0x002e:
        if (r1 == 0) goto L_0x0045;
    L_0x0030:
        r1 = 0;
        r1 = r0.get(r1);	 Catch:{ ArrayStoreException -> 0x0069 }
        r2 = r1 instanceof java.lang.String;	 Catch:{ ArrayStoreException -> 0x0069 }
        if (r2 == 0) goto L_0x0046;
    L_0x0039:
        r1 = 0;
        r1 = new java.lang.String[r1];	 Catch:{ ArrayStoreException -> 0x0069 }
        r0 = r0.toArray(r1);	 Catch:{ ArrayStoreException -> 0x0069 }
        r0 = (java.lang.String[]) r0;	 Catch:{ ArrayStoreException -> 0x0069 }
        r7.putStringArray(r8, r0);	 Catch:{ ArrayStoreException -> 0x0069 }
    L_0x0045:
        return;
    L_0x0046:
        r2 = r1 instanceof java.lang.Integer;	 Catch:{ ArrayStoreException -> 0x0069 }
        if (r2 == 0) goto L_0x007a;
    L_0x004a:
        r1 = 0;
        r1 = new java.lang.Integer[r1];	 Catch:{ ArrayStoreException -> 0x0069 }
        r0 = r0.toArray(r1);	 Catch:{ ArrayStoreException -> 0x0069 }
        r0 = (java.lang.Integer[]) r0;	 Catch:{ ArrayStoreException -> 0x0069 }
        r1 = r0.length;	 Catch:{ ArrayStoreException -> 0x0069 }
        r1 = new int[r1];	 Catch:{ ArrayStoreException -> 0x0069 }
        r2 = r4;
    L_0x0057:
        r3 = r0.length;	 Catch:{ ArrayStoreException -> 0x0069 }
        if (r2 >= r3) goto L_0x0065;
    L_0x005a:
        r3 = r0[r2];	 Catch:{ ArrayStoreException -> 0x0069 }
        r3 = r3.intValue();	 Catch:{ ArrayStoreException -> 0x0069 }
        r1[r2] = r3;	 Catch:{ ArrayStoreException -> 0x0069 }
        r2 = r2 + 1;
        goto L_0x0057;
    L_0x0065:
        r7.putIntArray(r8, r1);	 Catch:{ ArrayStoreException -> 0x0069 }
        goto L_0x0045;
    L_0x0069:
        r0 = move-exception;
        r0 = "AdMobSDK";
        r0 = android.util.Log.isLoggable(r5, r6);
        if (r0 == 0) goto L_0x0045;
    L_0x0072:
        r0 = "AdMobSDK";
        r0 = "Couldn't read in array when making extras";
        android.util.Log.e(r5, r0);
        goto L_0x0045;
    L_0x007a:
        r2 = r1 instanceof java.lang.Boolean;	 Catch:{ ArrayStoreException -> 0x0069 }
        if (r2 == 0) goto L_0x009d;
    L_0x007e:
        r1 = 0;
        r1 = new java.lang.Boolean[r1];	 Catch:{ ArrayStoreException -> 0x0069 }
        r0 = r0.toArray(r1);	 Catch:{ ArrayStoreException -> 0x0069 }
        r0 = (java.lang.Boolean[]) r0;	 Catch:{ ArrayStoreException -> 0x0069 }
        r1 = r0.length;	 Catch:{ ArrayStoreException -> 0x0069 }
        r1 = new boolean[r1];	 Catch:{ ArrayStoreException -> 0x0069 }
        r2 = r4;
    L_0x008b:
        r3 = r1.length;	 Catch:{ ArrayStoreException -> 0x0069 }
        if (r2 >= r3) goto L_0x0099;
    L_0x008e:
        r3 = r0[r2];	 Catch:{ ArrayStoreException -> 0x0069 }
        r3 = r3.booleanValue();	 Catch:{ ArrayStoreException -> 0x0069 }
        r1[r2] = r3;	 Catch:{ ArrayStoreException -> 0x0069 }
        r2 = r2 + 1;
        goto L_0x008b;
    L_0x0099:
        r7.putBooleanArray(r8, r1);	 Catch:{ ArrayStoreException -> 0x0069 }
        goto L_0x0045;
    L_0x009d:
        r2 = r1 instanceof java.lang.Double;	 Catch:{ ArrayStoreException -> 0x0069 }
        if (r2 == 0) goto L_0x00c0;
    L_0x00a1:
        r1 = 0;
        r1 = new java.lang.Double[r1];	 Catch:{ ArrayStoreException -> 0x0069 }
        r0 = r0.toArray(r1);	 Catch:{ ArrayStoreException -> 0x0069 }
        r0 = (java.lang.Double[]) r0;	 Catch:{ ArrayStoreException -> 0x0069 }
        r1 = r0.length;	 Catch:{ ArrayStoreException -> 0x0069 }
        r1 = new double[r1];	 Catch:{ ArrayStoreException -> 0x0069 }
        r2 = r4;
    L_0x00ae:
        r3 = r1.length;	 Catch:{ ArrayStoreException -> 0x0069 }
        if (r2 >= r3) goto L_0x00bc;
    L_0x00b1:
        r3 = r0[r2];	 Catch:{ ArrayStoreException -> 0x0069 }
        r3 = r3.doubleValue();	 Catch:{ ArrayStoreException -> 0x0069 }
        r1[r2] = r3;	 Catch:{ ArrayStoreException -> 0x0069 }
        r2 = r2 + 1;
        goto L_0x00ae;
    L_0x00bc:
        r7.putDoubleArray(r8, r1);	 Catch:{ ArrayStoreException -> 0x0069 }
        goto L_0x0045;
    L_0x00c0:
        r1 = r1 instanceof java.lang.Long;	 Catch:{ ArrayStoreException -> 0x0069 }
        if (r1 == 0) goto L_0x0045;
    L_0x00c4:
        r1 = 0;
        r1 = new java.lang.Long[r1];	 Catch:{ ArrayStoreException -> 0x0069 }
        r0 = r0.toArray(r1);	 Catch:{ ArrayStoreException -> 0x0069 }
        r0 = (java.lang.Long[]) r0;	 Catch:{ ArrayStoreException -> 0x0069 }
        r1 = r0.length;	 Catch:{ ArrayStoreException -> 0x0069 }
        r1 = new long[r1];	 Catch:{ ArrayStoreException -> 0x0069 }
        r2 = r4;
    L_0x00d1:
        r3 = r1.length;	 Catch:{ ArrayStoreException -> 0x0069 }
        if (r2 >= r3) goto L_0x00df;
    L_0x00d4:
        r3 = r0[r2];	 Catch:{ ArrayStoreException -> 0x0069 }
        r3 = r3.longValue();	 Catch:{ ArrayStoreException -> 0x0069 }
        r1[r2] = r3;	 Catch:{ ArrayStoreException -> 0x0069 }
        r2 = r2 + 1;
        goto L_0x00d1;
    L_0x00df:
        r7.putLongArray(r8, r1);	 Catch:{ ArrayStoreException -> 0x0069 }
        goto L_0x0045;
        */
    }

    private static void a(Animation animation, int i, int i2, float f, String str, boolean z) {
        if (z) {
            animation.setRepeatMode(R.styleable.com_admob_android_ads_AdView_secondaryTextColor);
        }
        animation.setRepeatCount(i);
        animation.setStartOffset((long) i2);
        animation.startNow();
        animation.scaleCurrentDuration(f);
        a(str, animation);
    }

    private void a(ImageView imageView, Bitmap bitmap, JSONObject jSONObject) {
        Bitmap bitmap2;
        float a = a(jSONObject, "bw", 0.5f);
        int a2 = a(jSONObject, "bdc", c);
        float a3 = a(jSONObject, "br", 6.5f);
        if (a < 1.0f) {
            a = 1.0f;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        try {
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            createBitmap.eraseColor(0);
            Canvas canvas = new Canvas(createBitmap);
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 1));
            float f = a3 + a;
            Path path = new Path();
            RectF rectF = new RectF(0.0f, 0.0f, (float) width, (float) height);
            path.addRoundRect(rectF, f, f, Direction.CCW);
            canvas.clipPath(path, Op.REPLACE);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, new Paint(3));
            canvas.clipRect(rectF, Op.REPLACE);
            Paint paint = new Paint(1);
            paint.setStrokeWidth(a);
            paint.setColor(a2);
            paint.setStyle(Style.STROKE);
            Path path2 = new Path();
            a /= 2.0f;
            path2.addRoundRect(new RectF(a, a, ((float) width) - a, ((float) height) - a), a3, a3, Direction.CCW);
            canvas.drawPath(path2, paint);
            if (bitmap != null) {
                bitmap.recycle();
            }
            bitmap2 = createBitmap;
        } catch (Throwable th) {
            bitmap2 = bitmap;
        }
        this.C.add(bitmap2);
        imageView.setImageBitmap(bitmap2);
    }

    static /* synthetic */ void a(d dVar) {
        if (dVar.v != null) {
            dVar.v.a(dVar);
        }
    }

    private void a(String str) {
        if (str != null && !"".equals(str)) {
            this.o.add(str);
        }
    }

    private static void a(String str, Animation animation) {
        String str2 = "r";
        if (str != null && animation != null) {
            try {
                Method method = animation.getClass().getMethod("setFillEnabled", new Class[]{Boolean.TYPE});
                if (method != null) {
                    method.invoke(animation, new Object[]{Boolean.valueOf(true)});
                }
            } catch (Exception e) {
            }
            if ("b".equals(str)) {
                animation.setFillBefore(true);
                animation.setFillAfter(false);
            } else {
                if (!"fb".equals(str)) {
                    String str3 = "r";
                    if (!str2.equals(str)) {
                        if ("f".equals(str)) {
                            animation.setFillBefore(false);
                            animation.setFillAfter(true);
                            return;
                        } else {
                            str3 = "r";
                            if (str2.equals(str)) {
                                animation.setFillBefore(false);
                                animation.setFillAfter(false);
                                return;
                            } else {
                                return;
                            }
                        }
                    }
                }
                animation.setFillBefore(true);
                animation.setFillAfter(true);
            }
        }
    }

    private void a(String str, boolean z) {
        if (str != null && !"".equals(str)) {
            this.p.add(new e(str, z));
        }
    }

    private void a(JSONObject jSONObject, Animation animation, Animation animation2) {
        float a = a(jSONObject, "bt", 0.0f);
        float a2 = a(jSONObject, "to", 0.0f);
        int e = e(jSONObject);
        boolean optBoolean = jSONObject.optBoolean("ar", false);
        String optString = jSONObject.optString("fm", "r");
        int i = (int) (((double) ((a + 0.0f) + a2)) * 1000.0d);
        float a3 = 1.0f / a(jSONObject, "s", 1.0f);
        a(animation, e, i, a3, optString, optBoolean);
        if (animation2 != null) {
            a(animation2, e, i, a3, optString, optBoolean);
        }
    }

    private boolean a(JSONObject jSONObject, d dVar) throws JSONException {
        try {
            int i;
            String string = jSONObject.getString("t");
            Rect a = a(a(jSONObject, "f", d));
            View view = null;
            boolean z;
            if ("l".equals(string)) {
                if (this.b != null) {
                    int i2;
                    Typeface create;
                    CharSequence string2 = jSONObject.getString("x");
                    float a2 = a(jSONObject, "fs", 13.0f);
                    JSONArray optJSONArray = jSONObject.optJSONArray("fa");
                    Typeface typeface = Typeface.DEFAULT;
                    if (optJSONArray != null) {
                        int i3 = 0;
                        i2 = 0;
                        while (i2 < optJSONArray.length()) {
                            String string3 = optJSONArray.getString(i2);
                            if ("b".equals(string3)) {
                                i3 |= 1;
                            } else if ("i".equals(string3)) {
                                i3 |= 2;
                            } else if ("m".equals(string3)) {
                                typeface = Typeface.MONOSPACE;
                            } else if ("s".equals(string3)) {
                                typeface = Typeface.SERIF;
                            } else if ("ss".equals(string3)) {
                                typeface = Typeface.SANS_SERIF;
                            }
                            i2++;
                        }
                        create = Typeface.create(typeface, i3);
                    } else {
                        create = typeface;
                    }
                    i2 = this.w;
                    if (jSONObject.has("fco")) {
                        int a3 = a(jSONObject, "fco", i2);
                        if (a3 != i2) {
                            i2 = a3;
                        }
                    } else if (jSONObject.optInt("fc", 0) == 1) {
                        i2 = this.x;
                    } else {
                        i2 = this.w;
                    }
                    boolean optBoolean = jSONObject.optBoolean("afstfw", true);
                    float a4 = a(jSONObject, "mfs", 8.0f);
                    int optInt = jSONObject.optInt("nol", 1);
                    q qVar = new q(this.b.getContext(), g.c());
                    qVar.b = optBoolean;
                    qVar.a = qVar.c * a4;
                    qVar.setBackgroundColor(0);
                    qVar.setText(string2);
                    qVar.setTextColor(i2);
                    qVar.setTextSize(1, a2);
                    qVar.setTypeface(create);
                    qVar.setLines(optInt);
                    q qVar2 = qVar;
                } else {
                    z = 0;
                }
                view = view;
                z = true;
            } else if ("bg".equals(string)) {
                view = a(jSONObject, a);
                i = 0;
            } else if ("i".equals(string)) {
                if (this.b != null) {
                    string = jSONObject.getString("$");
                    if (string != null) {
                        byte[] bArr = (byte[]) this.A.get(string);
                        if (bArr != null) {
                            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                            ImageView imageView = new ImageView(this.b.getContext());
                            imageView.setScaleType(ScaleType.FIT_XY);
                            ImageView imageView2;
                            if (jSONObject.optBoolean("b", false)) {
                                a(imageView, decodeByteArray, jSONObject);
                                imageView2 = imageView;
                            } else {
                                this.C.add(decodeByteArray);
                                imageView.setImageBitmap(decodeByteArray);
                                imageView2 = imageView;
                            }
                        }
                    } else if (Log.isLoggable(AdManager.LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                        Log.d(AdManager.LOG, "Could not find asset name " + jSONObject);
                    }
                    i = 0;
                } else {
                    z = 0;
                }
                view = view;
                z = true;
            } else if ("P".equals(string)) {
                view = this.b != null ? new View(this.b.getContext()) : null;
                z = true;
            } else {
                z = true;
            }
            if (view != null) {
                if (i != 0) {
                    view.setBackgroundColor(a(jSONObject, "bgc", 0));
                }
                PointF a5 = a(jSONObject, "ap", g);
                f c = f.c(view);
                c.b = a5;
                view.setTag(c);
                AnimationSet animationSet = null;
                JSONArray optJSONArray2 = jSONObject.optJSONArray("a");
                JSONObject optJSONObject = jSONObject.optJSONObject("ag");
                if (optJSONArray2 != null) {
                    animationSet = a(optJSONArray2, optJSONObject, view, a);
                }
                String optString = jSONObject.optString("ut", null);
                if (!(view == null || optString == null)) {
                    view.setTag(f.c(view));
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a.width(), a.height());
                layoutParams.addRule(9);
                layoutParams.addRule(GameParameters.DEFAULT_ERROR_MARGIN);
                layoutParams.setMargins(a.left, a.top, 0, 0);
                g gVar = new g();
                gVar.a = view;
                gVar.b = layoutParams;
                gVar.c = animationSet;
                dVar.a.add(gVar);
                if (jSONObject.optBoolean("cav") && this.b != null) {
                    this.b.a(view, layoutParams);
                }
                return true;
            } else {
                if (Log.isLoggable(AdManager.LOG, Config.ACTIVITY_ID_STATS)) {
                    Log.e(AdManager.LOG, "created a null view.");
                }
                return false;
            }
        } catch (JSONException e) {
            th = e;
            if (Log.isLoggable(AdManager.LOG, Config.ACTIVITY_ID_STATS)) {
                Throwable th2;
                Log.e(AdManager.LOG, "exception while trying to create a flex view.", th2);
            }
            return false;
        }
    }

    private static String[] a(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        int length = optJSONArray.length();
        try {
            String[] strArr = new String[length];
            int i = 0;
            while (i < length) {
                strArr[i] = optJSONArray.getString(i);
                i++;
            }
            return strArr;
        } catch (JSONException e) {
            return null;
        }
    }

    private void b(JSONObject jSONObject) {
        if (jSONObject != null) {
            String optString = jSONObject.optString("a", null);
            String optString2 = jSONObject.optString("d", null);
            int optInt = jSONObject.optInt("f", 268435456);
            Bundle d = d(jSONObject.optJSONObject("b"));
            Vector vector = this.n;
            Intent intent = new Intent(optString, Uri.parse(optString2));
            if (optInt != 0) {
                intent.addFlags(optInt);
            }
            if (d != null) {
                intent.putExtras(d);
            }
            vector.add(intent);
        }
    }

    private static float[] b(JSONArray jSONArray) {
        int length = jSONArray.length();
        try {
            float[] fArr = new float[length];
            int i = 0;
            while (i < length) {
                fArr[i] = (float) jSONArray.getDouble(i);
                i++;
            }
            return fArr;
        } catch (JSONException e) {
            return null;
        }
    }

    private static float[] b(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        return optJSONArray == null ? null : b(optJSONArray);
    }

    private static int c(JSONArray jSONArray) throws JSONException {
        return Color.argb((int) (jSONArray.getDouble(R.styleable.com_admob_android_ads_AdView_keywords) * 255.0d), (int) (jSONArray.getDouble(0) * 255.0d), (int) (jSONArray.getDouble(1) * 255.0d), (int) (jSONArray.getDouble(R.styleable.com_admob_android_ads_AdView_secondaryTextColor) * 255.0d));
    }

    private boolean c(JSONObject jSONObject) {
        f fVar;
        String str = AdManager.LOG;
        String optString = jSONObject.optString("jsonp_url", null);
        String optString2 = jSONObject.optString("tracking_url", null);
        a(optString, true);
        a(optString2, false);
        this.j = jSONObject.optString("text", null);
        optString2 = jSONObject.optString("6", null);
        this.k = jSONObject.optString("8", null);
        f fVar2 = f.d;
        if ("map".equals(optString2)) {
            fVar = f.a;
        } else if ("video".equals(optString2)) {
            fVar = f.b;
        } else if ("app".equals(optString2)) {
            fVar = f.c;
        } else if ("url".equals(optString2)) {
            fVar = f.d;
        } else if ("call".equals(optString2)) {
            fVar = f.e;
        } else if ("itunes".equals(optString2)) {
            fVar = f.f;
        } else if ("canvas".equals(optString2)) {
            fVar = f.g;
        } else if ("contact".equals(optString2)) {
            fVar = f.h;
        } else {
            fVar = fVar2;
        }
        this.q = fVar;
        if (fVar != f.g || this.b.getContext() instanceof Activity) {
            if (jSONObject.has("refreshInterval")) {
                this.E = jSONObject.optDouble("refreshInterval");
            }
            if (jSONObject.has("density")) {
                this.F = jSONObject.optDouble("density");
            } else {
                this.F = (double) g.c();
            }
            PointF a = a(jSONObject, "d", null);
            if (a == null) {
                a = new PointF(320.0f, 48.0f);
            }
            if (a.x < 0.0f || a.y < 0.0f) {
                return false;
            }
            int i = (int) a.x;
            int i2 = (int) a.y;
            this.t = i;
            this.u = i2;
            JSONObject optJSONObject = jSONObject.optJSONObject("ac");
            if (optJSONObject != null) {
                b(optJSONObject);
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("ac");
            if (optJSONArray != null) {
                i = 0;
                while (i < optJSONArray.length()) {
                    try {
                        b(optJSONArray.getJSONObject(i));
                    } catch (JSONException e) {
                        String str2 = AdManager.LOG;
                        if (Log.isLoggable(str, Config.ACTIVITY_ID_STATS)) {
                            str2 = AdManager.LOG;
                            Log.e(str, "Could not form an intent from ad action response: " + optJSONArray.toString());
                        }
                    }
                    i++;
                }
            }
            optString2 = jSONObject.optString("cpm_url", null);
            if (optString2 != null) {
                this.l = true;
                a(optString2);
            }
            optString2 = jSONObject.optString("tracking_pixel", null);
            if (optString2 != null) {
                try {
                } catch (MalformedURLException e2) {
                    try {
                        optString2 = URLEncoder.encode(optString2, "UTF-8");
                    } catch (UnsupportedEncodingException e3) {
                    }
                }
            }
            if (optString2 != null) {
                a(optString2);
            }
            optJSONObject = jSONObject.optJSONObject("markup");
            if (optJSONObject == null) {
                return false;
            }
            if (optString == null) {
                optString = AdManager.LOG;
                if (Log.isLoggable(str, Config.ACTIVITY_ID_STATS)) {
                    optString = AdManager.LOG;
                    Log.e(str, "Bad response:  didn't get clickURLString.  erroring out.");
                }
                return false;
            } else {
                this.z = optJSONObject;
                try {
                    n();
                    m();
                    double optDouble = this.z.optDouble("itid");
                    if (optDouble > 0.0d) {
                        this.s = (long) (optDouble * 1000.0d);
                    }
                } catch (JSONException e4) {
                    Throwable th = e4;
                    optString2 = AdManager.LOG;
                    if (Log.isLoggable(str, Config.ACTIVITY_ID_STATS)) {
                        optString2 = AdManager.LOG;
                        Log.e(str, "Could not read in the flex ad.", th);
                    }
                }
                l();
                if (k()) {
                    o();
                }
                return true;
            }
        } else {
            if (this.v != null) {
                this.v.a();
            }
            return false;
        }
    }

    private static RectF d_(JSONArray jSONArray) throws JSONException {
        float f = (float) jSONArray.getDouble(0);
        float f2 = (float) jSONArray.getDouble(1);
        return new RectF(f, f2, ((float) jSONArray.getDouble(R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) + f, ((float) jSONArray.getDouble(R.styleable.com_admob_android_ads_AdView_keywords)) + f2);
    }

    private static Bundle d_(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Bundle bundle;
        Iterator keys = jSONObject.keys();
        bundle = keys.hasNext() ? new Bundle() : null;
        while (keys.hasNext()) {
            String str = (String) keys.next();
            Object opt = jSONObject.opt(str);
            if (!(str == null || opt == null || str == null || opt == null)) {
                if (opt instanceof String) {
                    bundle.putString(str, (String) opt);
                } else if (opt instanceof Integer) {
                    bundle.putInt(str, ((Integer) opt).intValue());
                } else if (opt instanceof Boolean) {
                    bundle.putBoolean(str, ((Boolean) opt).booleanValue());
                } else if (opt instanceof Double) {
                    bundle.putDouble(str, ((Double) opt).doubleValue());
                } else if (opt instanceof Long) {
                    bundle.putLong(str, ((Long) opt).longValue());
                } else if (opt instanceof JSONObject) {
                    bundle.putBundle(str, d((JSONObject) opt));
                } else if (opt instanceof JSONArray) {
                    a(bundle, str, (JSONArray) opt);
                }
            }
        }
        return bundle;
    }

    private static int e(JSONObject jSONObject) {
        int a = (int) a(jSONObject, "rc", 1.0f);
        return a > 0 ? a - 1 : a;
    }

    private static PointF e(JSONArray jSONArray) throws JSONException {
        return new PointF((float) jSONArray.getDouble(0), (float) jSONArray.getDouble(1));
    }

    private void j() {
        String str = AdManager.LOG;
        if (this.b != null) {
            Context context = this.b.getContext();
            String str2;
            if (context != null) {
                PackageManager packageManager = context.getPackageManager();
                Iterator it = this.n.iterator();
                while (it.hasNext()) {
                    Intent intent = (Intent) it.next();
                    if (packageManager.resolveActivity(intent, 65536) != null) {
                        try {
                            context.startActivity(intent);
                            return;
                        } catch (Exception e) {
                        }
                    }
                }
                str2 = AdManager.LOG;
                if (Log.isLoggable(str, Config.ACTIVITY_ID_STATS)) {
                    str2 = AdManager.LOG;
                    Log.e(str, "Could not find a resolving intent on ad click");
                }
            } else {
                str2 = AdManager.LOG;
                if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                    str2 = AdManager.LOG;
                    Log.d(str, "Context null, not able to start Activity.");
                }
            }
        }
    }

    private boolean k() {
        return this.B == null || this.B.size() == 0;
    }

    private void l() {
        if (this.B != null) {
            synchronized (this.B) {
                Iterator it = this.B.iterator();
                while (it.hasNext()) {
                    ((r) it.next()).g();
                }
            }
        }
    }

    private void m() {
        String str = "ta";
        String str2 = AdManager.LOG;
        Rect rect = new Rect(0, 0, this.t, this.u);
        String str3 = "ta";
        if (this.z.has(str)) {
            try {
                JSONArray jSONArray = this.z.getJSONArray("ta");
                int i = jSONArray.getInt(0);
                int i2 = jSONArray.getInt(1);
                Rect rect2 = new Rect(i, i2, jSONArray.getInt(R.styleable.com_admob_android_ads_AdView_secondaryTextColor) + i, jSONArray.getInt(R.styleable.com_admob_android_ads_AdView_keywords) + i2);
                if (Math.abs(rect2.width()) >= 44 && Math.abs(rect2.height()) >= 44) {
                    rect = rect2;
                }
            } catch (JSONException e) {
                String str4 = AdManager.LOG;
                if (Log.isLoggable(str2, R.styleable.com_admob_android_ads_AdView_keywords)) {
                    str4 = AdManager.LOG;
                    Log.d(str2, "could not read in the touchable area for the ad.");
                }
            }
        }
        this.r = rect;
    }

    private void n() throws JSONException {
        JSONObject optJSONObject = this.z.optJSONObject("$");
        if (optJSONObject != null) {
            Iterator keys = optJSONObject.keys();
            if (this.B != null) {
                synchronized (this.B) {
                    if (this.b != null) {
                        Context context = this.b.getContext();
                        while (keys.hasNext()) {
                            String str = (String) keys.next();
                            this.B.add(e.a(optJSONObject.getJSONObject(str).getString("u"), str, AdManager.getUserId(context), this));
                        }
                    }
                }
            }
        }
    }

    private void o() {
        String str = AdManager.LOG;
        if (this.z != null) {
            JSONObject jSONObject = this.z;
            this.z = null;
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray("v");
                if (optJSONArray != null) {
                    d dVar = new d(this.b, this);
                    int i = 0;
                    while (i < optJSONArray.length()) {
                        if (!a(optJSONArray.getJSONObject(i), dVar)) {
                            if (this.v != null) {
                                this.v.a();
                                break;
                            }
                        } else {
                            i++;
                        }
                    }
                    AdView.a.post(dVar);
                    if (this.B != null) {
                        synchronized (this.B) {
                            this.B.clear();
                            this.B = null;
                        }
                    }
                    if (this.A != null) {
                        this.A.clear();
                        this.A = null;
                    }
                } else {
                    if (this.v != null) {
                        this.v.a();
                    }
                    if (this.B != null) {
                        synchronized (this.B) {
                            this.B.clear();
                            this.B = null;
                        }
                    }
                    if (this.A != null) {
                        this.A.clear();
                        this.A = null;
                    }
                }
            } catch (JSONException e) {
                Throwable th = e;
                String str2 = AdManager.LOG;
                if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                    str2 = AdManager.LOG;
                    Log.d(str, "couldn't construct the views.", th);
                }
            }
        }
    }

    private void p() {
        if (this.B != null) {
            synchronized (this.B) {
                Iterator it = this.B.iterator();
                while (it.hasNext()) {
                    ((r) it.next()).b();
                }
                this.B.clear();
                this.B = null;
            }
        }
        if (this.A != null) {
            this.A.clear();
            this.A = null;
        }
        this.z = null;
        if (this.v != null) {
            this.v.a();
        }
    }

    final double a() {
        return this.E;
    }

    final int a(int i) {
        double d = (double) i;
        if (this.F > 0.0d) {
            d *= this.F;
        }
        return (int) d;
    }

    final Rect a(Rect rect) {
        Rect rect2 = new Rect(rect);
        if (this.F > 0.0d) {
            rect2.left = a(rect.left);
            rect2.top = a(rect.top);
            rect2.right = a(rect.right);
            rect2.bottom = a(rect.bottom);
        }
        return rect2;
    }

    public final View a(Context context, String str, String str2, int i, int i2) {
        View relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(0);
        relativeLayout.setGravity(17);
        View adMobWebView = new AdMobWebView(context, relativeLayout, str2);
        adMobWebView.setBackgroundColor(-1);
        adMobWebView.setId(1);
        relativeLayout.addView(adMobWebView, new RelativeLayout.LayoutParams(a(i), a(i2)));
        adMobWebView.b = str + "#sdk";
        adMobWebView.loadUrl("http://mm.admob.com/static/android/canvas.html");
        return relativeLayout;
    }

    public final void a(b bVar) {
        this.D = bVar;
    }

    public final void a(g gVar) {
        this.b = gVar;
    }

    public final void a(r rVar) {
        String str = AdManager.LOG;
        String e = rVar.e();
        Object d = rVar.d();
        if (d != null) {
            this.A.put(e, d);
            if (this.B != null) {
                synchronized (this.B) {
                    this.B.remove(rVar);
                }
            }
            if (k()) {
                o();
            }
        } else {
            String str2 = AdManager.LOG;
            if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                str2 = AdManager.LOG;
                Log.d(str, "Failed reading asset(" + e + ") for ad");
            }
            p();
        }
    }

    public final void a(r rVar, Exception exception) {
        String str = "Failed downloading assets for ad: ";
        String str2 = " ";
        String str3 = AdManager.LOG;
        String str4;
        URL f;
        String str5;
        String str6;
        String str7;
        String str8;
        StringBuilder append;
        if (exception != null) {
            str4 = AdManager.LOG;
            if (Log.isLoggable(str3, R.styleable.com_admob_android_ads_AdView_keywords)) {
                if (rVar != null) {
                    str4 = rVar.e();
                    f = rVar.f();
                    if (f != null) {
                        str5 = f.toString();
                        str6 = str4;
                        str4 = str5;
                    } else {
                        str6 = str4;
                        str4 = null;
                    }
                } else {
                    str4 = null;
                    str6 = null;
                }
                str7 = AdManager.LOG;
                str8 = "Failed downloading assets for ad: ";
                append = new StringBuilder().append(str).append(str6);
                str7 = " ";
                Log.d(str3, append.append(str2).append(str4).toString(), exception);
            }
        } else {
            str4 = AdManager.LOG;
            if (Log.isLoggable(str3, R.styleable.com_admob_android_ads_AdView_keywords)) {
                if (rVar != null) {
                    str4 = rVar.e();
                    f = rVar.f();
                    if (f != null) {
                        str5 = f.toString();
                        str6 = str4;
                        str4 = str5;
                    } else {
                        str6 = str4;
                        str4 = null;
                    }
                } else {
                    str4 = null;
                    str6 = null;
                }
                str7 = AdManager.LOG;
                str8 = "Failed downloading assets for ad: ";
                append = new StringBuilder().append(str).append(str6);
                str7 = " ";
                Log.d(str3, append.append(str2).append(str4).toString());
            }
        }
        p();
    }

    public final void a(JSONObject jSONObject) {
        String str = AdManager.LOG;
        String str2;
        if (this.m) {
            str2 = AdManager.LOG;
            Log.i(str, "Ad clicked again.  Stats on admob.com will only reflect the first click.");
        } else {
            this.m = true;
            str2 = AdManager.LOG;
            Log.i(str, "Ad clicked.");
            if (this.b != null) {
                Context context = this.b.getContext();
                Iterator it = this.p.iterator();
                while (it.hasNext()) {
                    e eVar = (e) it.next();
                    h anonymousClass_2 = new AnonymousClass_2(this);
                    JSONObject jSONObject2 = null;
                    if (eVar.b) {
                        jSONObject2 = jSONObject;
                    }
                    e.a(eVar.a, "click_time_tracking", AdManager.getUserId(context), jSONObject2, anonymousClass_2).g();
                }
            }
        }
        switch (AnonymousClass_1.a[this.q.ordinal()]) {
            case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                Intent intent = (Intent) this.n.firstElement();
                if (intent != null) {
                    Uri data = intent.getData();
                    if (data != null) {
                        str = data.toString();
                        String str3 = this.k;
                        if (AdView.a != null) {
                            AdView.a.post(new c(str, str3, 320, 295, this));
                        }
                    }
                }
                break;
            default:
                j();
                break;
        }
        if (this.D != null) {
            this.D.a();
        }
    }

    public final g b() {
        return this.b;
    }

    public final long c() {
        return this.s;
    }

    final boolean d_() {
        return this.l;
    }

    public final int e() {
        return this.t;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        return toString().equals(((d) obj).toString());
    }

    public final int f() {
        return this.u;
    }

    public final Rect g() {
        if (this.r == null) {
            this.r = new Rect(0, 0, this.t, this.u);
        }
        return this.r;
    }

    final void h() {
        Iterator it = this.C.iterator();
        while (it.hasNext()) {
            Bitmap bitmap = (Bitmap) it.next();
            if (bitmap != null) {
                bitmap.recycle();
            }
        }
        this.C.clear();
    }

    public final int hashCode() {
        return toString().hashCode();
    }

    final void i() {
        if (this.b != null) {
            Context context = this.b.getContext();
            Iterator it = this.o.iterator();
            while (it.hasNext()) {
                e.a((String) it.next(), "impression_request", AdManager.getUserId(context)).g();
            }
        }
    }

    public final void onClick(View view) {
        if (this.b != null) {
            ((WindowManager) this.b.getContext().getSystemService("window")).removeView(this.a);
            AdView.b(this.a);
            this.a = null;
        }
    }

    public final String toString() {
        String str = this.j;
        return str == null ? "" : str;
    }
}