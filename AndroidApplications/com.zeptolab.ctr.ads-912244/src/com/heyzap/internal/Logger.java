package com.heyzap.internal;

import android.content.Context;
import android.util.Log;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public class Logger {
    static boolean ENABLED;
    static boolean ONLY_TEMP_LOG;
    static String tag;

    static {
        ONLY_TEMP_LOG = false;
        ENABLED = true;
        tag = Analytics.LOG_TAG;
    }

    public static void debug(Object obj) {
        if (!ENABLED) {
            return;
        }
        if (obj != null) {
            debug(obj.toString());
        } else {
            debug("NULL");
        }
    }

    public static void debug(String str) {
        if (!ENABLED) {
            return;
        }
        if (str != null) {
            Log.d(tag, str);
        } else {
            debug("NULL");
        }
    }

    public static void format(String str, Object... objArr) {
        debug(String.format(str, objArr));
    }

    public static void init(Context context) {
        new Thread(new e(context)).start();
    }

    public static void log(Object obj) {
        debug(obj);
    }

    public static void log(String str) {
        debug(str);
    }

    public static void log(Object... objArr) {
        if (!ENABLED || ONLY_TEMP_LOG) {
            return;
        }
        if (objArr == null) {
            log("null arguments");
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            int i = 0;
            while (i < objArr.length) {
                stringBuilder.append(String.valueOf(objArr[i]));
                if (i + 1 < objArr.length) {
                    stringBuilder.append(", ");
                }
                i++;
            }
            log(stringBuilder.toString());
        }
    }

    public static void t(Object... objArr) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < objArr.length) {
            stringBuilder.append(String.valueOf(objArr[i]));
            if (i + 1 < objArr.length) {
                stringBuilder.append(", ");
            }
            i++;
        }
        log(stringBuilder.toString());
    }

    public static void trace() {
        trace(AdTrackerConstants.BLANK);
    }

    public static void trace(Object obj) {
        if (ENABLED) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(String.format("Stack Trace: %s\n", new Object[]{String.valueOf(obj)}));
            StackTraceElement[] stackTrace = new RuntimeException().getStackTrace();
            int i = 1;
            while (i < stackTrace.length) {
                StackTraceElement stackTraceElement = stackTrace[i];
                stringBuilder.append(String.format("\t%s:%d in %s.%s\n", new Object[]{stackTraceElement.getFileName(), Integer.valueOf(stackTraceElement.getLineNumber()), stackTraceElement.getClassName(), stackTraceElement.getMethodName()}));
                i++;
            }
            log(stringBuilder.toString());
        }
    }

    public static void warn(String str) {
        Log.w(Analytics.LOG_TAG, str);
    }
}