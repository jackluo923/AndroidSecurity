package com.admarvel.android.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.ref.WeakReference;

class k {
    private static k m;
    private int a;
    private float b;
    private Sensor c;
    private Sensor d;
    private SensorManager e;
    private WeakReference f;
    private Boolean g;
    private boolean h;
    private String i;
    private String j;
    private String k;
    private boolean l;
    private SensorEventListener n;

    static {
        m = null;
    }

    private k() {
        this.a = 1000;
        this.b = 2.0f;
        this.h = false;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = false;
        this.n = new SensorEventListener() {
            final float a;
            private long c;
            private long d;
            private long e;
            private long f;
            private float g;
            private float[] h;
            private float[] i;
            private float[] j;
            private final float[] k;
            private final float[] l;
            private final float[] m;

            {
                this.c = 0;
                this.d = 0;
                this.e = 0;
                this.f = 0;
                this.g = 0.0f;
                this.k = new float[]{0.0f, 0.0f, 0.0f};
                this.l = new float[]{0.0f, 0.0f, 0.0f};
                this.m = new float[]{0.0f, 0.0f, 0.0f};
                this.a = 0.8f;
            }

            public void onAccuracyChanged(Sensor sensor, int i) {
            }

            public void onSensorChanged(SensorEvent sensorEvent) {
                this.c = System.currentTimeMillis();
                if (sensorEvent.sensor.getType() == 1) {
                    this.h = (float[]) sensorEvent.values.clone();
                }
                if (sensorEvent.sensor.getType() == 2) {
                    this.j = (float[]) sensorEvent.values.clone();
                }
                if (!(this.h == null || this.j == null)) {
                    float[] fArr = new float[9];
                    if (SensorManager.getRotationMatrix(fArr, new float[9], this.h, this.j)) {
                        float[] fArr2 = new float[3];
                        SensorManager.getOrientation(fArr, fArr2);
                        float round = ((float) Math.round(Math.toDegrees((double) fArr2[0]) * 2.0d)) / 2.0f;
                        if (((double) round) < 0.0d) {
                            round += 360.0f;
                        }
                        k.this.b(round);
                    }
                }
                if (this.h == null) {
                    return;
                }
                if (this.e == 0) {
                    this.e = this.c;
                    this.f = this.c;
                    this.i = (float[]) this.h.clone();
                } else {
                    this.d = this.c - this.e;
                    if (this.d > 0) {
                        if (this.c - this.f >= ((long) k.this.a)) {
                            this.g = (Math.abs(((((this.h[0] + this.h[1]) + this.h[2]) - this.i[0]) - this.i[1]) - this.i[2]) / ((float) (this.c - this.f))) * 100.0f;
                            this.f = this.c;
                            if (this.g > k.this) {
                                k.this.a(this.g);
                            }
                        }
                        this.m[0] = this.m[0] * 0.8f + this.h[0] * 0.19999999f;
                        this.m[1] = this.m[1] * 0.8f + this.h[1] * 0.19999999f;
                        this.m[2] = this.m[2] * 0.8f + this.h[2] * 0.19999999f;
                        this.k[0] = this.h[0] - this.m[0];
                        this.k[1] = this.h[1] - this.m[1];
                        this.k[2] = this.h[2] - this.m[2];
                        this.l[0] = this.h[0] - this.i[0];
                        this.l[1] = this.h[1] - this.i[1];
                        this.l[2] = this.h[2] - this.i[2];
                        k.this.a(this.h[0], this.h[1], this.h[2], this.k[0], this.k[1], this.k[2], this.l[0], this.l[1], this.l[2]);
                        this.i = (float[]) this.h.clone();
                        this.e = this.c;
                    }
                }
            }
        };
    }

    public static k a() {
        if (m == null) {
            m = new k();
        }
        return m;
    }

    private void a(float f) {
        AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.f.get();
        if (adMarvelInternalWebView != null && this.i != null) {
            adMarvelInternalWebView.loadUrl("javascript:" + this.i + "()");
        }
    }

    private void a(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.f.get();
        if (adMarvelInternalWebView != null && this.j != null) {
            adMarvelInternalWebView.loadUrl("javascript:" + this.j + "(" + f + "," + f2 + "," + f3 + "," + f4 + "," + f5 + "," + f6 + "," + f7 + "," + f8 + "," + f9 + ")");
        }
    }

    private void b(float f) {
        AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) this.f.get();
        if (adMarvelInternalWebView != null && this.k != null) {
            adMarvelInternalWebView.loadUrl("javascript:" + this.k + "(" + f + ")");
        }
    }

    private void d() {
        this.i = null;
        this.j = null;
        this.k = null;
    }

    public void a(Context context, AdMarvelInternalWebView adMarvelInternalWebView) {
        this.f = new WeakReference(adMarvelInternalWebView);
        if (!this.h) {
            this.e = (SensorManager) context.getSystemService("sensor");
            this.c = this.e.getDefaultSensor(1);
            this.d = this.e.getDefaultSensor(GoogleScorer.CLIENT_PLUS);
            this.h = this.e.registerListener(this.n, this.c, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        }
        if (this.l) {
            this.e.registerListener(this.n, this.d, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            this.l = false;
        }
    }

    public void a(String str) {
        if (str != null) {
            this.i = str;
        }
    }

    public void a(String str, String str2) {
        if (str != null) {
            this.b = new Float(str).floatValue();
        }
        if (str2 != null) {
            this.a = Integer.parseInt(str2) * 1000;
        }
    }

    public boolean a(Context context) {
        if (this.g == null) {
            if (context != null) {
                this.e = (SensorManager) context.getSystemService("sensor");
                this.g = new Boolean(this.e.getSensorList(1).size() > 0);
            } else {
                this.g = Boolean.FALSE;
            }
        }
        return this.g.booleanValue();
    }

    public void b(String str) {
        if (str != null) {
            this.j = str;
        }
    }

    public boolean b() {
        return this.h;
    }

    public boolean b(Context context) {
        if (this.g == null) {
            if (context != null) {
                this.e = (SensorManager) context.getSystemService("sensor");
                this.g = new Boolean(this.e.getSensorList(GoogleScorer.CLIENT_PLUS).size() > 0);
            } else {
                this.g = Boolean.FALSE;
            }
        }
        return this.g.booleanValue();
    }

    public void c() {
        this.h = false;
        try {
            if (!(this.e == null || this.n == null)) {
                this.e.unregisterListener(this.n);
            }
        } catch (Exception e) {
        }
        d();
    }

    public void c(String str) {
        if (str != null) {
            this.l = true;
            this.k = str;
        }
    }
}