package me.kiip.internal.a;

import android.os.SystemClock;
import android.util.Log;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class t {
    public static String a;
    public static final boolean b;

    static class a {
        public static final boolean a;
        private final List b;
        private boolean c;

        private static class a {
            public final String a;
            public final long b;
            public final long c;

            public a(String str, long j, long j2) {
                this.a = str;
                this.b = j;
                this.c = j2;
            }
        }

        static {
            a = b;
        }

        a() {
            this.b = new ArrayList();
            this.c = false;
        }

        private long a_() {
            if (this.b.size() == 0) {
                return 0;
            }
            return ((a) this.b.get(this.b.size() - 1)).c - ((a) this.b.get(0)).c;
        }

        public synchronized void a_(String str) {
            this.c = true;
            if (a() > 0) {
                long j = ((a) this.b.get(0)).c;
                t.b("(%-4d ms) %s", new Object[]{Long.valueOf(j), str});
                Iterator it = this.b.iterator();
                long j2 = j;
                while (it.hasNext()) {
                    t.b("(+%-4d) [%2d] %s", new Object[]{Long.valueOf(((a) it.next()).c - j2), Long.valueOf(aVar.b), aVar.a});
                    j2 = j;
                }
            }
        }

        public synchronized void a_(String str, long j) {
            if (this.c) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.b.add(new a(str, j, SystemClock.elapsedRealtime()));
        }

        protected void finalize() {
            if (!this.c) {
                a("Request on the loose");
                t.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }
    }

    static {
        a = "Volley";
        b = Log.isLoggable(a, GoogleScorer.CLIENT_PLUS);
    }

    public static void a(String str, Object... objArr) {
        if (b) {
            Log.v(a, e(str, objArr));
        }
    }

    public static void a(Throwable th, String str, Object... objArr) {
        Log.e(a, e(str, objArr), th);
    }

    public static void b(String str, Object... objArr) {
        Log.d(a, e(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        Log.e(a, e(str, objArr));
    }

    public static void d(String str, Object... objArr) {
        Log.wtf(a, e(str, objArr));
    }

    private static String e(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        String str3 = "<unknown>";
        int i = 2;
        while (i < stackTrace.length) {
            if (!stackTrace[i].getClass().equals(t.class)) {
                str3 = stackTrace[i].getClassName();
                str3 = str3.substring(str3.lastIndexOf(ApiEventType.API_MRAID_SEEK_VIDEO) + 1);
                str2 = str3.substring(str3.lastIndexOf(ApiEventType.API_MRAID_SET_AUDIO_VOLUME) + 1) + "." + stackTrace[i].getMethodName();
                break;
            } else {
                i++;
            }
        }
        str2 = str3;
        return String.format(Locale.US, "[%d] %s: %s", new Object[]{Long.valueOf(Thread.currentThread().getId()), str2, str});
    }
}