package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

abstract class MMJSObject {
    private static final String a;
    protected WeakReference b;
    protected WeakReference c;

    static {
        a = MMJSObject.class.getName();
    }

    MMJSObject() {
    }

    abstract MMJSResponse a(String str, Map map);

    MMJSResponse a(Callable callable) {
        Runnable futureTask = new FutureTask(callable);
        MMSDK.a(futureTask);
        try {
            return (MMJSResponse) futureTask.get();
        } catch (InterruptedException e) {
            MMLog.e(a, "Future interrupted", e);
            return null;
        } catch (ExecutionException e2) {
            MMLog.e(a, "Future execution problem: ", e2);
            return null;
        }
    }

    void a(MMWebView mMWebView) {
        this.c = new WeakReference(mMWebView);
    }

    long b(String str) {
        return str != null ? (long) Float.parseFloat(str) : -4;
    }

    void c(Context context) {
        this.b = new WeakReference(context);
    }

    AdViewOverlayActivity d() {
        MMWebView mMWebView = (MMWebView) this.c.get();
        if (mMWebView != null) {
            Activity j = mMWebView.j();
            if (j instanceof MMActivity) {
                MMBaseActivity h = ((MMActivity) j).h();
                if (h instanceof AdViewOverlayActivity) {
                    return (AdViewOverlayActivity) h;
                }
            }
        }
        return null;
    }
}