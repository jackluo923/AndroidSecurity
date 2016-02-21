package org.acra;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.acra.b.c;
import org.acra.sender.d;

final class y extends Thread {
    private final Context a;
    private final boolean b;
    private final boolean c;
    private final f d;
    private final List e;

    public y(Context context, List list, boolean z, boolean z2) {
        this.d = new f();
        this.a = context;
        this.e = list;
        this.b = z;
        this.c = z2;
    }

    private void a() {
        Log.d(ACRA.LOG_TAG, "Mark all pending reports as approved.");
        String[] a = new g(this.a).a();
        int length = a.length;
        int i = 0;
        while (i < length) {
            String str = a[i];
            if (!this.d.b(str)) {
                File file = new File(this.a.getFilesDir(), str);
                File file2 = new File(this.a.getFilesDir(), str.replace(".stacktrace", "-approved.stacktrace"));
                if (!file.renameTo(file2)) {
                    Log.e(ACRA.LOG_TAG, new StringBuilder("Could not rename approved report from ").append(file).append(" to ").append(file2).toString());
                }
            }
            i++;
        }
    }

    private void a(Context context, String str) {
        if (!context.deleteFile(str)) {
            Log.w(ACRA.LOG_TAG, new StringBuilder("Could not delete error report : ").append(str).toString());
        }
    }

    private void a(Context context, boolean z) {
        int i = 0;
        Log.d(ACRA.LOG_TAG, "#checkAndSendReports - start");
        String[] a = new g(context).a();
        Arrays.sort(a);
        int length = a.length;
        int i2 = 0;
        while (i2 < length) {
            String str = a[i2];
            if ((!z || this.d.a(str)) && i >= 5) {
                break;
            }
            Log.i(ACRA.LOG_TAG, new StringBuilder("Sending file ").append(str).toString());
            try {
                a(new i(context).a(str));
                a(context, str);
            } catch (RuntimeException e) {
                Log.e(ACRA.LOG_TAG, new StringBuilder("Failed to send crash reports for ").append(str).toString(), e);
                a(context, str);
            } catch (IOException e2) {
                Log.e(ACRA.LOG_TAG, new StringBuilder("Failed to load crash report for ").append(str).toString(), e2);
                a(context, str);
            } catch (d e3) {
                Log.e(ACRA.LOG_TAG, new StringBuilder("Failed to send crash report for ").append(str).toString(), e3);
            }
            i++;
            i2++;
        }
        Log.d(ACRA.LOG_TAG, "#checkAndSendReports - finish");
    }

    private void a(c cVar) {
        if (!ACRA.isDebuggable() || ACRA.getConfig().H()) {
            Iterator it = this.e.iterator();
            int i = 0;
            while (it.hasNext()) {
                org.acra.sender.c cVar2 = (org.acra.sender.c) it.next();
                try {
                    cVar2.a(cVar);
                    i = 1;
                } catch (d e) {
                    d dVar = e;
                    if (i == 0) {
                        throw dVar;
                    }
                    Log.w(ACRA.LOG_TAG, new StringBuilder("ReportSender of class ").append(cVar2.getClass().getName()).append(" failed but other senders completed their task. ACRA will not send this report again.").toString());
                }
            }
        }
    }

    public void run() {
        if (this.c) {
            a();
        }
        a(this.a, this.b);
    }
}