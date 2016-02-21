package com.mopub.mobileads;

import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;

public class AdFetcher {
    private int a;
    private AdViewController b;
    private AdFetchTask c;
    private String d;
    private final TaskTracker e;

    enum FetchStatus {
        NOT_SET,
        FETCH_CANCELLED,
        INVALID_SERVER_RESPONSE_BACKOFF,
        INVALID_SERVER_RESPONSE_NOBACKOFF,
        CLEAR_AD_TYPE,
        AD_WARMING_UP;

        static {
            a = new FetchStatus("NOT_SET", 0);
            b = new FetchStatus("FETCH_CANCELLED", 1);
            c = new FetchStatus("INVALID_SERVER_RESPONSE_BACKOFF", 2);
            d = new FetchStatus("INVALID_SERVER_RESPONSE_NOBACKOFF", 3);
            e = new FetchStatus("CLEAR_AD_TYPE", 4);
            f = new FetchStatus("AD_WARMING_UP", 5);
            g = new FetchStatus[]{a, b, c, d, e, f};
        }
    }

    public AdFetcher(AdViewController adViewController, String str) {
        this.a = 10000;
        this.b = adViewController;
        this.d = str;
        this.e = new TaskTracker();
    }

    private long c() {
        return this.e.a();
    }

    public void a() {
        if (this.c != null) {
            Log.i("MoPub", new StringBuilder("Canceling fetch ad for task #").append(c()).toString());
            this.c.cancel(true);
        }
    }

    protected void a(int i) {
        this.a = i;
    }

    public void a(String str) {
        this.e.b();
        Log.i("MoPub", new StringBuilder("Fetching ad for task #").append(c()).toString());
        if (this.c != null) {
            this.c.cancel(true);
        }
        this.c = new AdFetchTask(this.e, this.b, this.d, this.a);
        if (VERSION.SDK_INT >= 14) {
            Class cls = AdFetchTask.class;
            String[] strArr = new String[]{str};
            try {
                Method method = cls.getMethod("executeOnExecutor", new Class[]{Executor.class, Object[].class});
                Field field = cls.getField("THREAD_POOL_EXECUTOR");
                method.invoke(this.c, new Object[]{field.get(cls), strArr});
            } catch (NoSuchMethodException e) {
                Log.d("MoPub", "Error executing AdFetchTask on ICS+, method not found.");
            } catch (InvocationTargetException e2) {
                Log.d("MoPub", "Error executing AdFetchTask on ICS+, thrown by executeOnExecutor.");
            } catch (Exception e3) {
                Log.d("MoPub", new StringBuilder("Error executing AdFetchTask on ICS+: ").append(e3.toString()).toString());
            }
        } else {
            this.c.execute(new String[]{str});
        }
    }

    void b() {
        a();
        this.b = null;
        this.d = "";
    }
}