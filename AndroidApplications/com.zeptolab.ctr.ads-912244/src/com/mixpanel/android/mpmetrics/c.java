package com.mixpanel.android.mpmetrics;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.os.AsyncTask;
import android.view.View;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;

class c {
    private static final String a = "MixpanelAPI BackgroundCapture";
    private static final int b;

    private static class a extends AsyncTask {
        private final com.mixpanel.android.mpmetrics.c.b a;
        private final Activity b;
        private Bitmap c;
        private int d;

        public a(Activity activity, com.mixpanel.android.mpmetrics.c.b bVar) {
            this.b = activity;
            this.a = bVar;
        }

        protected Void a_(Void... voidArr) {
            if (this.c == null) {
                this.d = -1;
                this.c = null;
            } else {
                try {
                    System.currentTimeMillis();
                    this.d = Bitmap.createScaledBitmap(this.c, 1, 1, true).getPixel(0, 0);
                    com.mixpanel.android.a.b.a(this.c, MMException.DISPLAY_AD_NOT_READY);
                    System.currentTimeMillis();
                    new Canvas(this.c).drawColor(b, Mode.SRC_ATOP);
                } catch (OutOfMemoryError e) {
                    this.d = -1;
                    this.c = null;
                }
            }
            return null;
        }

        protected void a_(Void voidR) {
            this.a.a(this.c, this.d);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((Void) obj);
        }

        protected void onPreExecute() {
            View rootView = this.b.findViewById(16908290).getRootView();
            boolean isDrawingCacheEnabled = rootView.isDrawingCacheEnabled();
            rootView.setDrawingCacheEnabled(true);
            rootView.buildDrawingCache(true);
            Bitmap drawingCache = rootView.getDrawingCache();
            Bitmap bitmap = null;
            if (drawingCache != null && drawingCache.getWidth() > 0 && drawingCache.getHeight() > 0) {
                int width = drawingCache.getWidth() / 2;
                int height = drawingCache.getHeight() / 2;
                if (width > 0 && height > 0) {
                    bitmap = Bitmap.createScaledBitmap(drawingCache, width, height, false);
                }
            }
            if (!isDrawingCacheEnabled) {
                rootView.setDrawingCacheEnabled(false);
            }
            this.c = bitmap;
        }
    }

    public static interface b {
        void a(Bitmap bitmap, int i);
    }

    static {
        b = Color.argb(186, ApiEventType.API_MRAID_SEND_MAIL, ApiEventType.API_MRAID_SEND_MAIL, ApiEventType.API_MRAID_SEND_MAIL);
    }

    c() {
    }

    public static void a(Activity activity, b bVar) {
        activity.runOnUiThread(new d(activity, bVar));
    }
}