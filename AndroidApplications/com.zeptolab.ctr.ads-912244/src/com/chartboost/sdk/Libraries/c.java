package com.chartboost.sdk.Libraries;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiManager;
import android.provider.Settings.Secure;
import com.brightcove.player.event.Event;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.impl.ao;
import com.chartboost.sdk.impl.aq;
import com.chartboost.sdk.impl.ar;
import com.chartboost.sdk.impl.i;
import com.chartboost.sdk.impl.k;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import java.util.UUID;

public final class c {
    private static String a;
    private static String b;
    private static a c;
    private static String d;

    public enum a {
        PRELOAD(-1),
        LOADING(-1),
        UNKNOWN(-1),
        TRACKING_ENABLED(0),
        TRACKING_DISABLED(1);
        private int f;

        static {
            a = new com.chartboost.sdk.Libraries.c.a("PRELOAD", 0, -1);
            b = new com.chartboost.sdk.Libraries.c.a("LOADING", 1, -1);
            c = new com.chartboost.sdk.Libraries.c.a("UNKNOWN", 2, -1);
            d = new com.chartboost.sdk.Libraries.c.a("TRACKING_ENABLED", 3, 0);
            e = new com.chartboost.sdk.Libraries.c.a("TRACKING_DISABLED", 4, 1);
            g = new com.chartboost.sdk.Libraries.c.a[]{a, b, c, d, e};
        }

        private a(int i) {
            this.f = i;
        }

        public int a_() {
            return this.f;
        }

        public boolean b() {
            return this.f != -1;
        }
    }

    static {
        a = null;
        b = null;
        c = a.a;
        d = null;
    }

    private c() {
    }

    public static void a() {
        synchronized (d.class) {
            if (c() != a.a) {
            } else {
                a(a.b);
                Class cls = null;
                try {
                    cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                } catch (ClassNotFoundException e) {
                }
                if (cls == null) {
                    f();
                } else {
                    k.a().execute(new Runnable() {
                        public void run() {
                            try {
                                c.b(d.a());
                                i.a();
                            } catch (VerifyError e) {
                                c.f();
                            }
                        }
                    });
                }
            }
        }
    }

    protected static synchronized void a(a aVar) {
        synchronized (c.class) {
            c = aVar;
        }
    }

    public static String b() {
        if (a == null) {
            a = b.b(g());
        }
        return a;
    }

    private static synchronized void b(String str) {
        synchronized (c.class) {
            b = str;
        }
    }

    public static synchronized a c_() {
        a aVar;
        synchronized (c.class) {
            aVar = c;
        }
        return aVar;
    }

    public static synchronized String d() {
        String str;
        synchronized (c.class) {
            str = b;
        }
        return str;
    }

    private static void f() {
        CBLogging.b("CBIdentity", "WARNING: It looks like you've forgotten to include the Google Play Services library in your project. Please review the SDK documentation for more details.");
        a(a.c);
        i.a();
    }

    private static byte[] g() {
        Object h = h();
        if (h == null || "9774d56d682e549c".equals(h)) {
            h = i();
        }
        String j = j();
        String d = d();
        ao arVar = new ar();
        arVar.a(Event.UUID, h);
        arVar.a("macid", j);
        arVar.a("ifa", d);
        return new aq().a(arVar);
    }

    private static String h() {
        return Secure.getString(Chartboost.sharedChartboost().getContext().getContentResolver(), "android_id");
    }

    private static String i() {
        if (d == null) {
            SharedPreferences a = CBUtility.a();
            d = a.getString("cbUUID", null);
            if (d == null) {
                d = UUID.randomUUID().toString();
                Editor edit = a.edit();
                edit.putString("cbUUID", d);
                edit.commit();
            }
        }
        return d;
    }

    private static String j() {
        return b.b(b.a(k()));
    }

    private static byte[] k() {
        byte[] bArr = null;
        try {
            String macAddress = ((WifiManager) Chartboost.sharedChartboost().getContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (macAddress == null || macAddress.equals(AdTrackerConstants.BLANK)) {
                return bArr;
            }
            String[] split = macAddress.split(":");
            byte[] bArr2 = new byte[6];
            int i = 0;
            while (i < split.length) {
                bArr2[i] = Integer.valueOf(Integer.parseInt(split[i], MMException.REQUEST_NOT_PERMITTED)).byteValue();
                i++;
            }
            return bArr2;
        } catch (Exception e) {
            return bArr;
        }
    }
}