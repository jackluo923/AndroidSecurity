package com.inmobi.commons.internal;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ApplicationFocusManager {
    protected static final int MSG_PAUSED = 1001;
    protected static final int MSG_RESUMED = 1002;
    private static List a;
    private static Object b;
    private static HandlerThread c;
    private static Application d;

    public static interface FocusChangedListener {
        void onFocusChanged(boolean z);
    }

    final class a implements InvocationHandler {
        private final Handler a;

        a() {
            this.a = new b(c.getLooper());
        }

        public void a_(Activity activity) {
            this.a.sendEmptyMessageDelayed(MSG_PAUSED, 3000);
        }

        public void b(Activity activity) {
            this.a.removeMessages(MSG_PAUSED);
            this.a.sendEmptyMessage(MSG_RESUMED);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.Object invoke(java.lang.Object r5, java.lang.reflect.Method r6, java.lang.Object[] r7) {
            throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.internal.ApplicationFocusManager.a.invoke(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
            /*
            r4 = this;
            r1 = 0;
            if (r7 == 0) goto L_0x0017;
        L_0x0003:
            r0 = r6.getName();	 Catch:{ Exception -> 0x002d }
            r2 = "onActivityPaused";
            r0 = r0.equals(r2);	 Catch:{ Exception -> 0x002d }
            if (r0 == 0) goto L_0x0018;
        L_0x000f:
            r0 = 0;
            r0 = r7[r0];	 Catch:{ Exception -> 0x002d }
            r0 = (android.app.Activity) r0;	 Catch:{ Exception -> 0x002d }
            r4.a(r0);	 Catch:{ Exception -> 0x002d }
        L_0x0017:
            return r1;
        L_0x0018:
            r0 = r6.getName();	 Catch:{ Exception -> 0x002d }
            r2 = "onActivityResumed";
            r0 = r0.equals(r2);	 Catch:{ Exception -> 0x002d }
            if (r0 == 0) goto L_0x0017;
        L_0x0024:
            r0 = 0;
            r0 = r7[r0];	 Catch:{ Exception -> 0x002d }
            r0 = (android.app.Activity) r0;	 Catch:{ Exception -> 0x002d }
            r4.b(r0);	 Catch:{ Exception -> 0x002d }
            goto L_0x0017;
        L_0x002d:
            r0 = move-exception;
            r2 = "[InMobi]-4.4.1";
            r3 = "Unable to invoke method";
            com.inmobi.commons.internal.Log.internal(r2, r3, r0);
            goto L_0x0017;
            */
        }
    }

    static class b extends Handler {
        private boolean a;

        public b(Looper looper) {
            super(looper);
            this.a = true;
        }

        public void handleMessage(Message message) {
            if (message.what == 1001 && this.a) {
                this.a = false;
                ApplicationFocusManager.b(Boolean.valueOf(this.a));
            } else if (message.what == 1002 && !this.a) {
                this.a = true;
                ApplicationFocusManager.b(Boolean.valueOf(this.a));
            }
        }
    }

    static {
        a = new ArrayList();
        c = null;
    }

    public static void addFocusChangedListener(FocusChangedListener focusChangedListener) {
        if (VERSION.SDK_INT >= 14) {
            a.add(focusChangedListener);
            if (a.size() == 1) {
                b();
            }
        }
    }

    @TargetApi(14)
    private static void b() {
        try {
            c = new HandlerThread("InMobiAFM");
            c.start();
            Class[] declaredClasses = Application.class.getDeclaredClasses();
            Class cls = null;
            int length = declaredClasses.length;
            int i = 0;
            while (i < length) {
                Class cls2 = declaredClasses[i];
                if (cls2.getSimpleName().equalsIgnoreCase("ActivityLifecycleCallbacks")) {
                    new Class[1][0] = cls2;
                } else {
                    cls2 = cls;
                }
                i++;
                cls = cls2;
            }
            if (Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a()) != null) {
                Application.class.getMethod("registerActivityLifecycleCallbacks", new Class[]{cls}).invoke(d, new Object[]{obj});
            }
        } catch (Exception e) {
            Throwable th = e;
            th.printStackTrace();
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot register activity lifecycle callbacks", th);
        }
    }

    private static void b(Boolean bool) {
        Iterator it = a.iterator();
        while (it.hasNext()) {
            ((FocusChangedListener) it.next()).onFocusChanged(bool.booleanValue());
        }
    }

    @TargetApi(14)
    private static void c() {
        try {
            if (b != null) {
                Application.class.getMethod("unregisterActivityLifecycleCallbacks", (Class[]) 0).invoke(d, (Object[]) b);
            }
            c.stop();
            c = null;
        } catch (Exception e) {
            Throwable th = e;
            th.printStackTrace();
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception unregister app lifecycle callback", th);
        }
    }

    @SuppressLint({"NewApi"})
    public static void init(Context context) {
        if (VERSION.SDK_INT >= 14 && d == null) {
            if (context instanceof Activity) {
                d = ((Activity) context).getApplication();
            } else {
                d = (Application) context.getApplicationContext();
            }
        }
    }

    public static void removeFocusChangedListener(FocusChangedListener focusChangedListener) {
        if (VERSION.SDK_INT >= 14) {
            a.remove(focusChangedListener);
            if (a.size() == 0) {
                c();
            }
        }
    }
}