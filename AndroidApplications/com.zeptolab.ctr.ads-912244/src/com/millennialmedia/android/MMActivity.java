package com.millennialmedia.android;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.lang.ref.WeakReference;

public class MMActivity extends Activity {
    private static final String d = "MMActivity";
    long a;
    GestureDetector b;
    private MMBaseActivity c;

    private static class InterstitialGestureListener extends SimpleOnGestureListener {
        WeakReference a;

        public InterstitialGestureListener(MMActivity mMActivity) {
            this.a = new WeakReference(mMActivity);
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            MMActivity mMActivity = (MMActivity) this.a.get();
            if (mMActivity != null) {
                Event.a(MMAdImplController.a(mMActivity.a));
            }
            return false;
        }
    }

    void a() {
        super.onDestroy();
    }

    void a(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    void a(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    void a(Bundle bundle) {
        super.onCreate(bundle);
    }

    void a(boolean z) {
        super.onWindowFocusChanged(z);
    }

    boolean a(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    boolean a(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    void b() {
        super.onStart();
    }

    void b(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    void c() {
        super.onStop();
    }

    void c(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }

    void d() {
        super.onRestart();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.b != null) {
            this.b.onTouchEvent(motionEvent);
        }
        return this.c != null ? this.c.dispatchTouchEvent(motionEvent) : super.dispatchTouchEvent(motionEvent);
    }

    void e() {
        super.onResume();
    }

    void f() {
        super.onPause();
    }

    public void finish() {
        if (this.c != null) {
            this.c.finish();
        } else {
            Event.e(MMAdImplController.a(this.a));
            super.finish();
        }
    }

    public void finishSuper() {
        Event.e(MMAdImplController.a(this.a));
        super.finish();
    }

    Object g() {
        return super.onRetainNonConfigurationInstance();
    }

    protected MMBaseActivity h() {
        return this.c;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.c != null) {
            this.c.a(i, i2, intent);
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (this.c != null) {
            this.c.onConfigurationChanged(configuration);
        } else {
            super.onConfigurationChanged(configuration);
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object obj = null;
        this.a = getIntent().getLongExtra("internalId", -4);
        try {
            this.c = (MMBaseActivity) Class.forName(getIntent().getStringExtra("class")).newInstance();
            this.c.c = this;
            this.c.onCreate(bundle);
            this.b = new GestureDetector(getApplicationContext(), new InterstitialGestureListener(this));
        } catch (Exception e) {
            Throwable th = e;
            MMLog.e(d, String.format("Could not start activity for %s. ", new Object[]{obj}), th);
            th.printStackTrace();
            finish();
        }
    }

    protected void onDestroy() {
        if (this.c != null) {
            this.c.onDestroy();
        } else {
            super.onDestroy();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.c != null ? this.c.onKeyDown(i, keyEvent) : super.onKeyDown(i, keyEvent);
    }

    protected void onPause() {
        if (this.c != null) {
            this.c.e();
        } else {
            super.onPause();
        }
    }

    protected void onRestart() {
        if (this.c != null) {
            this.c.k();
        } else {
            super.onRestart();
        }
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        if (this.c != null) {
            this.c.b(bundle);
        } else {
            super.onRestoreInstanceState(bundle);
        }
    }

    protected void onResume() {
        if (this.c != null) {
            this.c.d();
        } else {
            super.onResume();
        }
    }

    public Object onRetainNonConfigurationInstance() {
        return this.c != null ? this.c.onRetainNonConfigurationInstance() : super.onRetainNonConfigurationInstance();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        if (this.c != null) {
            this.c.a(bundle);
        } else {
            super.onSaveInstanceState(bundle);
        }
    }

    protected void onStart() {
        if (this.c != null) {
            this.c.a();
        } else {
            super.onStart();
        }
    }

    protected void onStop() {
        if (this.c != null) {
            this.c.f();
        } else {
            super.onStop();
        }
    }

    public void onWindowFocusChanged(boolean z) {
        if (this.c != null) {
            this.c.onWindowFocusChanged(z);
        } else {
            super.onWindowFocusChanged(z);
        }
    }
}