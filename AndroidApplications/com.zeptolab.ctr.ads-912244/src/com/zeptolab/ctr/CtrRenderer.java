package com.zeptolab.ctr;

import android.annotation.SuppressLint;
import android.opengl.GLSurfaceView.Renderer;
import android.provider.Settings.System;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.MotionEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.ads.OfflineInterstitialBanner;
import com.zeptolab.ctr.motion.CtrMotion;
import com.zeptolab.ctr.motion.CtrMultiMotion;
import com.zeptolab.ctr.motion.CtrSingleMotion;
import com.zeptolab.zframework.ZJNIManager;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class CtrRenderer implements Renderer {
    private static long DELTA_NANOS = 0;
    private static long DELTA_NANOS_THRES = 0;
    private static boolean DRAW_NOTHING = false;
    private static final int MAX_FINGERS_COUNT = 10;
    private static final float MAX_FINGERS_DELTA = 9.0f;
    private static final float MAX_FINGERS_DELTA_SQ = 81.0f;
    private static final int MAX_FINGERS_FLUSHED = 128;
    private static final long NANOS_IN_MILLI = 1000000;
    private static final long NANOS_IN_SECOND = 1000000000;
    private static final int NEED_PAUSE = 5;
    private static final int NEED_RESUME = 4;
    private static final int PAUSED = 3;
    private static final int RUNNING = 2;
    private static final long TICK_DELTA = 16;
    private static final float TICK_DELTA_FLOAT = 0.016f;
    private static final int UNINITIALIZED = 1;
    private static final int UNKNOWN = 0;
    private final List callbacks;
    private long[] fpsDeltas;
    private int fpsDeltasPos;
    public ZJNIManager jniManager;
    private CtrMotion motion;
    private long onResumeTimeStamp;
    private boolean playback;
    private long playedTicks;
    private long prevTick;
    private int state;
    private final Touch[] touches;
    private CtrView view;

    public static interface Callback {
        void call();
    }

    private static class Touch {
        static final int MOVE = 5;
        static final int NONE = 0;
        static final int START = 3;
        static final int WAIT_MOVE = 4;
        static final int WAIT_START = 2;
        static final int WAIT_STOP = 1;
        int status;
        float x;
        float y;

        private Touch() {
            this.status = 0;
            this.x = 0.0f;
            this.y = 0.0f;
        }
    }

    static {
        DELTA_NANOS = 18181818;
        DELTA_NANOS_THRES = (long) (((double) DELTA_NANOS) * 0.35d);
        DRAW_NOTHING = false;
    }

    public CtrRenderer(CtrView ctrView) {
        this.state = 0;
        this.onResumeTimeStamp = 0;
        this.playedTicks = 0;
        this.prevTick = 0;
        this.callbacks = Collections.synchronizedList(new LinkedList());
        this.playback = false;
        this.fpsDeltas = new long[10];
        this.fpsDeltasPos = 0;
        this.view = ctrView;
        this.motion = new CtrSingleMotion();
        try {
            MotionEvent obtain = MotionEvent.obtain(1, 1, PAUSED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 0, 1.0f, 1.0f, 0, 0);
            this.motion = new CtrMultiMotion();
            this.motion.getAction(obtain);
            this.motion.getActionIndex(obtain);
            this.motion.getPointerCount(obtain);
            this.motion.getPointerId(obtain, 0);
            this.motion.getX(obtain, 0);
            this.motion.getY(obtain, 0);
        } catch (Throwable th) {
            this.motion = new CtrSingleMotion();
        }
        this.touches = new Touch[10];
        int i = 0;
        while (i < 10) {
            this.touches[i] = new Touch();
            i++;
        }
    }

    public static native void interstitialWatched();

    private native boolean nativeBackPressed();

    private static native void nativeDestroy();

    private native void nativeDrawFps(int i);

    private static native void nativeInit(ZJNIManager zJNIManager);

    private native boolean nativeMenuPressed();

    private static native void nativePause();

    private native void nativePlaybackFinished(int i);

    private static native void nativeRender();

    private static native void nativeResize(int i, int i2, boolean z);

    private static native void nativeResume();

    private static native void nativeSurfaceCreated();

    private static native void nativeTick(float f);

    private native void nativeTouchAdd(int i, int i2, float f, float f2);

    private native void nativeTouchProcess();

    private void processTouches() {
        int i = 0;
        synchronized (this.touches) {
            while (i < 10) {
                Touch touch = this.touches[i];
                switch (touch.status) {
                    case UNINITIALIZED:
                        touch.status = 0;
                        nativeTouchAdd(i, 0, touch.x, touch.y);
                        break;
                    case RUNNING:
                        touch.status = 3;
                        nativeTouchAdd(i, UNINITIALIZED, touch.x, touch.y);
                        break;
                    case NEED_RESUME:
                        touch.status = 5;
                        nativeTouchAdd(i, RUNNING, touch.x, touch.y);
                        break;
                }
                i++;
            }
            nativeTouchProcess();
        }
    }

    public static native void videoBannerFinished();

    public static native void videoBannerRequestAdButton(OfflineInterstitialBanner offlineInterstitialBanner);

    public static native void videoBannerWatched(float f);

    public void addNativeInitCallback(Callback callback) {
        if (callback != null) {
            this.callbacks.add(callback);
        }
    }

    public boolean isPlayback() {
        return this.playback;
    }

    public boolean onBackPressed() {
        return nativeBackPressed();
    }

    public void onDestroy() {
        if (this.state != 1) {
            nativeDestroy();
            this.state = 1;
        }
    }

    public void onDrawFrame(GL10 gl10) {
        boolean z;
        long j = 1;
        int i = 0;
        if (DRAW_NOTHING) {
            L.i("CtrRenderer", "DrawNothing");
        } else if (this.state != 0) {
            if (this.state == 1) {
                L.i("CtrRenderer", "UNINITIALIZED");
                nativeInit(this.jniManager);
                this.state = 2;
                while (this.callbacks.size() > 0) {
                    ((Callback) this.callbacks.get(0)).call();
                    this.callbacks.remove(0);
                }
                try {
                    System.getInt(CtrApp.getInstance().getContentResolver(), "always_finish_activities", 0);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                this.view.hideSplashScreen();
            }
            if (this.state != 3) {
                int i2;
                if (this.state == 4) {
                    if (System.currentTimeMillis() - this.onResumeTimeStamp < 500) {
                        try {
                            Thread.sleep(200);
                            z = false;
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                            z = false;
                        }
                    } else if (CtrView.haveSurface) {
                        nativeResume();
                        nativeRender();
                        this.state = 2;
                        z = true;
                    } else {
                        z = false;
                    }
                    i = i2;
                } else if (this.state == 2 && CtrView.haveSurface) {
                    long nanoTime = System.nanoTime();
                    long j2 = nanoTime - this.prevTick;
                    this.prevTick = nanoTime;
                    if (j2 < 1) {
                        j2 = 1;
                    }
                    long[] jArr = this.fpsDeltas;
                    int i3 = this.fpsDeltasPos;
                    this.fpsDeltasPos = i3 + 1;
                    jArr[i3] = j2;
                    i3 = this.fpsDeltas.length;
                    if (this.fpsDeltasPos >= i3) {
                        this.fpsDeltasPos = 0;
                    }
                    j2 = 0;
                    i2 = 0;
                    while (i2 < i3) {
                        j2 += this.fpsDeltas[i2];
                        i2++;
                    }
                    if (j2 >= 1) {
                        j = j2;
                    }
                    i2 = (int) ((1000000000 * ((long) i3)) / j);
                    processTouches();
                    nativeTick(TICK_DELTA_FLOAT);
                    this.playedTicks += DELTA_NANOS;
                    if (nanoTime - this.playedTicks < DELTA_NANOS_THRES) {
                        if (this.playedTicks < nanoTime) {
                            this.playedTicks = nanoTime;
                        }
                    } else if (this.state == 2) {
                        processTouches();
                        nativeTick(TICK_DELTA_FLOAT);
                        this.playedTicks += DELTA_NANOS;
                        if (nanoTime - this.playedTicks > DELTA_NANOS_THRES) {
                            this.playedTicks = nanoTime - DELTA_NANOS_THRES;
                        }
                    }
                    if (this.state == 2) {
                        nativeRender();
                        nativeDrawFps(i2);
                        i = 1;
                    }
                    if (i2 > 62) {
                        try {
                            Thread.sleep((long) 9);
                        } catch (InterruptedException e3) {
                            e3.printStackTrace();
                        }
                    }
                }
            }
        }
        if (i == 0) {
            try {
                gl10.glClearColor(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
                gl10.glClear(AccessibilityNodeInfoCompat.ACTION_COPY);
            } catch (Exception e4) {
            }
        }
        synchronized (this.touches) {
            this.touches.notify();
        }
    }

    public boolean onMenuPressed() {
        return nativeMenuPressed();
    }

    public void onPause() {
        L.i("CtrRenderer", "CtrRenderer::onPause, state == " + this.state);
        if (this.state == 2 || this.state == 5) {
            nativePause();
            this.state = 3;
        }
    }

    public void onPlaybackFinished() {
        this.playback = false;
    }

    public void onPlaybackStarted() {
        CtrVideoPlayer ctrVideoPlayer = (CtrVideoPlayer) this.jniManager.get(CtrView.VideoPlayerJNIKey);
        if (ctrVideoPlayer != null) {
            nativePlaybackFinished(ctrVideoPlayer.getHandle());
            ctrVideoPlayer.getHandle();
            this.state = 5;
        }
        this.playback = true;
    }

    public void onPrePause() {
        DRAW_NOTHING = true;
    }

    public void onResume() {
        L.i("CtrRenderer", "CtrRenderer::onResume, state == " + this.state);
        if (this.state == 3) {
            this.state = 4;
            this.onResumeTimeStamp = System.currentTimeMillis();
            DRAW_NOTHING = false;
        }
    }

    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        L.i("CtrRenderer", "onSurfaceChanged");
        nativeResize(i, i2, CtrApp.isLowMem());
    }

    @SuppressLint({"NewApi"})
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        L.e("CtrRenderer", "onSurfaceCreated, state == " + this.state);
        if (this.state == 0) {
            this.state = 1;
        } else {
            nativeSurfaceCreated();
        }
    }

    public void onSuspend() {
        L.i("CtrRenderer", "CtrRenderer::onSuspend, state == " + this.state);
        if (this.state == 2 || this.state == 5) {
            this.state = 3;
        }
    }

    public boolean onTouch(MotionEvent motionEvent) {
        boolean z = true;
        int i = 0;
        synchronized (this.touches) {
            try {
                int action = this.motion.getAction(motionEvent);
                int i2;
                if (action == 1 || action == 3) {
                    action = this.motion.getPointerCount(motionEvent);
                    i2 = 0;
                    while (i2 < action) {
                        Touch touch = this.touches[this.motion.getPointerId(motionEvent, i2)];
                        if (touch.status == 2) {
                            touch.status = 0;
                        }
                        if (touch.status != 0) {
                            touch.status = 1;
                            touch.x = this.motion.getX(motionEvent, i2);
                            touch.y = this.motion.getY(motionEvent, i2);
                        }
                        i2++;
                    }
                    while (i < 10) {
                        Touch touch2 = this.touches[i];
                        if (touch2.status == 2) {
                            touch2.status = 0;
                        } else if (touch2.status != 0) {
                            touch2.status = 1;
                        }
                        i++;
                    }
                    try {
                        this.touches.wait(100);
                    } catch (Exception e) {
                    }
                } else {
                    if (action == 0) {
                        Touch touch3;
                        i2 = 0;
                        while (i2 < 10) {
                            touch3 = this.touches[i2];
                            if (touch3.status == 2) {
                                touch3.status = 0;
                            } else if (touch3.status != 0) {
                                touch3.status = 1;
                            }
                            i2++;
                        }
                        i2 = this.motion.getPointerCount(motionEvent);
                        while (i < i2) {
                            touch3 = this.touches[this.motion.getPointerId(motionEvent, i)];
                            touch3.status = 2;
                            touch3.x = this.motion.getX(motionEvent, i);
                            touch3.y = this.motion.getY(motionEvent, i);
                            i++;
                        }
                    } else if (action == 2 || action == 6 || action == 5) {
                        i2 = -1;
                        if (action == 6 || action == 5) {
                            i2 = this.motion.getActionIndex(motionEvent);
                        }
                        int pointerCount = this.motion.getPointerCount(motionEvent);
                        while (i < pointerCount) {
                            int pointerId = this.motion.getPointerId(motionEvent, i);
                            Touch touch4 = this.touches[pointerId];
                            float x = this.motion.getX(motionEvent, i);
                            float y = this.motion.getY(motionEvent, i);
                            if (pointerId == i2) {
                                touch4.x = x;
                                touch4.y = y;
                                if (action == 6) {
                                    touch4.status = 1;
                                } else {
                                    touch4.status = 2;
                                }
                            } else if (!(touch4.x == x && touch4.y == y)) {
                                if (touch4.status == 3) {
                                    float f = x - touch4.x;
                                    float f2 = y - touch4.y;
                                    if (f * f + f2 * f2 >= 81.0f) {
                                        touch4.status = 4;
                                    }
                                }
                                if (touch4.status == 5 || touch4.status == 4) {
                                    touch4.x = x;
                                    touch4.y = y;
                                    touch4.status = 4;
                                }
                            }
                            i++;
                        }
                    } else {
                        z = false;
                    }
                    this.touches.wait(100);
                }
            } catch (ArrayIndexOutOfBoundsException e2) {
                L.i("Exception", "Too many multitouches!");
            } catch (Exception e3) {
                Exception exception = e3;
                L.i("Excepiton", "TOUCH");
                exception.printStackTrace();
            }
        }
        return z;
    }
}