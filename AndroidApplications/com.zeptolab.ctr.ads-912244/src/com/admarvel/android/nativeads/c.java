package com.admarvel.android.nativeads;

import android.annotation.SuppressLint;
import android.os.AsyncTask;
import com.admarvel.android.ads.Version;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class c {
    private static final int a;
    private static final int b;
    private static final int c;
    private static final TimeUnit d;
    private static final BlockingQueue e;
    private static final ThreadFactory f;
    private static final ThreadPoolExecutor g;

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ AsyncTask a;
        final /* synthetic */ Object[] b;

        AnonymousClass_1(AsyncTask asyncTask, Object[] objArr) {
            this.a = asyncTask;
            this.b = objArr;
        }

        public void run() {
            this.a.executeOnExecutor(g, this.b);
        }
    }

    private static class a implements ThreadFactory {
        private final AtomicInteger a;

        private a() {
            this.a = new AtomicInteger(1);
        }

        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AsyncTask #" + this.a.getAndIncrement());
        }
    }

    static {
        a = 10;
        b = 128;
        c = 1;
        d = TimeUnit.SECONDS;
        e = new LinkedBlockingQueue(20);
        f = new a();
        g = new ThreadPoolExecutor(a, b, (long) c, d, e, f);
    }

    @SuppressLint({"NewApi"})
    public static AsyncTask a(AsyncTask asyncTask, Object... objArr) {
        if (Version.getAndroidSDKVersion() >= 11) {
            new Thread(new AnonymousClass_1(asyncTask, objArr)).start();
        } else {
            asyncTask.execute(objArr);
        }
        return asyncTask;
    }
}