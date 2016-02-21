package org.acra.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.format.Time;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.acra.ACRA;
import org.acra.ReportField;
import org.acra.a.a;
import org.acra.e.e;
import org.acra.e.i;
import org.acra.e.j;

public final class d {
    private final Context a;
    private final SharedPreferences b;
    private final Map c;
    private final Time d;
    private final String e;

    public d(Context context, SharedPreferences sharedPreferences, Time time, String str) {
        this.c = new HashMap();
        this.a = context;
        this.b = sharedPreferences;
        this.d = time;
        this.e = str;
    }

    private String a() {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = this.c.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String str2 = (String) this.c.get(str);
            stringBuilder.append(str);
            stringBuilder.append(" = ");
            if (str2 != null) {
                str2 = str2.replaceAll("\n", "\\\\n");
            }
            stringBuilder.append(str2);
            stringBuilder.append("\n");
        }
        return stringBuilder.toString();
    }

    private String a(Throwable th) {
        Writer stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        while (th != null) {
            th.printStackTrace(printWriter);
            th = th.getCause();
        }
        String toString = stringWriter.toString();
        printWriter.close();
        return toString;
    }

    private List b() {
        a config = ACRA.getConfig();
        Object[] e = config.e();
        if (e.length != 0) {
            Log.d(ACRA.LOG_TAG, "Using custom Report Fields");
        } else if (config.p() == null || "".equals(config.p())) {
            Log.d(ACRA.LOG_TAG, "Using default Report Fields");
            e = org.acra.d.c;
        } else {
            Log.d(ACRA.LOG_TAG, "Using default Mail Report Fields");
            e = org.acra.d.b;
        }
        return Arrays.asList(e);
    }

    public String a(String str, String str2) {
        return (String) this.c.put(str, str2);
    }

    public c a(Throwable th, boolean z, Thread thread) {
        c cVar = new c();
        try {
            List b = b();
            cVar.put(ReportField.STACK_TRACE, a(th));
            cVar.put(ReportField.USER_APP_START_DATE, this.d.format3339(false));
            if (z) {
                cVar.put(ReportField.IS_SILENT, "true");
            }
            if (b.contains(ReportField.REPORT_ID)) {
                cVar.put(ReportField.REPORT_ID, UUID.randomUUID().toString());
            }
            if (b.contains(ReportField.INSTALLATION_ID)) {
                cVar.put(ReportField.INSTALLATION_ID, e.a(this.a));
            }
            if (b.contains(ReportField.INITIAL_CONFIGURATION)) {
                cVar.put(ReportField.INITIAL_CONFIGURATION, this.e);
            }
            if (b.contains(ReportField.CRASH_CONFIGURATION)) {
                cVar.put(ReportField.CRASH_CONFIGURATION, b.a(this.a));
            }
            if (!th instanceof OutOfMemoryError && b.contains(ReportField.DUMPSYS_MEMINFO)) {
                cVar.put(ReportField.DUMPSYS_MEMINFO, h.a());
            }
            if (b.contains(ReportField.PACKAGE_NAME)) {
                cVar.put(ReportField.PACKAGE_NAME, this.a.getPackageName());
            }
            if (b.contains(ReportField.BUILD)) {
                cVar.put(ReportField.BUILD, new StringBuilder(String.valueOf(n.b(Build.class))).append(n.a(VERSION.class, "VERSION")).toString());
            }
            if (b.contains(ReportField.PHONE_MODEL)) {
                cVar.put(ReportField.PHONE_MODEL, Build.MODEL);
            }
            if (b.contains(ReportField.ANDROID_VERSION)) {
                cVar.put(ReportField.ANDROID_VERSION, VERSION.RELEASE);
            }
            if (b.contains(ReportField.BRAND)) {
                cVar.put(ReportField.BRAND, Build.BRAND);
            }
            if (b.contains(ReportField.PRODUCT)) {
                cVar.put(ReportField.PRODUCT, Build.PRODUCT);
            }
            if (b.contains(ReportField.TOTAL_MEM_SIZE)) {
                cVar.put(ReportField.TOTAL_MEM_SIZE, Long.toString(j.b()));
            }
            if (b.contains(ReportField.AVAILABLE_MEM_SIZE)) {
                cVar.put(ReportField.AVAILABLE_MEM_SIZE, Long.toString(j.a()));
            }
            if (b.contains(ReportField.FILE_PATH)) {
                cVar.put(ReportField.FILE_PATH, j.b(this.a));
            }
            if (b.contains(ReportField.DISPLAY)) {
                cVar.put(ReportField.DISPLAY, f.a(this.a));
            }
            if (b.contains(ReportField.USER_CRASH_DATE)) {
                Time time = new Time();
                time.setToNow();
                cVar.put(ReportField.USER_CRASH_DATE, time.format3339(false));
            }
            if (b.contains(ReportField.CUSTOM_DATA)) {
                cVar.put(ReportField.CUSTOM_DATA, a());
            }
            if (b.contains(ReportField.USER_EMAIL)) {
                cVar.put(ReportField.USER_EMAIL, this.b.getString(ACRA.PREF_USER_EMAIL_ADDRESS, "N/A"));
            }
            if (b.contains(ReportField.DEVICE_FEATURES)) {
                cVar.put(ReportField.DEVICE_FEATURES, e.a(this.a));
            }
            if (b.contains(ReportField.ENVIRONMENT)) {
                cVar.put(ReportField.ENVIRONMENT, n.a(Environment.class));
            }
            if (b.contains(ReportField.SETTINGS_SYSTEM)) {
                cVar.put(ReportField.SETTINGS_SYSTEM, o.a(this.a));
            }
            if (b.contains(ReportField.SETTINGS_SECURE)) {
                cVar.put(ReportField.SETTINGS_SECURE, o.b(this.a));
            }
            if (b.contains(ReportField.SETTINGS_GLOBAL)) {
                cVar.put(ReportField.SETTINGS_GLOBAL, o.c(this.a));
            }
            if (b.contains(ReportField.SHARED_PREFERENCES)) {
                cVar.put(ReportField.SHARED_PREFERENCES, p.a(this.a));
            }
            i iVar = new i(this.a);
            PackageInfo a = iVar.a();
            if (a != null) {
                if (b.contains(ReportField.APP_VERSION_CODE)) {
                    cVar.put(ReportField.APP_VERSION_CODE, Integer.toString(a.versionCode));
                }
                if (b.contains(ReportField.APP_VERSION_NAME)) {
                    cVar.put(ReportField.APP_VERSION_NAME, a.versionName != null ? a.versionName : "not set");
                }
            } else {
                cVar.put(ReportField.APP_VERSION_NAME, "Package info unavailable");
            }
            if (b.contains(ReportField.DEVICE_ID) && this.b.getBoolean(ACRA.PREF_ENABLE_DEVICE_ID, true) && iVar.a("android.permission.READ_PHONE_STATE")) {
                String a2 = j.a(this.a);
                if (a2 != null) {
                    cVar.put(ReportField.DEVICE_ID, a2);
                }
            }
            if (!(this.b.getBoolean(ACRA.PREF_ENABLE_SYSTEM_LOGS, true) && iVar.a("android.permission.READ_LOGS")) && a.a() < 16) {
                Log.i(ACRA.LOG_TAG, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data.");
            } else {
                Log.i(ACRA.LOG_TAG, "READ_LOGS granted! ACRA can include LogCat and DropBox data.");
                if (b.contains(ReportField.LOGCAT)) {
                    cVar.put(ReportField.LOGCAT, i.a(null));
                }
                if (b.contains(ReportField.EVENTSLOG)) {
                    cVar.put(ReportField.EVENTSLOG, i.a("events"));
                }
                if (b.contains(ReportField.RADIOLOG)) {
                    cVar.put(ReportField.RADIOLOG, i.a("radio"));
                }
                if (b.contains(ReportField.DROPBOX)) {
                    cVar.put(ReportField.DROPBOX, g.a(this.a, ACRA.getConfig().b()));
                }
            }
            if (b.contains(ReportField.APPLICATION_LOG)) {
                cVar.put(ReportField.APPLICATION_LOG, k.a(this.a, ACRA.getConfig().K(), ACRA.getConfig().L()));
            }
            if (b.contains(ReportField.MEDIA_CODEC_LIST)) {
                cVar.put(ReportField.MEDIA_CODEC_LIST, l.a());
            }
            if (b.contains(ReportField.THREAD_DETAILS)) {
                cVar.put(ReportField.THREAD_DETAILS, q.a(thread));
            }
            if (b.contains(ReportField.USER_IP)) {
                cVar.put(ReportField.USER_IP, j.c());
            }
        } catch (RuntimeException e) {
            Log.e(ACRA.LOG_TAG, "Error while retrieving crash data", e);
        } catch (FileNotFoundException e2) {
            Log.e(ACRA.LOG_TAG, new StringBuilder("Error : application log file ").append(ACRA.getConfig().K()).append(" not found.").toString(), e2);
        } catch (IOException e3) {
            Log.e(ACRA.LOG_TAG, new StringBuilder("Error while reading application log file ").append(ACRA.getConfig().K()).append(".").toString(), e3);
        }
        return cVar;
    }
}