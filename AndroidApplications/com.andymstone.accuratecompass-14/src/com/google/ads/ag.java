package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.Locale;

public final class ag {
    private static final com.google.ads.internal.a a;

    class a implements Runnable {
        private final WeakReference a;
        private final Editor b;

        public a(Activity activity) {
            this(activity, null);
        }

        a(Activity activity, Editor editor) {
            this.a = new WeakReference(activity);
            this.b = editor;
        }

        private Editor a_(Activity activity) {
            return this.b == null ? PreferenceManager.getDefaultSharedPreferences(activity.getApplicationContext()).edit() : this.b;
        }

        public void run() {
            try {
                Activity activity = (Activity) this.a.get();
                if (activity == null) {
                    com.google.ads.util.b.a("Activity was null while making a doritos cookie request.");
                } else {
                    Object obj;
                    Cursor query = activity.getContentResolver().query(af.b, af.d, null, null, null);
                    if (query == null || !query.moveToFirst() || query.getColumnNames().length <= 0) {
                        com.google.ads.util.b.a("Google+ app not installed, not storing doritos cookie");
                        obj = null;
                    } else {
                        obj = query.getString(query.getColumnIndex(query.getColumnName(0)));
                    }
                    Editor a = a(activity);
                    if (TextUtils.isEmpty(obj)) {
                        a.putString("drt", "");
                        a.putLong("drt_ts", 0);
                    } else {
                        a.putString("drt", obj);
                        a.putLong("drt_ts", new Date().getTime());
                    }
                    a.commit();
                }
            } catch (Throwable th) {
                com.google.ads.util.b.b("An unknown error occurred while sending a doritos request.", th);
            }
        }
    }

    class b implements Runnable {
        private final WeakReference a;
        private final WebView b;
        private final String c;

        public b(Activity activity, WebView webView, String str) {
            this.a = new WeakReference(activity);
            this.c = str;
            this.b = webView;
        }

        public void run() {
            try {
                Uri withAppendedPath = Uri.withAppendedPath(af.a, this.c);
                Activity activity = (Activity) this.a.get();
                if (activity == null) {
                    com.google.ads.util.b.a("Activity was null while getting the +1 button state.");
                } else {
                    boolean z;
                    Cursor query = activity.getContentResolver().query(withAppendedPath, af.c, null, null, null);
                    if (query == null || !query.moveToFirst()) {
                        com.google.ads.util.b.a("Google+ app not installed, showing ad as not +1'd");
                        z = false;
                    } else if (query.getInt(query.getColumnIndex("has_plus1")) == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.b.post(new c(this.b, z));
                }
            } catch (Throwable th) {
                com.google.ads.util.b.b("An unknown error occurred while updating the +1 state.", th);
            }
        }
    }

    class c implements Runnable {
        private final boolean a;
        private final WebView b;

        public c(WebView webView, boolean z) {
            this.b = webView;
            this.a = z;
        }

        public void run() {
            ag.a(this.b, this.a);
        }
    }

    static {
        a = (com.google.ads.internal.a) com.google.ads.internal.a.a.b();
    }

    public static void a(Activity activity) {
        new Thread(new a(activity)).start();
    }

    public static void a(Activity activity, WebView webView, String str) {
        new Thread(new b(activity, webView, str)).start();
    }

    public static void a(WebView webView, String str) {
        a.a(webView, String.format(Locale.US, "(G_resizeIframe(%s))", new Object[]{str}));
    }

    public static void a(WebView webView, boolean z) {
        a.a(webView, String.format(Locale.US, "(G_updatePlusOne(%b))", new Object[]{Boolean.valueOf(z)}));
    }

    public static boolean a(Context context, long j) {
        return a(context, j, PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext()));
    }

    static boolean a(Context context, long j, SharedPreferences sharedPreferences) {
        return ah.a(context) && (!sharedPreferences.contains("drt") || !sharedPreferences.contains("drt_ts") || sharedPreferences.getLong("drt_ts", 0) < new Date().getTime() - j);
    }
}