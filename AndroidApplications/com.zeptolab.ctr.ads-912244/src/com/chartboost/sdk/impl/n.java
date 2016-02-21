package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.widget.ImageView;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

public final class n {
    private static volatile n a;
    private static Handler b;
    private d c;
    private Map d;

    public static interface b {
        void a(com.chartboost.sdk.Libraries.g.a aVar, Bundle bundle);
    }

    private class a implements Runnable {
        private String b;
        private final WeakReference c;
        private com.chartboost.sdk.impl.n.b d;
        private String e;
        private Bundle f;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ com.chartboost.sdk.Libraries.g.a a;

            AnonymousClass_1(com.chartboost.sdk.Libraries.g.a aVar) {
                this.a = aVar;
            }

            public void run() {
                if (a.this.c != null) {
                    ImageView imageView = (ImageView) a.this.c.get();
                    a a = n.b(imageView);
                    if (this.a != null && a.this == a) {
                        imageView.setImageBitmap(this.a.a());
                    }
                }
                if (a.this.d != null) {
                    a.this.d.a(this.a, a.this.f);
                }
            }
        }

        public a(ImageView imageView, com.chartboost.sdk.impl.n.b bVar, String str, Bundle bundle, String str2) {
            this.c = new WeakReference(imageView);
            Drawable cVar = new c(this);
            if (imageView != null) {
                imageView.setImageDrawable(cVar);
            }
            this.e = str;
            this.d = bVar;
            this.f = bundle;
            this.b = str2;
        }

        private com.chartboost.sdk.Libraries.g.a b() {
            return (com.chartboost.sdk.Libraries.g.a) n.this.d.get(this.e);
        }

        public void a_() {
            com.chartboost.sdk.Libraries.g.a b = b();
            if (!(b == null || this.c == null || this.c.get() == null || this != n.b((ImageView) this.c.get()))) {
                b.b();
            }
            b.post(new AnonymousClass_1(b));
        }

        public void run() {
            HttpResponse execute;
            InputStream content;
            Throwable th;
            HttpResponse httpResponse = null;
            if (n.this.c(this.e)) {
                a();
            } else {
                HttpClient b = k.b();
                HttpGet httpGet = new HttpGet(this.b);
                CBLogging.a("CBWebImageCache", "downloading image to cache... " + this.b);
                try {
                    int statusCode;
                    HttpEntity entity;
                    execute = b.execute(httpGet);
                    try {
                        statusCode = execute.getStatusLine().getStatusCode();
                    } catch (IOException e) {
                        th = e;
                        httpResponse = execute;
                        httpGet.abort();
                        CBUtility.a(httpResponse);
                        CBLogging.c("CBWebImageCache", "I/O error while retrieving bitmap from " + this.b, th);
                        a();
                    } catch (IllegalStateException e2) {
                        th = e2;
                        httpGet.abort();
                        CBUtility.a(execute);
                        CBLogging.c("CBWebImageCache", "Incorrect URL: " + this.b, th);
                        a();
                    } catch (Throwable th2) {
                        th = th2;
                        httpGet.abort();
                        CBUtility.a(execute);
                        CBLogging.c("CBWebImageCache", "Error while retrieving bitmap from " + this.b, th);
                        a();
                    }
                    if (statusCode != 200) {
                        CBLogging.c("CBWebImageCache:ImageDownloader", "Error " + statusCode + " while retrieving bitmap from " + this.b);
                        CBUtility.a(execute);
                        a();
                    } else {
                        entity = execute.getEntity();
                        if (entity != null) {
                            content = entity.getContent();
                            byte[] a = ai.a(content);
                            if (com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a(a)).equals(this.e)) {
                                n.this.a(this.e, a);
                                n.this.a(this.e);
                                if (content != null) {
                                    content.close();
                                } else {
                                    CBUtility.a(entity);
                                }
                            } else if (content != null) {
                                content.close();
                                return;
                            } else {
                                CBUtility.a(entity);
                                return;
                            }
                        }
                        a();
                    }
                } catch (IOException e3) {
                    th = e3;
                    httpGet.abort();
                    CBUtility.a(httpResponse);
                    CBLogging.c("CBWebImageCache", "I/O error while retrieving bitmap from " + this.b, th);
                    a();
                } catch (IllegalStateException e4) {
                    th = e4;
                    execute = null;
                    httpGet.abort();
                    CBUtility.a(execute);
                    CBLogging.c("CBWebImageCache", "Incorrect URL: " + this.b, th);
                    a();
                } catch (Throwable th3) {
                    th = th3;
                    execute = null;
                    httpGet.abort();
                    CBUtility.a(execute);
                    CBLogging.c("CBWebImageCache", "Error while retrieving bitmap from " + this.b, th);
                    a();
                }
            }
        }
    }

    static class c extends BitmapDrawable {
        private final WeakReference a;

        public c(a aVar) {
            this.a = new WeakReference(aVar);
        }

        public a a() {
            return (a) this.a.get();
        }
    }

    private static class d {
        private File a;
        private File b;
        private File c;

        public d(Context context) {
            this.a = null;
            this.b = null;
            this.c = null;
            a(context);
        }

        private void a(Context context) {
            if (context != null) {
                try {
                    if ((context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 ? 1 : 0) != 0 && Environment.getExternalStorageState().equals("mounted")) {
                        this.b = context.getExternalFilesDir("cache");
                    }
                    if (this.b != null) {
                        this.b = new File(this.b, "__chartboost");
                        this.b = new File(this.b, "images");
                        if (!(this.b == null || this.b.exists())) {
                            this.b.mkdirs();
                        }
                    }
                } catch (Exception e) {
                    this.b = null;
                }
                this.c = context.getCacheDir();
                if (this.c != null) {
                    this.c = new File(this.c, "__chartboost");
                    this.c = new File(this.c, "images");
                    if (!this.c.exists()) {
                        this.c.mkdirs();
                    }
                }
                this.a = this.b != null ? this.b : this.c;
            }
        }

        public File a(String str) {
            if (this.a == null) {
                a(Chartboost.sharedChartboost().getContext());
            }
            return this.a == null ? null : new File(this.a, str);
        }

        public void a() {
            int i = 0;
            if (this.a != null) {
                try {
                    if (this.b != null) {
                        File[] listFiles = this.b.listFiles();
                        if (listFiles != null) {
                            int length = listFiles.length;
                            int i2 = 0;
                            while (i2 < length) {
                                listFiles[i2].delete();
                                i2++;
                            }
                        }
                    }
                    if (this.c != null) {
                        File[] listFiles2 = this.c.listFiles();
                        if (listFiles2 != null) {
                            int length2 = listFiles2.length;
                            while (i < length2) {
                                listFiles2[i].delete();
                                i++;
                            }
                        }
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    static {
        a = null;
        b = new Handler();
    }

    private n() {
        this.c = new d(Chartboost.sharedChartboost().getContext());
        this.d = new HashMap();
    }

    private com.chartboost.sdk.Libraries.g.a a(String str) {
        if (!c(str)) {
            if (this.d.containsKey(str)) {
                this.d.remove(str);
            }
            return null;
        } else if (this.d.containsKey(str)) {
            return (com.chartboost.sdk.Libraries.g.a) this.d.get(str);
        } else {
            com.chartboost.sdk.Libraries.g.a aVar = new com.chartboost.sdk.Libraries.g.a(str, b(str));
            this.d.put(str, aVar);
            return aVar;
        }
    }

    public static n a() {
        if (a == null) {
            synchronized (n.class) {
                if (a == null) {
                    a = new n();
                }
            }
        }
        return a;
    }

    private boolean a(String str, byte[] bArr) {
        File a = this.c.a(str + ".png");
        if (a == null) {
            return false;
        }
        try {
            ah.a(a, bArr);
            return true;
        } catch (Exception e) {
            CBLogging.a("CBWebImageCache", "Exception writing image content to a file", e);
            return false;
        }
    }

    private static a b(ImageView imageView) {
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof c) {
                return ((c) drawable).a();
            }
        }
        return null;
    }

    private File b(String str) {
        return this.c.a(str + ".png");
    }

    private boolean c(String str) {
        File b = b(str);
        return b == null ? false : b.exists();
    }

    public void a(String str, String str2, b bVar, ImageView imageView, Bundle bundle) {
        com.chartboost.sdk.Libraries.g.a a = a(str2);
        if (a != null) {
            if (imageView != null) {
                imageView.setImageBitmap(a.a());
            }
            if (bVar != null) {
                bVar.a(a, bundle);
            }
        } else {
            k.a().execute(new a(imageView, bVar, str2, bundle, str));
        }
    }

    public void b() {
        this.c.a();
        this.d.clear();
    }
}