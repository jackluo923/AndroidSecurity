package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ev;
import com.google.android.gms.internal.fr;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ImageManager {
    private static final Object Ar;
    private static HashSet As;
    private static ImageManager At;
    private static ImageManager Au;
    private final ExecutorService Av;
    private final b Aw;
    private final Map Ax;
    private final Map Ay;
    private final Context mContext;
    private final Handler mHandler;

    private final class ImageReceiver extends ResultReceiver {
        boolean AA;
        private final ArrayList Az;
        private final Uri mUri;

        ImageReceiver(Uri uri) {
            super(new Handler(Looper.getMainLooper()));
            this.AA = false;
            this.mUri = uri;
            this.Az = new ArrayList();
        }

        public void c(a aVar) {
            ed.a(!this.AA, "Cannot add an ImageRequest when mHandlingRequests is true");
            ed.ac("ImageReceiver.addImageRequest() must be called in the main thread");
            this.Az.add(aVar);
        }

        public void d(a aVar) {
            ed.a(!this.AA, "Cannot remove an ImageRequest when mHandlingRequests is true");
            ed.ac("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.Az.remove(aVar);
        }

        public void dN() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            ImageManager.this.mContext.sendBroadcast(intent);
        }

        public void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.Av.execute(new c(this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    public static interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    private static final class a {
        static int a_(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    private static final class b extends ev {
        public b(Context context) {
            super(w(context));
        }

        private static int w(Context context) {
            int memoryClass;
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            memoryClass = (((context.getApplicationInfo().flags & 1048576) != 0 ? 1 : 0) == 0 || !fr.eJ()) ? activityManager.getMemoryClass() : a.a(activityManager);
            return (int) (((float) (memoryClass * 1048576)) * 0.33f);
        }

        protected int a(com.google.android.gms.common.images.a.a aVar, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        protected void a(boolean z, com.google.android.gms.common.images.a.a aVar, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, aVar, bitmap, bitmap2);
        }

        protected /* synthetic */ void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
            a(z, (com.google.android.gms.common.images.a.a) obj, (Bitmap) obj2, (Bitmap) obj3);
        }

        protected /* synthetic */ int sizeOf(Object obj, Object obj2) {
            return a((com.google.android.gms.common.images.a.a) obj, (Bitmap) obj2);
        }
    }

    private final class c implements Runnable {
        private final ParcelFileDescriptor AC;
        private final Uri mUri;

        public c(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.mUri = uri;
            this.AC = parcelFileDescriptor;
        }

        public void run() {
            ed.ad("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            boolean z = false;
            Bitmap bitmap = null;
            if (this.AC != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(this.AC.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    Log.e("ImageManager", "OOM while loading bitmap for uri: " + this.mUri, e);
                    z = true;
                }
                try {
                    this.AC.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.mHandler.post(new f(this.mUri, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                Log.w("ImageManager", "Latch interrupted while posting " + this.mUri);
            }
        }
    }

    private final class d implements Runnable {
        private final a AD;

        public d(a aVar) {
            this.AD = aVar;
        }

        public void run() {
            ed.ac("LoadImageRunnable must be executed on the main thread");
            ImageManager.this.b(this.AD);
            com.google.android.gms.common.images.a.a aVar = this.AD.AF;
            if (aVar.uri == null) {
                this.AD.b(ImageManager.this.mContext, true);
            } else {
                Bitmap a = ImageManager.this.a(aVar);
                if (a != null) {
                    this.AD.a(ImageManager.this.mContext, a, true);
                } else {
                    this.AD.x(ImageManager.this.mContext);
                    ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.Ay.get(aVar.uri);
                    if (imageReceiver == null) {
                        imageReceiver = new ImageReceiver(aVar.uri);
                        ImageManager.this.Ay.put(aVar.uri, imageReceiver);
                    }
                    imageReceiver.c(this.AD);
                    if (this.AD.AI != 1) {
                        ImageManager.this.Ax.put(this.AD, imageReceiver);
                    }
                    synchronized (Ar) {
                        if (!As.contains(aVar.uri)) {
                            As.add(aVar.uri);
                            imageReceiver.dN();
                        }
                    }
                }
            }
        }
    }

    private static final class e implements ComponentCallbacks2 {
        private final b Aw;

        public e(b bVar) {
            this.Aw = bVar;
        }

        public void onConfigurationChanged(Configuration configuration) {
        }

        public void onLowMemory() {
            this.Aw.evictAll();
        }

        public void onTrimMemory(int i) {
            if (i >= 60) {
                this.Aw.evictAll();
            } else if (i >= 20) {
                this.Aw.trimToSize(this.Aw.size() / 2);
            }
        }
    }

    private final class f implements Runnable {
        private boolean AE;
        private final Bitmap mBitmap;
        private final Uri mUri;
        private final CountDownLatch zf;

        public f(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.AE = z;
            this.zf = countDownLatch;
        }

        private void a(ImageReceiver imageReceiver, boolean z) {
            imageReceiver.AA = true;
            ArrayList a = imageReceiver.Az;
            int size = a.size();
            int i = 0;
            while (i < size) {
                a aVar = (a) a.get(i);
                if (z) {
                    aVar.a(ImageManager.this.mContext, this.mBitmap, false);
                } else {
                    aVar.b(ImageManager.this.mContext, false);
                }
                if (aVar.AI != 1) {
                    ImageManager.this.Ax.remove(aVar);
                }
                i++;
            }
            imageReceiver.AA = false;
        }

        public void run() {
            ed.ac("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (ImageManager.this.Aw != null && this.AE) {
                ImageManager.this.Aw.evictAll();
                System.gc();
                this.AE = false;
                ImageManager.this.mHandler.post(this);
                return;
            } else if (z) {
                ImageManager.this.Aw.put(new com.google.android.gms.common.images.a.a(this.mUri), this.mBitmap);
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.Ay.remove(this.mUri);
            if (imageReceiver != null) {
                a(imageReceiver, z);
            }
            this.zf.countDown();
            synchronized (Ar) {
                As.remove(this.mUri);
            }
        }
    }

    static {
        Ar = new Object();
        As = new HashSet();
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.Av = Executors.newFixedThreadPool(GoogleScorer.CLIENT_APPSTATE);
        if (z) {
            this.Aw = new b(this.mContext);
            if (fr.eM()) {
                dL();
            }
        } else {
            this.Aw = null;
        }
        this.Ax = new HashMap();
        this.Ay = new HashMap();
    }

    private Bitmap a(com.google.android.gms.common.images.a.a aVar) {
        return this.Aw == null ? null : (Bitmap) this.Aw.get(aVar);
    }

    public static ImageManager a(Context context, boolean z) {
        if (z) {
            if (Au == null) {
                Au = new ImageManager(context, true);
            }
            return Au;
        } else {
            if (At == null) {
                At = new ImageManager(context, false);
            }
            return At;
        }
    }

    private boolean b(a aVar) {
        ed.ac("ImageManager.cleanupHashMaps() must be called in the main thread");
        if (aVar.AI == 1) {
            return true;
        }
        ImageReceiver imageReceiver = (ImageReceiver) this.Ax.get(aVar);
        if (imageReceiver == null) {
            return true;
        }
        if (imageReceiver.AA) {
            return false;
        }
        this.Ax.remove(aVar);
        imageReceiver.d(aVar);
        return true;
    }

    public static ImageManager create(Context context) {
        return a(context, false);
    }

    private void dL() {
        this.mContext.registerComponentCallbacks(new e(this.Aw));
    }

    public void a(a aVar) {
        ed.ac("ImageManager.loadImage() must be called in the main thread");
        boolean b = b(aVar);
        Runnable dVar = new d(aVar);
        if (b) {
            dVar.run();
        } else {
            this.mHandler.post(dVar);
        }
    }

    public void loadImage(ImageView imageView, int i) {
        a aVar = new a(i);
        aVar.a(imageView);
        a(aVar);
    }

    public void loadImage(ImageView imageView, Uri uri) {
        a aVar = new a(uri);
        aVar.a(imageView);
        a(aVar);
    }

    public void loadImage(ImageView imageView, Uri uri, int i) {
        a aVar = new a(uri);
        aVar.L(i);
        aVar.a(imageView);
        a(aVar);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        a aVar = new a(uri);
        aVar.a(onImageLoadedListener);
        a(aVar);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        a aVar = new a(uri);
        aVar.L(i);
        aVar.a(onImageLoadedListener);
        a(aVar);
    }
}