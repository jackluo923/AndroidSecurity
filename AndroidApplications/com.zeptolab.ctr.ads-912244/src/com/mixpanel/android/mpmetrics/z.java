package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

class z {
    private final Executor a;

    static interface b {
        void a(SharedPreferences sharedPreferences);
    }

    private static class a implements Callable {
        private final Context a;
        private final String b;
        private final b c;

        public a(Context context, String str, b bVar) {
            this.a = context;
            this.b = str;
            this.c = bVar;
        }

        public SharedPreferences a_() {
            SharedPreferences sharedPreferences = this.a.getSharedPreferences(this.b, 0);
            if (this.c != null) {
                this.c.a(sharedPreferences);
            }
            return sharedPreferences;
        }

        public /* synthetic */ Object call() {
            return a();
        }
    }

    public z() {
        this.a = Executors.newSingleThreadExecutor();
    }

    public Future a(Context context, String str, b bVar) {
        Object futureTask = new FutureTask(new a(context, str, bVar));
        this.a.execute(futureTask);
        return futureTask;
    }
}