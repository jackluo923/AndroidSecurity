package com.flurry.android;

import android.content.Context;
import android.os.Build.VERSION;
import com.flurry.sdk.cu;
import com.flurry.sdk.di;
import com.flurry.sdk.dk;
import com.flurry.sdk.dm;
import com.flurry.sdk.dw;
import com.flurry.sdk.el;
import com.flurry.sdk.fb;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Date;
import java.util.Map;

public final class FlurryAgent {
    private static final String a;

    static {
        a = FlurryAgent.class.getSimpleName();
    }

    private FlurryAgent() {
    }

    public static void addOrigin(String str, String str2) {
        addOrigin(str, str2, null);
    }

    public static void addOrigin(String str, String str2, Map map) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("originName not specified");
        } else if (str2 == null || str2.length() == 0) {
            throw new IllegalArgumentException("originVersion not specified");
        } else {
            try {
                cu.a().a(str, str2, map);
            } catch (Throwable th) {
                el.a(a, AdTrackerConstants.BLANK, th);
            }
        }
    }

    public static void clearLocation() {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            dw.a().e();
        }
    }

    public static void endTimedEvent(String str) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String eventId passed to endTimedEvent was null.");
        } else {
            try {
                cu.a().b(str);
            } catch (Throwable th) {
                el.a(a, "Failed to signify the end of event: " + str, th);
            }
        }
    }

    public static void endTimedEvent(String str, Map map) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String eventId passed to endTimedEvent was null.");
        } else if (map == null) {
            el.b(a, "String eventId passed to endTimedEvent was null.");
        } else {
            try {
                cu.a().b(str, map);
            } catch (Throwable th) {
                el.a(a, "Failed to signify the end of event: " + str, th);
            }
        }
    }

    public static int getAgentVersion() {
        return dk.a().b();
    }

    public static String getReleaseVersion() {
        return dk.a().g();
    }

    public static boolean getUseHttps() {
        if (VERSION.SDK_INT >= 10) {
            return ((Boolean) dm.a().a("UseHttps")).booleanValue();
        }
        el.b(a, "Device SDK Version older than 10");
        return false;
    }

    public static void logEvent(String str) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String eventId passed to logEvent was null.");
        } else {
            try {
                cu.a().a(str);
            } catch (Throwable th) {
                el.a(a, "Failed to log event: " + str, th);
            }
        }
    }

    public static void logEvent(String str, Map map) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String eventId passed to logEvent was null.");
        } else if (map == null) {
            el.b(a, "String parameters passed to logEvent was null.");
        } else {
            try {
                cu.a().a(str, map);
            } catch (Throwable th) {
                el.a(a, "Failed to log event: " + str, th);
            }
        }
    }

    public static void logEvent(String str, Map map, boolean z) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String eventId passed to logEvent was null.");
        } else if (map == null) {
            el.b(a, "String parameters passed to logEvent was null.");
        } else {
            try {
                cu.a().a(str, map, z);
            } catch (Throwable th) {
                el.a(a, "Failed to log event: " + str, th);
            }
        }
    }

    public static void logEvent(String str, boolean z) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String eventId passed to logEvent was null.");
        } else {
            try {
                cu.a().a(str, z);
            } catch (Throwable th) {
                el.a(a, "Failed to log event: " + str, th);
            }
        }
    }

    public static void onEndSession(Context context) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (context == null) {
            throw new NullPointerException("Null context");
        } else {
            try {
                di.a().a(context);
            } catch (Throwable th) {
                el.a(a, AdTrackerConstants.BLANK, th);
            }
        }
    }

    @Deprecated
    public static void onError(String str, String str2, String str3) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String errorId passed to onError was null.");
        } else if (str2 == null) {
            el.b(a, "String message passed to onError was null.");
        } else if (str3 == null) {
            el.b(a, "String errorClass passed to onError was null.");
        } else {
            try {
                cu.a().a(str, str2, str3);
            } catch (Throwable th) {
                el.a(a, AdTrackerConstants.BLANK, th);
            }
        }
    }

    public static void onError(String str, String str2, Throwable th) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String errorId passed to onError was null.");
        } else if (str2 == null) {
            el.b(a, "String message passed to onError was null.");
        } else if (th == null) {
            el.b(a, "Throwable passed to onError was null.");
        } else {
            try {
                cu.a().a(str, str2, th);
            } catch (Throwable th2) {
                el.a(a, AdTrackerConstants.BLANK, th2);
            }
        }
    }

    @Deprecated
    public static void onEvent(String str) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String eventId passed to onEvent was null.");
        } else {
            try {
                cu.a().c(str);
            } catch (Throwable th) {
                el.a(a, AdTrackerConstants.BLANK, th);
            }
        }
    }

    @Deprecated
    public static void onEvent(String str, Map map) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String eventId passed to onEvent was null.");
        } else if (map == null) {
            el.b(a, "Parameters Map passed to onEvent was null.");
        } else {
            try {
                cu.a().c(str, map);
            } catch (Throwable th) {
                el.a(a, AdTrackerConstants.BLANK, th);
            }
        }
    }

    public static void onPageView() {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            try {
                cu.a().c();
            } catch (Throwable th) {
                el.a(a, AdTrackerConstants.BLANK, th);
            }
        }
    }

    public static void onStartSession(Context context, String str) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (context == null) {
            throw new NullPointerException("Null context");
        } else if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Api key not specified");
        } else {
            try {
                di.a().a(context, str);
            } catch (Throwable th) {
                el.a(a, AdTrackerConstants.BLANK, th);
            }
        }
    }

    public static void setAge(int i) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (i > 0 && i < 110) {
            dm.a().a("Age", Long.valueOf(new Date(new Date(System.currentTimeMillis() - ((long) i) * 31449600000L).getYear(), 1, 1).getTime()));
        }
    }

    public static void setCaptureUncaughtExceptions(boolean z) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            dm.a().a("CaptureUncaughtExceptions", Boolean.valueOf(z));
        }
    }

    public static void setContinueSessionMillis(long j) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (j < 5000) {
            el.b(a, "Invalid time set for session resumption: " + j);
        } else {
            dm.a().a("ContinueSessionMillis", Long.valueOf(j));
        }
    }

    public static void setGender(byte b) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            switch (b) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                case GoogleScorer.CLIENT_GAMES:
                    dm.a().a("Gender", Byte.valueOf(b));
                default:
                    dm.a().a("Gender", Byte.valueOf((byte) -1));
            }
        }
    }

    public static void setLocation(float f, float f2) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            dw.a().a(f, f2);
        }
    }

    public static void setLocationCriteria(Object obj) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            dm.a().a("LocationCriteria", obj);
        }
    }

    public static void setLogEnabled(boolean z) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (z) {
            el.b();
        } else {
            el.a();
        }
    }

    public static void setLogEvents(boolean z) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            dm.a().a("LogEvents", Boolean.valueOf(z));
        }
    }

    public static void setLogLevel(int i) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            el.a(i);
        }
    }

    public static void setReportLocation(boolean z) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            dm.a().a("ReportLocation", Boolean.valueOf(z));
        }
    }

    public static void setReportUrl(Object obj) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            dm.a().a("ReportUrl", obj);
        }
    }

    public static void setUseHttps(boolean z) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else {
            dm.a().a("UseHttps", Boolean.valueOf(z));
        }
    }

    public static void setUserId(String str) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (str == null) {
            el.b(a, "String userId passed to setUserId was null.");
        } else {
            dm.a().a("UserId", fb.a(str));
        }
    }

    public static void setVersionName(Object obj) {
        if (VERSION.SDK_INT < 10) {
            el.b(a, "Device SDK Version older than 10");
        } else if (obj == null) {
            el.b(a, "String versionName passed to setVersionName was null.");
        } else {
            dm.a().a("VersionName", obj);
        }
    }
}