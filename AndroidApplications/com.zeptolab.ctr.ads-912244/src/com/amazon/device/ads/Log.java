package com.amazon.device.ads;

import java.util.ArrayList;
import java.util.Iterator;

class Log {
    protected static final String a = "AmazonMobileAds ";
    private static boolean b;
    private static ILog c;

    private static class LogcatLogger implements ILog {
        private static final int a = 1000;

        private LogcatLogger() {
        }

        public void d(String str, String str2) {
            Iterator it = Log.a(str2, a).iterator();
            while (it.hasNext()) {
                android.util.Log.d(str, (String) it.next());
            }
        }

        public void d(String str, String str2, Object... objArr) {
            d(str, String.format(str2, objArr));
        }

        public void e(String str, String str2) {
            Iterator it = Log.a(str2, a).iterator();
            while (it.hasNext()) {
                android.util.Log.e(str, (String) it.next());
            }
        }

        public void e(String str, String str2, Object... objArr) {
            e(str, String.format(str2, objArr));
        }

        public void i(String str, String str2) {
            Iterator it = Log.a(str2, a).iterator();
            while (it.hasNext()) {
                android.util.Log.i(str, (String) it.next());
            }
        }

        public void i(String str, String str2, Object... objArr) {
            i(str, String.format(str2, objArr));
        }

        public void v(String str, String str2) {
            Iterator it = Log.a(str2, a).iterator();
            while (it.hasNext()) {
                android.util.Log.v(str, (String) it.next());
            }
        }

        public void v(String str, String str2, Object... objArr) {
            v(str, String.format(str2, objArr));
        }

        public void w(String str, String str2) {
            Iterator it = Log.a(str2, a).iterator();
            while (it.hasNext()) {
                android.util.Log.w(str, (String) it.next());
            }
        }

        public void w(String str, String str2, Object... objArr) {
            w(str, String.format(str2, objArr));
        }
    }

    static {
        b = false;
        c = new LogcatLogger();
    }

    Log() {
    }

    static Iterable a(String str, int i) {
        ArrayList arrayList = new ArrayList();
        if (str == null || str.length() == 0) {
            return arrayList;
        }
        int i2 = 0;
        while (i2 < str.length()) {
            arrayList.add(str.substring(i2, Math.min(str.length(), i2 + i)));
            i2 += i;
        }
        return arrayList;
    }

    public static boolean canLog() {
        return c == null ? false : DebugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_LOGGING, b);
    }

    public static void d(String str, String str2) {
        d(false, str, str2);
    }

    public static void d(String str, String str2, Object... objArr) {
        d(false, str, str2, objArr);
    }

    public static void d(boolean z, String str, String str2) {
        if (canLog() || z) {
            c.d(a + str, str2);
        }
    }

    public static void d(boolean z, String str, String str2, Object... objArr) {
        if (canLog() || z) {
            c.d(a + str, str2, objArr);
        }
    }

    public static void e(String str, String str2) {
        e(false, str, str2);
    }

    public static void e(String str, String str2, Object... objArr) {
        e(false, str, str2, objArr);
    }

    public static void e(boolean z, String str, String str2) {
        if (canLog() || z) {
            c.e(a + str, str2);
        }
    }

    public static void e(boolean z, String str, String str2, Object... objArr) {
        if (canLog() || z) {
            c.e(a + str, str2, objArr);
        }
    }

    public static void enableLogging(boolean z) {
        b = z;
    }

    public static final void enableLoggingWithSetterNotification(String str, boolean z) {
        if (!z) {
            logSetterNotification(str, "Debug logging", Boolean.valueOf(z));
        }
        enableLogging(z);
        if (z) {
            logSetterNotification(str, "Debug logging", Boolean.valueOf(z));
            d(str, "Amazon Mobile Ads API Version: %s", new Object[]{Version.getRawSDKVersion()});
        }
    }

    public static ILog getLogger() {
        return c;
    }

    public static void i(String str, String str2) {
        i(false, str, str2);
    }

    public static void i(String str, String str2, Object... objArr) {
        i(false, str, str2, objArr);
    }

    public static void i(boolean z, String str, String str2) {
        if (canLog() || z) {
            c.i(a + str, str2);
        }
    }

    public static void i(boolean z, String str, String str2, Object... objArr) {
        if (canLog() || z) {
            c.i(a + str, str2, objArr);
        }
    }

    public static final void logSetterNotification(String str, String str2, Object obj) {
        if (!canLog()) {
            return;
        }
        if (obj instanceof Boolean) {
            String str3 = "%s has been %s.";
            Object[] objArr = new Object[2];
            objArr[0] = str2;
            objArr[1] = ((Boolean) obj).booleanValue() ? "enabled" : "disabled";
            d(str, str3, objArr);
        } else {
            d(str, "%s has been set: %s", new Object[]{str2, String.valueOf(obj)});
        }
    }

    public static void setLogger(ILog iLog) {
        c = iLog;
    }

    public static void v(String str, String str2) {
        v(false, str, str2);
    }

    public static void v(String str, String str2, Object... objArr) {
        v(false, str, str2, objArr);
    }

    public static void v(boolean z, String str, String str2) {
        if (canLog() || z) {
            c.v(a + str, str2);
        }
    }

    public static void v(boolean z, String str, String str2, Object... objArr) {
        if (canLog() || z) {
            c.v(a + str, str2, objArr);
        }
    }

    public static void w(String str, String str2) {
        w(false, str, str2);
    }

    public static void w(String str, String str2, Object... objArr) {
        w(false, str, str2, objArr);
    }

    public static void w(boolean z, String str, String str2) {
        if (canLog() || z) {
            c.w(a + str, str2);
        }
    }

    public static void w(boolean z, String str, String str2, Object... objArr) {
        if (canLog() || z) {
            c.w(a + str, str2, objArr);
        }
    }
}