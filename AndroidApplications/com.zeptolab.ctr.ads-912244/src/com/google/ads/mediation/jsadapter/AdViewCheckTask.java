package com.google.ads.mediation.jsadapter;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.view.View.MeasureSpec;
import android.webkit.WebView;
import com.google.android.gms.internal.da;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class AdViewCheckTask implements Runnable {
    public static final int BACKGROUND_COLOR = 0;
    private final JavascriptAdapter r;
    private final Handler s;
    private final long t;
    private long u;

    private final class a extends AsyncTask {
        private final int v;
        private final int w;
        private final WebView x;
        private Bitmap y;

        public a(int i, int i2, WebView webView) {
            this.v = i2;
            this.w = i;
            this.x = webView;
        }

        protected synchronized Boolean a_(Void... voidArr) {
            Boolean valueOf;
            int width = this.y.getWidth();
            int height = this.y.getHeight();
            if (width == 0 || height == 0) {
                valueOf = Boolean.valueOf(false);
            } else {
                int i = 0;
                int i2 = 0;
                while (i < width) {
                    int i3 = 0;
                    while (i3 < height) {
                        if (this.y.getPixel(i, i3) != 0) {
                            i2++;
                        }
                        i3 += 10;
                    }
                    i += 10;
                }
                valueOf = Boolean.valueOf(((double) i) / (((double) (width * height)) / 100.0d) > 0.1d);
            }
            return valueOf;
        }

        protected void a_(Boolean bool) {
            AdViewCheckTask.a(AdViewCheckTask.this);
            if (bool.booleanValue()) {
                AdViewCheckTask.this.r.sendAdReceivedUpdate();
            } else if (AdViewCheckTask.this.u > 0) {
                if (da.n(GoogleScorer.CLIENT_PLUS)) {
                    da.s("Ad not detected, scheduling another run.");
                }
                AdViewCheckTask.this.s.postDelayed(AdViewCheckTask.this, AdViewCheckTask.this.t);
            } else {
                da.s("Ad not detected, Not scheduling anymore runs.");
                AdViewCheckTask.this.r.sendAdNotReceivedUpdate();
            }
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((Boolean) obj);
        }

        protected synchronized void onPreExecute() {
            this.y = Bitmap.createBitmap(this.w, this.v, Config.ARGB_8888);
            this.x.setVisibility(0);
            this.x.measure(MeasureSpec.makeMeasureSpec(this.w, 0), MeasureSpec.makeMeasureSpec(this.v, 0));
            this.x.layout(0, 0, this.w, this.v);
            this.x.draw(new Canvas(this.y));
            this.x.invalidate();
        }
    }

    public AdViewCheckTask(JavascriptAdapter javascriptAdapter, long j, long j2) {
        this.r = javascriptAdapter;
        this.t = j;
        this.u = j2;
        this.s = new Handler(Looper.getMainLooper());
    }

    static /* synthetic */ long a(AdViewCheckTask adViewCheckTask) {
        long j = adViewCheckTask.u - 1;
        adViewCheckTask.u = j;
        return j;
    }

    public void run() {
        if (this.r != null && !this.r.shouldStopAdCheck()) {
            new a(this.r.getWebViewWidth(), this.r.getWebViewHeight(), this.r.getWebView()).execute(new Void[0]);
        }
    }

    public void start() {
        this.s.postDelayed(this, this.t);
    }
}