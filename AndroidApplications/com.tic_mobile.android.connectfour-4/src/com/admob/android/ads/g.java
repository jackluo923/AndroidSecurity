package com.admob.android.ads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.tic_mobile.android.connectfour.Config;
import com.tic_mobile.android.connectfour.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Comparator;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

// compiled from: AdContainer.java
final class g extends RelativeLayout implements AnimationListener, com.admob.android.ads.b.a, b, s {
    private static float i;
    private static d j;
    protected d a;
    protected ProgressBar b;
    private final AdView c;
    private Vector<String> d;
    private View e;
    private long f;
    private boolean g;
    private View h;

    // compiled from: AdContainer.java
    protected static class a extends Thread {
        private JSONObject a;
        private WeakReference<g> b;

        public a(JSONObject jSONObject, g gVar) {
            this.a = jSONObject;
            this.b = new WeakReference(gVar);
        }

        public final void run() {
            String str;
            String str2 = AdManager.LOG;
            try {
                g gVar = (g) this.b.get();
                if (gVar != null && gVar.a != null) {
                    gVar.a.a(this.a);
                    if (gVar.c != null) {
                        gVar.c.performClick();
                    }
                }
            } catch (Exception e) {
                exception = e;
                str = AdManager.LOG;
                if (Log.isLoggable(str2, Config.ACTIVITY_ID_STATS)) {
                    Exception exception2;
                    str = AdManager.LOG;
                    Log.e(str2, "exception caught in AdClickThread.run(), " + exception2.getMessage());
                }
            }
        }
    }

    // compiled from: AdContainer.java
    private static class b implements Runnable {
        private WeakReference<g> a;

        public b(g gVar) {
            this.a = new WeakReference(gVar);
        }

        public final void run() {
            String str = AdManager.LOG;
            try {
                g gVar = (g) this.a.get();
                if (gVar != null) {
                    gVar.addView(gVar.b);
                }
            } catch (Exception e) {
                exception = e;
                str = AdManager.LOG;
                if (Log.isLoggable(str, Config.ACTIVITY_ID_STATS)) {
                    Exception exception2;
                    String str2;
                    str2 = AdManager.LOG;
                    Log.e(str, "exception caught in AdContainer post run(), " + exception2.getMessage());
                }
            }
        }
    }

    // compiled from: AdContainer.java
    private static class c implements Runnable {
        private WeakReference<g> a;

        public c(g gVar) {
            this.a = new WeakReference(gVar);
        }

        public final void run() {
            try {
                g gVar = (g) this.a.get();
                if (gVar != null) {
                    gVar.e();
                }
            } catch (Exception e) {
            }
        }
    }

    // compiled from: AdContainer.java
    static class d implements Comparator<View> {
        d() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            View view = (View) obj2;
            float a = f.a((View) obj);
            float a2 = f.a(view);
            if (a < a2) {
                return -1;
            }
            return a > a2 ? 1 : 0;
        }
    }

    static {
        i = -1.0f;
        j = null;
    }

    public g(d dVar, Context context, AdView adView) {
        super(context);
        this.f = -1;
        this.c = adView;
        setId(1);
        i = getResources().getDisplayMetrics().density;
        setBackgroundDrawable(context.getResources().getDrawable(17301602));
        Drawable drawable = context.getResources().getDrawable(17301602);
        drawable.setAlpha(128);
        this.e = new View(context);
        this.e.setBackgroundDrawable(drawable);
        this.e.setVisibility(R.styleable.com_admob_android_ads_AdView_refreshInterval);
        addView(this.e, new LayoutParams(-1, -1));
        a(null);
    }

    private static Vector<String> a(int i, int i2, int i3, long j, Vector<String> vector) {
        Vector<String> vector2;
        String format;
        String str = AdManager.LOG;
        vector2 = vector == null ? new Vector() : vector;
        float f = ((float) j) / 1000.0f;
        format = (i2 == -1 || i3 == -1) ? String.format("{%d,%f}", new Object[]{Integer.valueOf(i), Float.valueOf(f)}) : String.format("{%d,%d,%d,%f}", new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Float.valueOf(f)});
        vector2.add(format);
        String str2 = AdManager.LOG;
        if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) {
            str2 = AdManager.LOG;
            Log.v(str, "recordEvent:" + format);
        }
        return vector2;
    }

    private Vector<String> a(KeyEvent keyEvent, Vector<String> vector) {
        int action = keyEvent.getAction();
        long eventTime = keyEvent.getEventTime() - this.f;
        if (action != 0 && action != 1) {
            return vector;
        }
        return a(action == 1 ? 1 : 0, -1, -1, eventTime, vector);
    }

    private Vector<String> a(MotionEvent motionEvent, boolean z, Vector<String> vector) {
        int action = motionEvent.getAction();
        long eventTime = motionEvent.getEventTime() - this.f;
        if (action != 0 && action != 1) {
            return vector;
        }
        return a(action == 1 ? 1 : 0, (int) motionEvent.getX(), (int) motionEvent.getY(), eventTime, vector);
    }

    private static void a(View view, JSONObject jSONObject) {
        if (view instanceof s) {
            s sVar = (s) view;
            JSONObject i = sVar.i();
            String h = sVar.h();
            if (!(i == null || h == null)) {
                try {
                    jSONObject.put(h, i);
                } catch (Exception e) {
                }
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i2 = 0;
            while (i2 < viewGroup.getChildCount()) {
                a(viewGroup.getChildAt(i2), jSONObject);
                i2++;
            }
        }
    }

    static float c() {
        return i;
    }

    private boolean j() {
        return this.a != null && SystemClock.uptimeMillis() - this.f > this.a.c();
    }

    private void k() {
        if (this.a != null && isPressed()) {
            setPressed(false);
            if (!this.g) {
                this.g = true;
                JSONObject l = l();
                if ((this.h != null ? 1 : 0) != 0) {
                    Animation animationSet = new AnimationSet(true);
                    float width = ((float) this.h.getWidth()) / 2.0f;
                    float height = ((float) this.h.getHeight()) / 2.0f;
                    Animation scaleAnimation = new ScaleAnimation(1.0f, 1.2f, 1.0f, 1.2f, width, height);
                    scaleAnimation.setDuration(200);
                    animationSet.addAnimation(scaleAnimation);
                    scaleAnimation = new ScaleAnimation(1.2f, 0.001f, 1.2f, 0.001f, width, height);
                    scaleAnimation.setDuration(299);
                    scaleAnimation.setStartOffset(200);
                    scaleAnimation.setAnimationListener(this);
                    animationSet.addAnimation(scaleAnimation);
                    postDelayed(new a(l, this), 500);
                    this.h.startAnimation(animationSet);
                } else {
                    this.a.a(l);
                    if (this.c != null) {
                        this.c.performClick();
                    }
                }
            }
        }
    }

    private JSONObject l() {
        try {
            JSONObject jSONObject = new JSONObject();
            a(this, jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("interactions", jSONObject);
                return jSONObject2;
            } catch (Exception e) {
                th = e;
                jSONObject = jSONObject2;
                Log.w(AdManager.LOG, "Exception while processing interaction history.", th);
                return jSONObject;
            }
        } catch (Exception e2) {
            int i = 0;
            Throwable th2 = e2;
            Log.w(AdManager.LOG, "Exception while processing interaction history.", th2);
            return jSONObject;
        }
    }

    public final void a() {
        post(new c(this));
    }

    public final void a(View view, LayoutParams layoutParams) {
        if (view != null && view != this.h) {
            this.h = view;
            this.b = new ProgressBar(getContext());
            this.b.setIndeterminate(true);
            this.b.setId(R.styleable.com_admob_android_ads_AdView_secondaryTextColor);
            if (layoutParams != null) {
                this.b.setLayoutParams(layoutParams);
            }
            this.b.setVisibility(R.styleable.com_admob_android_ads_AdView_refreshInterval);
            post(new b(this));
        }
    }

    final void a(d dVar) {
        this.a = dVar;
        if (dVar == null) {
            setFocusable(false);
            setClickable(false);
        } else {
            dVar.a(this);
            setFocusable(true);
            setClickable(true);
        }
    }

    protected final d b() {
        return this.a;
    }

    final void d() {
        if (this.a != null) {
            this.a.h();
            this.a = null;
        }
    }

    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        String str = AdManager.LOG;
        int action = motionEvent.getAction();
        String str2 = AdManager.LOG;
        if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) {
            str2 = AdManager.LOG;
            Log.v(str, "dispatchTouchEvent: action=" + action + " x=" + motionEvent.getX() + " y=" + motionEvent.getY());
        }
        if (j()) {
            boolean z;
            if (this.a != null) {
                if (!this.a.a(this.a.g()).contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    z = false;
                    if (z) {
                        this.d = a(motionEvent, true, this.d);
                    }
                    if (action == 0) {
                        setPressed(z);
                    } else if (action == 2) {
                        setPressed(z);
                    } else if (action == 1) {
                        if (isPressed() && z) {
                            k();
                        }
                        setPressed(false);
                    } else if (action == 3) {
                        setPressed(false);
                    }
                }
            }
            z = true;
            if (z) {
                this.d = a(motionEvent, true, this.d);
            }
            if (action == 0) {
                setPressed(z);
            } else if (action == 2) {
                setPressed(z);
            } else if (action == 1) {
                k();
                setPressed(false);
            } else if (action == 3) {
                setPressed(false);
            }
        }
        return true;
    }

    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        String str = AdManager.LOG;
        String str2 = AdManager.LOG;
        if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) {
            str2 = AdManager.LOG;
            Log.v(str, "dispatchTrackballEvent: action=" + motionEvent.getAction());
        }
        if (j()) {
            this.d = a(motionEvent, true, this.d);
            if (motionEvent.getAction() == 0) {
                setPressed(true);
            } else if (motionEvent.getAction() == 1) {
                if (hasFocus()) {
                    k();
                }
                setPressed(false);
            }
        }
        return super.onTrackballEvent(motionEvent);
    }

    protected final void e() {
        this.g = false;
        if (this.b != null) {
            this.b.setVisibility(R.styleable.com_admob_android_ads_AdView_refreshInterval);
        }
        if (this.h != null) {
            this.h.setVisibility(0);
        }
    }

    public final void f() {
        Vector vector = new Vector();
        int i = 0;
        while (i < getChildCount()) {
            vector.add(getChildAt(i));
            i++;
        }
        if (j == null) {
            j = new d();
        }
        Collections.sort(vector, j);
        int i2 = vector.size() - 1;
        while (i2 >= 0) {
            if (indexOfChild((View) vector.elementAt(i2)) != i2) {
                bringChildToFront((View) vector.elementAt(i2));
            }
            i2--;
        }
        this.e.bringToFront();
    }

    public final long g_() {
        long uptimeMillis = SystemClock.uptimeMillis() - this.f;
        return (this.f < 0 || uptimeMillis < 0 || uptimeMillis > 10000000) ? 0 : uptimeMillis;
    }

    public final String h() {
        return "container";
    }

    public final JSONObject i() {
        JSONObject jSONObject = null;
        if (this.d != null) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("touches", new JSONArray(this.d));
            } catch (Exception e) {
            }
        }
        return jSONObject;
    }

    public final void onAnimationEnd(Animation animation) {
    }

    public final void onAnimationRepeat(Animation animation) {
    }

    public final void onAnimationStart(Animation animation) {
    }

    protected final void onDraw(Canvas canvas) {
        if (isPressed() || isFocused()) {
            canvas.clipRect(R.styleable.com_admob_android_ads_AdView_keywords, R.styleable.com_admob_android_ads_AdView_keywords, getWidth() - 3, getHeight() - 3);
        }
        super.onDraw(canvas);
        if (this.f == -1) {
            this.f = SystemClock.uptimeMillis();
            if (this.a != null) {
                this.a.i();
            }
        }
    }

    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        String str = AdManager.LOG;
        String str2 = AdManager.LOG;
        if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) {
            str2 = AdManager.LOG;
            Log.v(str, "onKeyDown: keyCode=" + i);
        }
        if (i == 66 || i == 23) {
            this.d = a(keyEvent, this.d);
            setPressed(true);
        }
        return super.onKeyDown(i, keyEvent);
    }

    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        String str = AdManager.LOG;
        String str2 = AdManager.LOG;
        if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_secondaryTextColor)) {
            str2 = AdManager.LOG;
            Log.v(str, "onKeyUp: keyCode=" + i);
        }
        if (j()) {
            if (i == 66 || i == 23) {
                this.d = a(keyEvent, this.d);
                k();
            }
        }
        setPressed(false);
        return super.onKeyUp(i, keyEvent);
    }

    public final void setPressed(boolean z) {
        if ((!this.g || !z) && isPressed() != z) {
            if (z) {
                if (this.e != null) {
                    this.e.bringToFront();
                }
                this.e.setVisibility(0);
            } else {
                this.e.setVisibility(R.styleable.com_admob_android_ads_AdView_refreshInterval);
            }
            super.setPressed(z);
            invalidate();
        }
    }
}