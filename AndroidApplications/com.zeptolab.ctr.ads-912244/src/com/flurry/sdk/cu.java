package com.flurry.sdk;

import com.flurry.android.FlurryAgent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.HashMap;
import java.util.Map;

public class cu implements com.flurry.sdk.dn.a, UncaughtExceptionHandler {
    private static final String a;
    private static cu b;
    private final HashMap c;
    private boolean d;

    public static class a {
        public int a;
    }

    static {
        a = cu.class.getSimpleName();
    }

    private cu() {
        this.c = new HashMap();
        dz.a().a(this);
        d();
    }

    public static synchronized cu a() {
        cu cuVar;
        synchronized (cu.class) {
            if (b == null) {
                b = new cu();
            }
            cuVar = b;
        }
        return cuVar;
    }

    private void d() {
        dn a = dm.a();
        this.d = ((Boolean) a.a("CaptureUncaughtExceptions")).booleanValue();
        a.a("CaptureUncaughtExceptions", this);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "initSettings, CrashReportingEnabled = " + this.d);
        String str = (String) a.a("VersionName");
        a.a("VersionName", this);
        dy.a(str);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "initSettings, VersionName = " + str);
    }

    public void a(String str) {
        dg c = di.a().c();
        if (c != null) {
            c.a(str, null, false);
        }
    }

    public void a(String str, Object obj) {
        if (str.equals("CaptureUncaughtExceptions")) {
            this.d = ((Boolean) obj).booleanValue();
            el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "onSettingUpdate, CrashReportingEnabled = " + this.d);
        } else if (str.equals("VersionName")) {
            String str2 = (String) obj;
            dy.a(str2);
            el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "onSettingUpdate, VersionName = " + str2);
        } else {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "onSettingUpdate internal error!");
        }
    }

    @Deprecated
    public void a(String str, String str2, String str3) {
        StackTraceElement[] stackTraceElementArr;
        Object stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null || stackTrace.length <= 2) {
            Object obj = stackTrace;
        } else {
            stackTraceElementArr = new StackTraceElement[(stackTrace.length - 2)];
            System.arraycopy(stackTrace, GoogleScorer.CLIENT_PLUS, stackTraceElementArr, 0, stackTraceElementArr.length);
        }
        Throwable th = new Throwable(str2);
        th.setStackTrace(stackTraceElementArr);
        dg c = di.a().c();
        if (c != null) {
            c.a(str, str2, str3, th);
        }
    }

    public void a(String str, String str2, Throwable th) {
        dg c = di.a().c();
        if (c != null) {
            c.a(str, str2, th.getClass().getName(), th);
        }
    }

    public void a(String str, String str2, Map map) {
        if (map == null) {
            map = new HashMap();
        }
        if (map.size() >= 10) {
            el.d(a, "MaxOriginParams exceeded: " + map.size());
        } else {
            map.put("flurryOriginVersion", str2);
            synchronized (this.c) {
                if (this.c.size() < 10 || this.c.containsKey(str)) {
                    this.c.put(str, map);
                } else {
                    el.d(a, "MaxOrigins exceeded: " + this.c.size());
                }
            }
        }
    }

    public void a(String str, Map map) {
        dg c = di.a().c();
        if (c != null) {
            c.a(str, map, false);
        }
    }

    public void a(String str, Map map, boolean z) {
        dg c = di.a().c();
        if (c != null) {
            c.a(str, map, z);
        }
    }

    public void a(String str, boolean z) {
        dg c = di.a().c();
        if (c != null) {
            c.a(str, null, z);
        }
    }

    public void a(boolean z) {
        el.a(z);
    }

    public HashMap b() {
        HashMap hashMap;
        synchronized (this.c) {
            hashMap = new HashMap(this.c);
        }
        return hashMap;
    }

    public void b(String str) {
        dg c = di.a().c();
        if (c != null) {
            c.a(str, null);
        }
    }

    public void b(String str, Map map) {
        dg c = di.a().c();
        if (c != null) {
            c.a(str, map);
        }
    }

    public void c() {
        dg c = di.a().c();
        if (c != null) {
            c.e();
        }
    }

    public void c(String str) {
        dg c = di.a().c();
        if (c != null) {
            c.a(str, null, false);
        }
    }

    public void c(String str, Map map) {
        dg c = di.a().c();
        if (c != null) {
            c.a(str, map, false);
        }
    }

    public void uncaughtException(Thread thread, Throwable th) {
        th.printStackTrace();
        if (this.d) {
            String str = AdTrackerConstants.BLANK;
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                StringBuilder stringBuilder = new StringBuilder();
                if (th.getMessage() != null) {
                    stringBuilder.append(" (" + th.getMessage() + ")\n");
                }
                str = stringBuilder.toString();
            } else if (th.getMessage() != null) {
                str = th.getMessage();
            }
            FlurryAgent.onError("uncaught", str, th);
        }
        di.a().d();
        dw.a().g();
    }
}