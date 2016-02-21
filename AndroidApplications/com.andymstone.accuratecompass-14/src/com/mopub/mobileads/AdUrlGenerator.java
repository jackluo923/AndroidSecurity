package com.mopub.mobileads;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.andymstone.compasslib.v;
import com.andymstone.core.o;
import com.mopub.mobileads.util.DateAndTime;
import java.text.SimpleDateFormat;

public class AdUrlGenerator extends BaseUrlGenerator {
    private Context a;
    private TelephonyManager b;
    private ConnectivityManager c;
    private String d;
    private String e;
    private Location f;

    public enum MoPubNetworkType {
        UNKNOWN,
        ETHERNET,
        WIFI,
        MOBILE;

        static {
            a = new com.mopub.mobileads.AdUrlGenerator.MoPubNetworkType("UNKNOWN", 0);
            b = new com.mopub.mobileads.AdUrlGenerator.MoPubNetworkType("ETHERNET", 1);
            c = new com.mopub.mobileads.AdUrlGenerator.MoPubNetworkType("WIFI", 2);
            d = new com.mopub.mobileads.AdUrlGenerator.MoPubNetworkType("MOBILE", 3);
            e = new com.mopub.mobileads.AdUrlGenerator.MoPubNetworkType[]{a, b, c, d};
        }

        public String toString() {
            return Integer.toString(ordinal());
        }
    }

    public AdUrlGenerator(Context context) {
        this.a = context;
        this.b = (TelephonyManager) this.a.getSystemService("phone");
        this.c = (ConnectivityManager) this.a.getSystemService("connectivity");
    }

    private void a(float f) {
        b("sc_a", f);
    }

    private void a(int i) {
        String str = "u";
        if (i == 1) {
            str = "p";
        } else if (i == 2) {
            str = "l";
        } else if (i == 3) {
            str = "s";
        }
        b("o", str);
    }

    private void a(String str, MoPubNetworkType moPubNetworkType) {
        b(str, moPubNetworkType.toString());
    }

    private void a(boolean z) {
        if (z) {
            b("mr", "1");
        }
    }

    private void b(int i) {
        switch (i) {
            case v.DropShadowView_cornerRadius:
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
            case o.MyAlertDialog_MAD_titleStyle:
            case o.MyAlertDialog_MAD_buttonBarStyle:
            case o.MyAlertDialog_MAD_textAppearanceMedium:
                a("ct", MoPubNetworkType.d);
            case o.MyAlertDialog_myAlertDialogAccentColor:
                a("ct", MoPubNetworkType.c);
            case 9:
                a("ct", MoPubNetworkType.b);
            default:
                a("ct", MoPubNetworkType.a);
        }
    }

    private void b(Location location) {
        if (location != null) {
            b("ll", new StringBuilder(String.valueOf(location.getLatitude())).append(",").append(location.getLongitude()).toString());
            b("lla", ((int) location.getAccuracy()));
        }
    }

    private boolean b() {
        try {
            Class.forName("com.mopub.mobileads.MraidView");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private String c() {
        String networkOperator = this.b.getNetworkOperator();
        return (this.b.getPhoneType() == 2 && this.b.getSimState() == 5) ? this.b.getSimOperator() : networkOperator;
    }

    private static String c(Context context) {
        try {
            Class forName = Class.forName("com.mopub.mobileads.FacebookKeywordProvider");
            return (String) forName.getMethod("getKeyword", new Class[]{Context.class}).invoke(forName, new Object[]{context});
        } catch (Exception e) {
            return null;
        }
    }

    private static String c(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return str;
        }
        return (str == null || str.length() == 0) ? str2 : new StringBuilder(String.valueOf(str)).append(",").append(str2).toString();
    }

    private static String d() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("Z");
        simpleDateFormat.setTimeZone(DateAndTime.a());
        return simpleDateFormat.format(DateAndTime.b());
    }

    private int e() {
        if (this.a.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            return o.MyAlertDialog_MAD_messagePadding;
        }
        NetworkInfo activeNetworkInfo = this.c.getActiveNetworkInfo();
        return activeNetworkInfo != null ? activeNetworkInfo.getType() : o.MyAlertDialog_MAD_messagePadding;
    }

    private void g(String str) {
        b("id", str);
    }

    private void h(String str) {
        b("nv", str);
    }

    private void i(String str) {
        b("q", str);
    }

    private void j(String str) {
        b("z", str);
    }

    private void k(String str) {
        b("mcc", str == null ? "" : str.substring(0, o(str)));
    }

    private void l(String str) {
        b("mnc", str == null ? "" : str.substring(o(str)));
    }

    private void m(String str) {
        b("iso", str);
    }

    private void n(String str) {
        b("cn", str);
    }

    private int o(String str) {
        return Math.min(o.MyAlertDialog_MAD_titleStyle, str.length());
    }

    public AdUrlGenerator a(Location location) {
        this.f = location;
        return this;
    }

    public AdUrlGenerator a(String str) {
        this.d = str;
        return this;
    }

    public AdUrlGenerator b(String str) {
        this.e = str;
        return this;
    }

    public String c(String str) {
        a(str, "/m/ad");
        d("6");
        g(this.d);
        h("1.14.1.0");
        f(b(this.a));
        i(c(this.e, c(this.a)));
        b(this.f);
        j(d());
        a(this.a.getResources().getConfiguration().orientation);
        a(this.a.getResources().getDisplayMetrics().density);
        a(b());
        String c = c();
        k(c);
        l(c);
        m(this.b.getNetworkCountryIso());
        n(this.b.getNetworkOperatorName());
        b(e());
        e(a(this.a));
        return a();
    }
}