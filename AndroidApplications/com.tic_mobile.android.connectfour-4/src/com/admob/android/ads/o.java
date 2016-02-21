package com.admob.android.ads;

import android.content.Context;
import android.util.Log;
import com.tic_mobile.android.connectfour.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.Properties;

// compiled from: AdMobLocalizer.java
final class o implements h {
    private static o a;
    private static Context b;
    private static Thread c;
    private static String d;
    private Properties e;
    private Context f;

    static {
        a = null;
        b = null;
        c = null;
        d = null;
    }

    private o(Context context) {
        this.f = context;
        this.e = null;
        d = a();
        if (a != null) {
            a.e = null;
        }
        if (!b() && c == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("http://mm.admob.com/static/android/i18n/20100331");
            stringBuilder.append("/");
            stringBuilder.append(d);
            stringBuilder.append(".properties");
            Thread thread = new Thread(e.a(stringBuilder.toString(), null, AdManager.getUserId(this.f), this, 1));
            c = thread;
            thread.start();
        }
    }

    private static File a(Context context, String str) throws IOException {
        File file = new File(context.getCacheDir(), "admob_cache");
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(file, AdManager.SDK_VERSION_DATE);
        if (!file2.exists()) {
            file2.mkdir();
        }
        return new File(file2, str + ".properties");
    }

    public static String a() {
        if (d == null) {
            String language = Locale.getDefault().getLanguage();
            d = language;
            if (language == null) {
                d = "en";
            }
        }
        return d;
    }

    public static void a(Context context) {
        if (b == null) {
            b = context.getApplicationContext();
        }
        if (a == null) {
            a = new o(b);
        }
    }

    private boolean b() {
        if (this.e == null) {
            try {
                Properties properties = new Properties();
                File a = a(this.f, d);
                if (a.exists()) {
                    properties.load(new FileInputStream(a));
                    this.e = properties;
                }
            } catch (IOException e) {
                this.e = null;
            }
        }
        return this.e != null;
    }

    public final void a(r rVar) {
        String str;
        String str2 = AdManager.LOG;
        try {
            byte[] d = rVar.d();
            if (d != null) {
                FileOutputStream fileOutputStream = new FileOutputStream(a(this.f, d));
                fileOutputStream.write(d);
                fileOutputStream.close();
            }
        } catch (Exception e) {
            str = AdManager.LOG;
            if (Log.isLoggable(str2, R.styleable.com_admob_android_ads_AdView_keywords)) {
                str = AdManager.LOG;
                Log.d(str2, "Could not store localized strings to cache file.");
            }
        }
    }

    public final void a(r rVar, Exception exception) {
        String str = AdManager.LOG;
        String str2 = AdManager.LOG;
        if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
            str2 = AdManager.LOG;
            Log.d(str, "Could not get localized strings from the AdMob servers.");
        }
    }
}