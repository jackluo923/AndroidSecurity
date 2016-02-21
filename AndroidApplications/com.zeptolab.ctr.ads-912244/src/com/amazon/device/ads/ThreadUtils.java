package com.amazon.device.ads;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ThreadUtils {
    private static RunnableExecutor a;

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ AsyncTask a;
        final /* synthetic */ Object[] b;

        AnonymousClass_1(AsyncTask asyncTask, Object[] objArr) {
            this.a = asyncTask;
            this.b = objArr;
        }

        public void run() {
            AndroidTargetUtils.executeAsyncTask(this.a, this.b);
        }
    }

    static interface RunnableExecutor {
        void execute(Runnable runnable);
    }

    static class MainThreadRunnableExecutor implements RunnableExecutor {
        MainThreadRunnableExecutor() {
        }

        public void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static class ThreadPoolRunnableExecutor implements RunnableExecutor {
        private static final int a = 1;
        private static final int b = 3;
        private static final int c = 30;
        private ExecutorService d;

        ThreadPoolRunnableExecutor() {
            this.d = new ThreadPoolExecutor(1, 3, 30, TimeUnit.SECONDS, new LinkedBlockingQueue());
        }

        public void execute(Runnable runnable) {
            this.d.submit(runnable);
        }
    }

    static class ThreadVerify {
        private static ThreadVerify a;

        static {
            a = new ThreadVerify();
        }

        ThreadVerify() {
        }

        static ThreadVerify a() {
            return a;
        }

        static void a(ThreadVerify threadVerify) {
            a = threadVerify;
        }

        boolean b() {
            return Looper.getMainLooper().getThread() == Thread.currentThread();
        }
    }

    static {
        a = new ThreadPoolRunnableExecutor();
    }

    static void a(RunnableExecutor runnableExecutor) {
        a = runnableExecutor;
    }

    public static final void executeAsyncTask(AsyncTask asyncTask, Object... objArr) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            AndroidTargetUtils.executeAsyncTask(asyncTask, objArr);
        } else {
            new Handler(Looper.getMainLooper()).post(new AnonymousClass_1(asyncTask, objArr));
        }
    }

    public static void executeRunnable(Runnable runnable) {
        a.execute(runnable);
    }

    public static boolean isOnMainThread() {
        return ThreadVerify.a().b();
    }
}