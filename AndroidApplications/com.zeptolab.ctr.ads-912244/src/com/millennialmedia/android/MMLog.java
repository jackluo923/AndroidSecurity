package com.millennialmedia.android;

import android.util.Log;

public class MMLog {

    static interface LogHandler {
        void handleLog(String str);
    }

    static class LoggingComponent {
        private static int a = 0;
        private static final String b = "MMSDK-";
        private LogHandler c;

        static {
            a = 4;
        }

        LoggingComponent() {
        }

        private void a(String str) {
            if (this.c != null) {
                this.c.handleLog(str);
            }
        }

        private void f(String str, String str2) {
            Log.v(b + str, str2);
            a(str2);
        }

        private void g(String str, String str2) {
            Log.d(b + str, str2);
            a(str2);
        }

        private void h(String str, String str2) {
            Log.i(b + str, str2);
            a(str2);
        }

        private void i(String str, String str2) {
            Log.w(b + str, str2);
            a(str2);
        }

        private void j(String str, String str2) {
            Log.e(b + str, str2);
            a(str2);
        }

        void a(LogHandler logHandler) {
            this.c = logHandler;
        }

        void a(String str, String str2) {
            if (a <= 2) {
                f(str, str2);
            }
        }

        void a(String str, String str2, Throwable th) {
            if (a <= 2) {
                f(str, str2 + ": " + Log.getStackTraceString(th));
            }
        }

        void b(String str, String str2) {
            if (a <= 3) {
                g(str, str2);
            }
        }

        void b(String str, String str2, Throwable th) {
            if (a <= 3) {
                g(str, str2 + ": " + Log.getStackTraceString(th));
            }
        }

        void c(String str, String str2) {
            if (a <= 4) {
                h(str, str2);
            }
        }

        void c(String str, String str2, Throwable th) {
            if (a <= 4) {
                h(str, str2 + ": " + Log.getStackTraceString(th));
            }
        }

        void d(String str, String str2) {
            if (a <= 5) {
                i(str, str2);
            }
        }

        void d(String str, String str2, Throwable th) {
            if (a <= 5) {
                i(str, str2 + ": " + Log.getStackTraceString(th));
            }
        }

        void e(String str, String str2) {
            if (a <= 6) {
                j(str, str2);
            }
        }

        void e(String str, String str2, Throwable th) {
            if (a <= 6) {
                j(str, str2 + ": " + Log.getStackTraceString(th));
            }
        }

        public int getLogLevel() {
            return a;
        }

        public void setLogLevel(int i) {
            a = i;
        }
    }

    static {
        ComponentRegistry.a(new LoggingComponent());
    }

    static void a(LogHandler logHandler) {
        ComponentRegistry.k().a(logHandler);
    }

    static void a(String str, String str2) {
        ComponentRegistry.k().a(str, str2);
    }

    static void a(String str, String str2, Throwable th) {
        ComponentRegistry.k().a(str, str2, th);
    }

    static void b(String str, String str2) {
        ComponentRegistry.k().b(str, str2);
    }

    static void b(String str, String str2, Throwable th) {
        ComponentRegistry.k().b(str, str2, th);
    }

    static void c(String str, String str2) {
        ComponentRegistry.k().c(str, str2);
    }

    static void c(String str, String str2, Throwable th) {
        ComponentRegistry.k().c(str, str2, th);
    }

    static void d(String str, String str2) {
        ComponentRegistry.k().d(str, str2);
    }

    static void d(String str, String str2, Throwable th) {
        ComponentRegistry.k().d(str, str2, th);
    }

    static void e(String str, String str2) {
        ComponentRegistry.k().e(str, str2);
    }

    static void e(String str, String str2, Throwable th) {
        ComponentRegistry.k().e(str, str2, th);
    }

    public static int getLogLevel() {
        return ComponentRegistry.k().getLogLevel();
    }

    public static void setLogLevel(int i) {
        ComponentRegistry.k().setLogLevel(i);
    }
}