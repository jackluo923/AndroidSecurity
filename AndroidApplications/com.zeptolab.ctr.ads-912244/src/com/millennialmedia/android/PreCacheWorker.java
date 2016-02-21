package com.millennialmedia.android;

import android.content.Context;
import android.text.TextUtils;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

class PreCacheWorker extends Thread {
    private static boolean a = false;
    private static final String f = "PreCacheWorker";
    private DTOCachedVideo[] b;
    private Context c;
    private String d;
    private volatile boolean e;

    class AnonymousClass_1 implements AdCacheTaskListener {
        final /* synthetic */ DTOCachedVideo a;

        AnonymousClass_1(DTOCachedVideo dTOCachedVideo) {
            this.a = dTOCachedVideo;
        }

        public synchronized void downloadCompleted(CachedAd cachedAd, boolean z) {
            if (z) {
                AdCache.a(PreCacheWorker.this.c, cachedAd);
                PreCacheWorker.this.e = true;
                Event.a(this.a.c);
            } else {
                Event.a(PreCacheWorker.this);
            }
            notify();
        }

        public void downloadStart(CachedAd cachedAd) {
            Event.a(this.a.a);
        }
    }

    private PreCacheWorker(DTOCachedVideo[] dTOCachedVideoArr, Context context, String str) {
        this.e = false;
        this.b = dTOCachedVideoArr;
        this.d = str;
        this.c = context.getApplicationContext();
    }

    private void a(DTOCachedVideo dTOCachedVideo, HttpEntity httpEntity) {
        Header contentType = httpEntity.getContentType();
        if (contentType != null) {
            String value = contentType.getValue();
            if (value != null && value.equalsIgnoreCase(WebRequest.CONTENT_TYPE_JSON)) {
                b(dTOCachedVideo, httpEntity);
            } else if (value != null && value.startsWith("video/")) {
                c(dTOCachedVideo, httpEntity);
            }
        }
    }

    static synchronized void a(DTOCachedVideo[] dTOCachedVideoArr, Context context, String str) {
        synchronized (PreCacheWorker.class) {
            if (!a) {
                a = true;
                new PreCacheWorker(dTOCachedVideoArr, context, str).start();
            }
        }
    }

    private void b(DTOCachedVideo dTOCachedVideo, HttpEntity httpEntity) {
        CachedAd cachedAd = null;
        try {
            String a = HttpGetRequest.a(httpEntity.getContent());
            if (!TextUtils.isEmpty(a)) {
                cachedAd = new VideoAd(a);
            }
            if (cachedAd != null && cachedAd.b()) {
                try {
                    cachedAd.i = 1;
                    if (AdCache.a(this.c, null, cachedAd, new AnonymousClass_1(dTOCachedVideo))) {
                        wait();
                    } else {
                        Event.a(dTOCachedVideo.a);
                        Event.a(dTOCachedVideo.b);
                    }
                } catch (InterruptedException e) {
                    Throwable th = e;
                    th.printStackTrace();
                    MMLog.e(f, "Pre cache worker interrupted: ", th);
                }
            }
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
            MMLog.b(f, "Pre cache worker: Millennial ad return failed. Invalid response data.");
        } catch (IOException e3) {
            e3.printStackTrace();
            MMLog.b(f, "Pre cache worker: Millennial ad return failed. Invalid response data.");
        }
    }

    private void c(DTOCachedVideo dTOCachedVideo, HttpEntity httpEntity) {
        if (!TextUtils.isEmpty(dTOCachedVideo.e)) {
            Event.a(dTOCachedVideo.a);
            if (AdCache.a(dTOCachedVideo.d, dTOCachedVideo.e + "video.dat", this.c)) {
                Event.a(dTOCachedVideo.c);
            } else {
                Event.a(dTOCachedVideo.b);
            }
        }
    }

    public synchronized void run() {
        try {
            if (this.b != null) {
                DTOCachedVideo[] dTOCachedVideoArr = this.b;
                int length = dTOCachedVideoArr.length;
                int i = 0;
                while (i < length) {
                    DTOCachedVideo dTOCachedVideo = dTOCachedVideoArr[i];
                    try {
                        HttpResponse a = new HttpGetRequest().a(dTOCachedVideo.d);
                        if (a == null) {
                            MMLog.b(f, "Pre cache worker: HTTP response is null");
                        } else {
                            HttpEntity entity = a.getEntity();
                            if (entity == null) {
                                MMLog.b(f, "Pre cache worker: Null HTTP entity");
                            } else if (entity.getContentLength() == 0) {
                                MMLog.b(f, "Pre cache worker: Millennial ad return failed. Zero content length returned.");
                            } else {
                                a(dTOCachedVideo, entity);
                            }
                        }
                    } catch (Exception e) {
                        Exception exception = e;
                        MMLog.b(f, String.format("Pre cache worker HTTP error: %s", new Object[]{exception}));
                    }
                    i++;
                }
            }
            synchronized (PreCacheWorker.class) {
                a = false;
                if (!(this.e || TextUtils.isEmpty(this.d) || this.b != null)) {
                    Event.a(this.d);
                }
            }
        } catch (Throwable th) {
        }
    }
}