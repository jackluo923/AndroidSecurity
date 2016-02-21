package com.inmobi.commons.internal;

import com.inmobi.commons.thinICE.icedatacollector.BuildSettings;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class Log {
    private static INTERNAL_LOG_LEVEL a;

    public enum INTERNAL_LOG_LEVEL {
        NOT_SET(-1),
        NONE(0),
        DEBUG(1),
        VERBOSE(2),
        INTERNAL(3);
        private final int a;

        static {
            NOT_SET = new com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL("NOT_SET", 0, -1);
            NONE = new com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL("NONE", 1, 0);
            DEBUG = new com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL("DEBUG", 2, 1);
            VERBOSE = new com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL("VERBOSE", 3, 2);
            INTERNAL = new com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL("INTERNAL", 4, 3);
            b = new com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL[]{NOT_SET, NONE, DEBUG, VERBOSE, INTERNAL};
        }

        private INTERNAL_LOG_LEVEL(int i) {
            this.a = i;
        }

        public int getValue() {
            return this.a;
        }
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL.values().length];
            try {
                a[com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL.INTERNAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            a[com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL.VERBOSE.ordinal()] = 3;
        }
    }

    static {
        a = INTERNAL_LOG_LEVEL.NOT_SET;
    }

    public static void debug(String str, String str2) {
        if (a.getValue() >= INTERNAL_LOG_LEVEL.DEBUG.getValue() || (a == INTERNAL_LOG_LEVEL.NOT_SET && CommonsConfig.getLogLevelConfig() >= INTERNAL_LOG_LEVEL.DEBUG.getValue())) {
            android.util.Log.d(str, str2);
        }
    }

    public static void debug(String str, String str2, Throwable th) {
        switch (a.a[a.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                debug(str, str2);
            case GoogleScorer.CLIENT_PLUS:
                internal(str, str2, th);
            default:
                break;
        }
    }

    public static INTERNAL_LOG_LEVEL getLogLevel() {
        return a;
    }

    public static INTERNAL_LOG_LEVEL getLogLevelValue(long j) {
        if (j == 2) {
            return INTERNAL_LOG_LEVEL.INTERNAL;
        }
        return j == 1 ? INTERNAL_LOG_LEVEL.DEBUG : INTERNAL_LOG_LEVEL.NONE;
    }

    public static void internal(String str, String str2) {
        if (a.getValue() >= INTERNAL_LOG_LEVEL.INTERNAL.getValue() || (a == INTERNAL_LOG_LEVEL.NOT_SET && CommonsConfig.getLogLevelConfig() >= INTERNAL_LOG_LEVEL.INTERNAL.getValue())) {
            StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
            android.util.Log.v(str, stackTraceElement.getFileName() + ": " + stackTraceElement.getMethodName() + " " + str2);
        }
    }

    public static void internal(String str, String str2, Throwable th) {
        if (a.getValue() >= INTERNAL_LOG_LEVEL.INTERNAL.getValue() || (a == INTERNAL_LOG_LEVEL.NOT_SET && CommonsConfig.getLogLevelConfig() >= INTERNAL_LOG_LEVEL.INTERNAL.getValue())) {
            StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
            android.util.Log.e(str, stackTraceElement.getFileName() + ": " + stackTraceElement.getMethodName() + " " + str2, th);
        }
    }

    public static void setInternalLogLevel(INTERNAL_LOG_LEVEL internal_log_level) {
        a = internal_log_level;
        if (a == INTERNAL_LOG_LEVEL.INTERNAL) {
            BuildSettings.DEBUG = true;
        }
    }

    public static void verbose(String str, String str2) {
        if (a.getValue() >= INTERNAL_LOG_LEVEL.VERBOSE.getValue() || (a == INTERNAL_LOG_LEVEL.NOT_SET && CommonsConfig.getLogLevelConfig() >= INTERNAL_LOG_LEVEL.VERBOSE.getValue())) {
            android.util.Log.i(str, str2);
        }
    }

    public static void verbose(String str, String str2, Throwable th) {
        switch (a.a[a.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                verbose(str, str2);
            case GoogleScorer.CLIENT_PLUS:
                internal(str, str2, th);
            default:
                break;
        }
    }
}