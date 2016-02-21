package com.admarvel.android.util.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.admarvel.android.ads.AdFetcher.Adtype;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.util.a.c.a;
import java.util.Map;

public class b {
    public static String a(String str, String str2) {
        String str3 = null;
        try {
            Object a = a.a(null, "readData").a(Class.forName("com.admarvel.android.offlinesdk.AdmarvelOfflineUtils")).a(String.class, str).a(String.class, str2).a();
            return (a == null || !(a instanceof String)) ? str3 : (String) a;
        } catch (Exception e) {
            return str3;
        }
    }

    public static synchronized void a() {
        synchronized (b.class) {
            try {
                a.a(null, "disableNetworkActivity").a(Class.forName("com.admarvel.android.offlinesdk.AdmarvelOfflineUtils")).a();
            } catch (Exception e) {
            }
        }
    }

    public static void a(Activity activity, String str) {
        try {
            a.a(null, "initializeOfflineSDK").a(Class.forName("com.admarvel.android.offlinesdk.AdmarvelOfflineUtils")).a(Activity.class, activity).a(String.class, str).a();
        } catch (Exception e) {
        }
    }

    public static synchronized void b_(Activity activity, String str) {
        synchronized (b.class) {
            try {
                a.a(null, "enableNetworkActivity").a(Class.forName("com.admarvel.android.offlinesdk.AdmarvelOfflineUtils")).a(Activity.class, activity).a(String.class, str).a();
            } catch (Exception e) {
            }
        }
    }

    public String a(Adtype adtype, Context context, String str, int i, String str2, Map map, String str3, String str4, int i2, String str5, boolean z, Handler handler, boolean z2) {
        try {
            a a = a.a(Class.forName("com.admarvel.android.offlinesdk.AdMarvelOfflineAdFetcher").newInstance(), "fetchAdFromLocal");
            a.a(Adtype.class, adtype);
            a.a(Context.class, context);
            a.a(String.class, str);
            a.a(Integer.TYPE, Integer.valueOf(i));
            a.a(String.class, str2);
            a.a(Map.class, map);
            a.a(String.class, str3);
            a.a(String.class, str4);
            a.a(Integer.TYPE, Integer.valueOf(i2));
            a.a(String.class, str5);
            a.a(Boolean.TYPE, Boolean.valueOf(z));
            a.a(Handler.class, handler);
            a.a(Boolean.TYPE, Boolean.valueOf(z2));
            Object a2 = a.a();
            return (a2 == null || !(a2 instanceof String)) ? null : (String) a2;
        } catch (Exception e) {
            return null;
        }
    }

    public void a(AdMarvelAd adMarvelAd, Context context, Handler handler) {
        try {
            a a = a.a(Class.forName("com.admarvel.android.offlinesdk.AdmarvelOfflineUtils").newInstance(), "firePixel");
            a.a(AdMarvelAd.class, adMarvelAd);
            a.a(Context.class, context);
            a.a(Handler.class, handler);
            a.a();
        } catch (Exception e) {
        }
    }

    public void a(String str, Context context, Handler handler) {
        try {
            a a = a.a(Class.forName("com.admarvel.android.offlinesdk.AdmarvelOfflineUtils").newInstance(), "firePixel");
            a.a(String.class, str);
            a.a(Context.class, context);
            a.a(Handler.class, handler);
            a.a();
        } catch (Exception e) {
        }
    }
}