package org.acra;

import android.app.Activity;
import android.app.Application;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.text.format.Time;
import android.util.Log;
import java.io.File;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.acra.b.a;
import org.acra.b.b;
import org.acra.b.d;
import org.acra.c.a.a.a.c;
import org.acra.e.i;
import org.acra.e.k;
import org.acra.sender.HttpSender;

public class ErrorReporter implements UncaughtExceptionHandler {
    private static boolean k;
    private static int l;
    private boolean a;
    private final Application b;
    private final SharedPreferences c;
    private final List d;
    private final d e;
    private final f f;
    private final UncaughtExceptionHandler g;
    private Thread h;
    private Throwable i;
    private transient Activity j;

    static {
        k = true;
        l = 0;
    }

    ErrorReporter(Application application, SharedPreferences sharedPreferences, boolean z) {
        this.a = false;
        this.d = new ArrayList();
        this.f = new f();
        this.b = application;
        this.c = sharedPreferences;
        this.a = z;
        String a = b.a(this.b);
        Time time = new Time();
        time.setToNow();
        if (a.a() >= 14) {
            c.a(application, new j(this));
        }
        this.e = new d(this.b, sharedPreferences, time, a);
        this.g = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        c();
    }

    private String a(org.acra.b.c cVar) {
        Time time = new Time();
        time.setToNow();
        return time.toMillis(false) + (cVar.a(ReportField.IS_SILENT) != null ? d.a : "") + ".stacktrace";
    }

    private String a(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        int length = strArr.length - 1;
        while (length >= 0) {
            if (!this.f.a(strArr[length])) {
                return strArr[length];
            }
            length--;
        }
        return strArr[strArr.length - 1];
    }

    private void a(String str, org.acra.b.c cVar) {
        try {
            Log.d(ACRA.LOG_TAG, new StringBuilder("Writing crash report file ").append(str).append(".").toString());
            new i(this.b).a(cVar, str);
        } catch (Exception e) {
            Log.e(ACRA.LOG_TAG, "An error occurred while writing the report file...", e);
        }
    }

    private void a(Throwable th, ReportingInteractionMode reportingInteractionMode, boolean z, boolean z2) {
        boolean z3 = true;
        if (this.a) {
            boolean z4;
            int i;
            if (reportingInteractionMode == null) {
                reportingInteractionMode = ACRA.getConfig().r();
                z4 = false;
            } else if (reportingInteractionMode != ReportingInteractionMode.SILENT || ACRA.getConfig().r() == ReportingInteractionMode.SILENT) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (th == null) {
                th = new Exception("Report requested by developer");
            }
            i = reportingInteractionMode == ReportingInteractionMode.TOAST || (ACRA.getConfig().C() != 0 && (reportingInteractionMode == ReportingInteractionMode.NOTIFICATION || reportingInteractionMode == ReportingInteractionMode.DIALOG));
            if (i != 0) {
                new k(this).start();
            }
            org.acra.b.c a = this.e.a(th, z, this.h);
            String a2 = a(a);
            a(a2, a);
            y yVar = null;
            if (reportingInteractionMode == ReportingInteractionMode.SILENT || reportingInteractionMode == ReportingInteractionMode.TOAST || this.c.getBoolean(ACRA.PREF_ALWAYS_ACCEPT, false)) {
                Log.d(ACRA.LOG_TAG, "About to start ReportSenderWorker from #handleException");
                yVar = a(z4, true);
            } else if (reportingInteractionMode == ReportingInteractionMode.NOTIFICATION) {
                Log.d(ACRA.LOG_TAG, "Notification will be created on application start.");
            }
            if (i != 0) {
                k = false;
                new l(this).start();
            }
            if (reportingInteractionMode != ReportingInteractionMode.DIALOG || this.c.getBoolean(ACRA.PREF_ALWAYS_ACCEPT, false)) {
                z3 = false;
            }
            new m(this, yVar, z3, a2, z2).start();
        }
    }

    private void a(boolean z, boolean z2, int i) {
        String[] a = new g(this.b).a();
        Arrays.sort(a);
        if (a != null) {
            int i2 = 0;
            while (i2 < a.length - i) {
                String str = a[i2];
                boolean b = this.f.b(str);
                if ((b && z) || (!b && z2)) {
                    File file = new File(this.b.getFilesDir(), str);
                    ACRA.log.a(ACRA.LOG_TAG, new StringBuilder("Deleting file ").append(str).toString());
                    if (!file.delete()) {
                        Log.e(ACRA.LOG_TAG, new StringBuilder("Could not delete report : ").append(file).toString());
                    }
                }
                i2++;
            }
        }
    }

    private void b(String str) {
        NotificationManager notificationManager = (NotificationManager) this.b.getSystemService("notification");
        org.acra.a.a config = ACRA.getConfig();
        Notification notification = new Notification(config.y(), this.b.getText(config.A()), System.currentTimeMillis());
        CharSequence text = this.b.getText(config.B());
        CharSequence text2 = this.b.getText(config.z());
        Intent intent = new Intent(this.b, e.class);
        Log.d(ACRA.LOG_TAG, new StringBuilder("Creating Notification for ").append(str).toString());
        intent.putExtra("REPORT_FILE_NAME", str);
        Context context = this.b;
        int i = l;
        l = i + 1;
        notification.setLatestEventInfo(this.b, text, text2, PendingIntent.getActivity(context, i, intent, 134217728));
        Intent intent2 = new Intent(this.b, e.class);
        intent2.putExtra("FORCE_CANCEL", true);
        notification.deleteIntent = PendingIntent.getActivity(this.b, -1, intent2, 0);
        notificationManager.notify(666, notification);
    }

    private boolean b(String[] strArr) {
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            if (!this.f.b(strArr[i])) {
                return false;
            }
            i++;
        }
        return true;
    }

    private void f() {
        if (ACRA.getConfig().r() == ReportingInteractionMode.SILENT || (ACRA.getConfig().r() == ReportingInteractionMode.TOAST && ACRA.getConfig().i())) {
            this.g.uncaughtException(this.h, this.i);
        } else {
            Log.e(ACRA.LOG_TAG, new StringBuilder(String.valueOf(this.b.getPackageName())).append(" fatal error : ").append(this.i.getMessage()).toString(), this.i);
            if (this.j != null) {
                Log.i(ACRA.LOG_TAG, "Finishing the last Activity prior to killing the Process");
                this.j.finish();
                Log.i(ACRA.LOG_TAG, new StringBuilder("Finished ").append(this.j.getClass()).toString());
                this.j = null;
            }
            Process.killProcess(Process.myPid());
            System.exit(10);
        }
    }

    y a(boolean z, boolean z2) {
        y yVar = new y(this.b, this.d, z, z2);
        yVar.start();
        return yVar;
    }

    public void a() {
        this.d.clear();
    }

    void a(String str) {
        Log.d(ACRA.LOG_TAG, new StringBuilder("Creating Dialog for ").append(str).toString());
        Intent intent = new Intent(this.b, e.class);
        intent.putExtra("REPORT_FILE_NAME", str);
        intent.setFlags(268435456);
        this.b.startActivity(intent);
    }

    public void a(org.acra.sender.c cVar) {
        this.d.add(cVar);
    }

    public void a(boolean z) {
        Log.i(ACRA.LOG_TAG, new StringBuilder("ACRA is ").append(z ? "enabled" : "disabled").append(" for ").append(this.b.getPackageName()).toString());
        this.a = z;
    }

    @Deprecated
    public void addCustomData(String str, String str2) {
        this.e.a(str, str2);
    }

    void b() {
        a(true, true, 0);
    }

    public void b(org.acra.sender.c cVar) {
        a();
        a(cVar);
    }

    void b(boolean z) {
        a(false, true, z ? 1 : 0);
    }

    public void c() {
        long j = (long) this.c.getInt(ACRA.PREF_LAST_VERSION_NR, 0);
        PackageInfo a = new i(this.b).a();
        int i = a != null && ((long) a.versionCode) > j;
        if (i != 0) {
            if (ACRA.getConfig().g()) {
                b();
            }
            Editor edit = this.c.edit();
            edit.putInt(ACRA.PREF_LAST_VERSION_NR, a.versionCode);
            edit.commit();
        }
        if ((ACRA.getConfig().r() == ReportingInteractionMode.NOTIFICATION || ACRA.getConfig().r() == ReportingInteractionMode.DIALOG) && ACRA.getConfig().f()) {
            b(true);
        }
        g gVar = new g(this.b);
        String[] a2 = gVar.a();
        if (a2 != null && a2.length > 0) {
            ReportingInteractionMode r = ACRA.getConfig().r();
            String[] a3 = gVar.a();
            boolean b = b(a3);
            if (r == ReportingInteractionMode.SILENT || r == ReportingInteractionMode.TOAST || (b && (r == ReportingInteractionMode.NOTIFICATION || r == ReportingInteractionMode.DIALOG))) {
                if (r == ReportingInteractionMode.TOAST && !b) {
                    k.a(this.b, ACRA.getConfig().C(), 1);
                }
                Log.v(ACRA.LOG_TAG, "About to start ReportSenderWorker from #checkReportOnApplicationStart");
                a(false, false);
            } else if (ACRA.getConfig().r() == ReportingInteractionMode.NOTIFICATION) {
                b(a(a3));
            } else {
                ACRA.getConfig().r();
                ReportingInteractionMode reportingInteractionMode = ReportingInteractionMode.DIALOG;
            }
        }
    }

    public void d() {
        org.acra.a.a config = ACRA.getConfig();
        Context application = ACRA.getApplication();
        a();
        if (!"".equals(config.p())) {
            Log.w(ACRA.LOG_TAG, new StringBuilder(String.valueOf(application.getPackageName())).append(" reports will be sent by email (if accepted by user).").toString());
            b(new org.acra.sender.a(application));
        } else if (!new i(application).a("android.permission.INTERNET")) {
            Log.e(ACRA.LOG_TAG, new StringBuilder(String.valueOf(application.getPackageName())).append(" should be granted permission ").append("android.permission.INTERNET").append(" if you want your crash reports to be sent. If you don't want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\"").toString());
        } else if (config.k() != null && !"".equals(config.k())) {
            b(new HttpSender(ACRA.getConfig().O(), ACRA.getConfig().P(), null));
        } else if (config.j() != null && !"".equals(config.j().trim())) {
            a(new org.acra.sender.b());
        }
    }

    public void handleSilentException(Throwable th) {
        if (this.a) {
            a(th, ReportingInteractionMode.SILENT, true, false);
            Log.d(ACRA.LOG_TAG, "ACRA sent Silent report.");
        } else {
            Log.d(ACRA.LOG_TAG, "ACRA is disabled. Silent report not sent.");
        }
    }

    public void uncaughtException(Thread thread, Throwable th) {
        try {
            if (this.a) {
                this.h = thread;
                this.i = th;
                Log.e(ACRA.LOG_TAG, new StringBuilder("ACRA caught a ").append(th.getClass().getSimpleName()).append(" exception for ").append(this.b.getPackageName()).append(". Building report.").toString());
                a(th, ACRA.getConfig().r(), false, true);
            } else if (this.g != null) {
                Log.e(ACRA.LOG_TAG, new StringBuilder("ACRA is disabled for ").append(this.b.getPackageName()).append(" - forwarding uncaught Exception on to default ExceptionHandler").toString());
                this.g.uncaughtException(thread, th);
            } else {
                Log.e(ACRA.LOG_TAG, new StringBuilder("ACRA is disabled for ").append(this.b.getPackageName()).append(" - no default ExceptionHandler").toString());
            }
        } catch (Throwable th2) {
            if (this.g != null) {
                this.g.uncaughtException(thread, th);
            }
        }
    }
}