package com.admob.android.ads;

import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.tic_mobile.android.connectfour.R;
import java.net.URL;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

// compiled from: AdMobConnector.java
public abstract class r implements Runnable {
    private static Executor m;
    private static String n;
    protected String a;
    protected int b;
    protected Exception c;
    protected Map<String, String> d;
    protected int e;
    protected int f;
    protected String g;
    protected h h;
    protected URL i;
    protected byte[] j;
    protected boolean k;
    protected String l;
    private String o;

    static {
        m = null;
    }

    protected r(String str, String str2, h hVar, int i, Map<String, String> map, String str3) {
        this.c = null;
        this.o = str;
        this.g = str2;
        this.h = hVar;
        this.b = i;
        this.d = map;
        this.k = true;
        this.e = 0;
        this.f = 3;
        if (str3 != null) {
            this.l = str3;
            this.a = "application/x-www-form-urlencoded";
        } else {
            this.l = null;
            this.a = null;
        }
    }

    public static String c() {
        String str = AdManager.LOG;
        String str2 = "; ";
        if (n == null) {
            StringBuffer stringBuffer = new StringBuffer();
            String str3 = VERSION.RELEASE;
            if (str3.length() > 0) {
                stringBuffer.append(str3);
            } else {
                stringBuffer.append("1.0");
            }
            str3 = "; ";
            stringBuffer.append(str2);
            Locale locale = Locale.getDefault();
            String language = locale.getLanguage();
            if (language != null) {
                stringBuffer.append(language.toLowerCase());
                str3 = locale.getCountry();
                if (str3 != null) {
                    stringBuffer.append("-");
                    stringBuffer.append(str3.toLowerCase());
                }
            } else {
                stringBuffer.append("en");
            }
            str3 = Build.MODEL;
            if (str3.length() > 0) {
                language = "; ";
                stringBuffer.append(str2);
                stringBuffer.append(str3);
            }
            str3 = Build.ID;
            if (str3.length() > 0) {
                stringBuffer.append(" Build/");
                stringBuffer.append(str3);
            }
            n = String.format("Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2 (AdMob-ANDROID-%s)", new Object[]{stringBuffer, AdManager.SDK_VERSION_DATE});
            String str4 = AdManager.LOG;
            if (Log.isLoggable(str, R.styleable.com_admob_android_ads_AdView_keywords)) {
                str4 = AdManager.LOG;
                Log.d(str, "Phone's user-agent is:  " + n);
            }
        }
        return n;
    }

    public final void a(int i) {
        this.f = i;
    }

    protected final void a(String str) {
        this.a = str;
    }

    public abstract boolean a();

    public abstract void b();

    public final byte[] d() {
        return this.j;
    }

    public final String e() {
        return this.o;
    }

    public final URL f() {
        return this.i;
    }

    public final void g() {
        if (m == null) {
            m = Executors.newCachedThreadPool();
        }
        m.execute(this);
    }
}