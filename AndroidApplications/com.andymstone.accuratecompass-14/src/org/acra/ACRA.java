package org.acra;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.preference.PreferenceManager;
import com.andymstone.core.o;
import org.acra.d.a;
import org.acra.d.b;

public class ACRA {
    private static /* synthetic */ int[] $SWITCH_TABLE$org$acra$ReportingInteractionMode = null;
    public static final boolean DEV_LOGGING = false;
    public static final String LOG_TAG;
    public static final String PREF_ALWAYS_ACCEPT = "acra.alwaysaccept";
    public static final String PREF_DISABLE_ACRA = "acra.disable";
    public static final String PREF_ENABLE_ACRA = "acra.enable";
    public static final String PREF_ENABLE_DEVICE_ID = "acra.deviceid.enable";
    public static final String PREF_ENABLE_SYSTEM_LOGS = "acra.syslog.enable";
    public static final String PREF_LAST_VERSION_NR = "acra.lastVersionNr";
    public static final String PREF_USER_EMAIL_ADDRESS = "acra.user.email";
    private static b configProxy;
    private static ErrorReporter errorReporterSingleton;
    public static a log;
    private static Application mApplication;
    private static OnSharedPreferenceChangeListener mPrefListener;
    private static org.acra.a.a mReportsCrashes;

    static /* synthetic */ int[] $SWITCH_TABLE$org$acra$ReportingInteractionMode() {
        int[] iArr = $SWITCH_TABLE$org$acra$ReportingInteractionMode;
        if (iArr == null) {
            iArr = new int[ReportingInteractionMode.values().length];
            try {
                iArr[ReportingInteractionMode.DIALOG.ordinal()] = 4;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[ReportingInteractionMode.NOTIFICATION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[ReportingInteractionMode.SILENT.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[ReportingInteractionMode.TOAST.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            $SWITCH_TABLE$org$acra$ReportingInteractionMode = iArr;
        }
        return iArr;
    }

    static {
        LOG_TAG = ACRA.class.getSimpleName();
        log = new b();
    }

    static void checkCrashResources() {
        org.acra.a.a config = getConfig();
        switch ($SWITCH_TABLE$org$acra$ReportingInteractionMode()[config.r().ordinal()]) {
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                if (config.A() == 0 || config.B() == 0 || config.z() == 0 || config.w() == 0) {
                    throw new c("NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText, resDialogText parameters in your application @ReportsCrashes() annotation.");
                }
            case o.MyAlertDialog_MAD_titleStyle:
                if (config.C() == 0) {
                    throw new c("TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation.");
                }
            case o.MyAlertDialog_MAD_buttonBarStyle:
                if (config.w() == 0) {
                    throw new c("DIALOG mode: you have to define at least the resDialogText parameters in your application @ReportsCrashes() annotation.");
                }
            default:
                break;
        }
    }

    public static SharedPreferences getACRASharedPreferences() {
        org.acra.a.a config = getConfig();
        return "".equals(config.E()) ? PreferenceManager.getDefaultSharedPreferences(mApplication) : mApplication.getSharedPreferences(config.E(), config.D());
    }

    static Application getApplication() {
        return mApplication;
    }

    public static b getConfig() {
        if (configProxy == null) {
            if (mApplication == null) {
                log.b(LOG_TAG, "Calling ACRA.getConfig() before ACRA.init() gives you an empty configuration instance. You might prefer calling ACRA.getNewDefaultConfig(Application) to get an instance with default values taken from a @ReportsCrashes annotation.");
            }
            configProxy = getNewDefaultConfig(mApplication);
        }
        return configProxy;
    }

    public static ErrorReporter getErrorReporter() {
        if (errorReporterSingleton != null) {
            return errorReporterSingleton;
        }
        throw new IllegalStateException("Cannot access ErrorReporter before ACRA#init");
    }

    public static b getNewDefaultConfig(Application application) {
        return application != null ? new b((org.acra.a.a) application.getClass().getAnnotation(org.acra.a.a.class)) : new b(null);
    }

    public static void init(Application application) {
        if (mApplication != null) {
            log.b(LOG_TAG, "ACRA#init called more than once. Won't do anything more.");
        } else {
            mApplication = application;
            mReportsCrashes = (org.acra.a.a) mApplication.getClass().getAnnotation(org.acra.a.a.class);
            if (mReportsCrashes == null) {
                log.c(LOG_TAG, new StringBuilder("ACRA#init called but no ReportsCrashes annotation on Application ").append(mApplication.getPackageName()).toString());
            } else {
                SharedPreferences aCRASharedPreferences = getACRASharedPreferences();
                try {
                    checkCrashResources();
                    log.a(LOG_TAG, new StringBuilder("ACRA is enabled for ").append(mApplication.getPackageName()).append(", intializing...").toString());
                    ErrorReporter errorReporter = new ErrorReporter(mApplication, aCRASharedPreferences, shouldDisableACRA(aCRASharedPreferences) ? DEV_LOGGING : true);
                    errorReporter.d();
                    errorReporterSingleton = errorReporter;
                } catch (c e) {
                    log.a(LOG_TAG, "Error : ", e);
                }
                mPrefListener = new a();
                aCRASharedPreferences.registerOnSharedPreferenceChangeListener(mPrefListener);
            }
        }
    }

    static boolean isDebuggable() {
        boolean z = DEV_LOGGING;
        PackageManager packageManager = mApplication.getPackageManager();
        try {
            return (packageManager.getApplicationInfo(mApplication.getPackageName(), 0).flags & 2) > 0 ? true : z;
        } catch (NameNotFoundException e) {
            return z;
        }
    }

    public static void setConfig(b bVar) {
        configProxy = bVar;
    }

    public static void setLog(a aVar) {
        log = aVar;
    }

    private static boolean shouldDisableACRA(SharedPreferences sharedPreferences) {
        boolean z = true;
        boolean z2 = DEV_LOGGING;
        try {
            boolean z3 = sharedPreferences.getBoolean(PREF_ENABLE_ACRA, true);
            String str = PREF_DISABLE_ACRA;
            if (z3) {
                z = z2;
            }
            return sharedPreferences.getBoolean(str, z);
        } catch (Exception e) {
            return z2;
        }
    }
}