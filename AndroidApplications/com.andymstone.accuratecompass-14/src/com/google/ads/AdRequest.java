package com.google.ads;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.google.ads.doubleclick.DfpExtras;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.mediation.admob.AdMobAdapterExtras;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AdRequest {
    public static final String a;
    private static final SimpleDateFormat b;
    private static Method c;
    private static Method d;
    private Gender e;
    private Date f;
    private Set g;
    private Map h;
    private final Map i;
    private Location j;
    private boolean k;
    private boolean l;
    private Set m;

    public enum ErrorCode {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        private final String e;

        static {
            String str = "Invalid Ad request.";
            a = new com.google.ads.AdRequest.ErrorCode("INVALID_REQUEST", 0, "Invalid Ad request.");
            str = "Ad request successful, but no ad returned due to lack of ad inventory.";
            b = new com.google.ads.AdRequest.ErrorCode("NO_FILL", 1, "Ad request successful, but no ad returned due to lack of ad inventory.");
            str = "A network error occurred.";
            c = new com.google.ads.AdRequest.ErrorCode("NETWORK_ERROR", 2, "A network error occurred.");
            str = "There was an internal error.";
            d = new com.google.ads.AdRequest.ErrorCode("INTERNAL_ERROR", 3, "There was an internal error.");
            f = new com.google.ads.AdRequest.ErrorCode[]{a, b, c, d};
        }

        private ErrorCode(String str) {
            this.e = str;
        }

        public String toString() {
            return this.e;
        }
    }

    public enum Gender {
        UNKNOWN,
        MALE,
        FEMALE;

        static {
            a = new com.google.ads.AdRequest.Gender("UNKNOWN", 0);
            b = new com.google.ads.AdRequest.Gender("MALE", 1);
            c = new com.google.ads.AdRequest.Gender("FEMALE", 2);
            d = new com.google.ads.AdRequest.Gender[]{a, b, c};
        }
    }

    static {
        b = new SimpleDateFormat("yyyyMMdd");
        c = null;
        d = null;
        try {
            Method[] methods = Class.forName("com.google.analytics.tracking.android.AdMobInfo").getMethods();
            int length = methods.length;
            int i = 0;
            while (i < length) {
                Method method = methods[i];
                if (method.getName().equals("getInstance") && method.getParameterTypes().length == 0) {
                    c = method;
                } else if (method.getName().equals("getJoinIds") && method.getParameterTypes().length == 0) {
                    d = method;
                }
                i++;
            }
            if (c == null || d == null) {
                c = null;
                d = null;
                b.e("No Google Analytics: Library Incompatible.");
            }
        } catch (ClassNotFoundException e) {
            b.a("No Google Analytics: Library Not Found.");
        } catch (Throwable th) {
            b.a("No Google Analytics: Error Loading Library");
        }
        a = AdUtil.b("emulator");
    }

    public AdRequest() {
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = new HashMap();
        this.j = null;
        this.k = false;
        this.l = false;
        this.m = null;
    }

    public Gender a() {
        return this.e;
    }

    public AdRequest a(Location location) {
        this.j = location;
        return this;
    }

    public AdRequest a(Gender gender) {
        this.e = gender;
        return this;
    }

    public AdRequest a(NetworkExtras networkExtras) {
        if (networkExtras != null) {
            this.i.put(networkExtras.getClass(), networkExtras);
        }
        return this;
    }

    public AdRequest a(String str) {
        if (this.m == null) {
            this.m = new HashSet();
        }
        this.m.add(str);
        return this;
    }

    public AdRequest a(Date date) {
        if (date == null) {
            this.f = null;
        } else {
            this.f = new Date(date.getTime());
        }
        return this;
    }

    public AdRequest a(Set set) {
        this.g = set;
        return this;
    }

    public Object a(Class cls) {
        return this.i.get(cls);
    }

    public Map a(Context context) {
        int i = 1;
        Map hashMap = new HashMap();
        if (this.g != null) {
            hashMap.put("kw", this.g);
        }
        if (this.e != null) {
            hashMap.put("cust_gender", Integer.valueOf(this.e.ordinal()));
        }
        if (this.f != null) {
            hashMap.put("cust_age", b.format(this.f));
        }
        if (this.j != null) {
            hashMap.put("uule", AdUtil.a(this.j));
        }
        if (this.k) {
            hashMap.put("testing", Integer.valueOf(1));
        }
        if (b(context)) {
            hashMap.put("adtest", "on");
        } else if (!this.l) {
            b.c("To get test ads on this device, call adRequest.addTestDevice(" + (AdUtil.c() ? "AdRequest.TEST_EMULATOR" : "\"" + AdUtil.a(context) + "\"") + ");");
            this.l = true;
        }
        AdMobAdapterExtras adMobAdapterExtras = (AdMobAdapterExtras) a(AdMobAdapterExtras.class);
        if (adMobAdapterExtras == null || !adMobAdapterExtras.d()) {
            String str = "cipa";
            if (!ah.a(context)) {
                i = 0;
            }
            hashMap.put(str, Integer.valueOf(i));
        } else {
            hashMap.put("pto", Integer.valueOf(1));
        }
        DfpExtras dfpExtras = (DfpExtras) a(DfpExtras.class);
        if (dfpExtras != null && dfpExtras.f() != null && !dfpExtras.f().isEmpty()) {
            hashMap.put("extras", dfpExtras.f());
        } else if (!(adMobAdapterExtras == null || adMobAdapterExtras.f() == null || adMobAdapterExtras.f().isEmpty())) {
            hashMap.put("extras", adMobAdapterExtras.f());
        }
        if (dfpExtras != null) {
            CharSequence a = dfpExtras.a();
            if (!TextUtils.isEmpty(a)) {
                hashMap.put("ppid", a);
            }
        }
        if (this.h != null) {
            hashMap.put("mediation_extras", this.h);
        }
        try {
            if (c != null) {
                Map map = (Map) d.invoke(c.invoke(null, new Object[0]), new Object[0]);
                if (map != null && map.size() > 0) {
                    hashMap.put("analytics_join_id", map);
                }
            }
        } catch (Throwable th) {
            b.c("Internal Analytics Error:", th);
        }
        return hashMap;
    }

    public Date b() {
        return this.f;
    }

    public boolean b(Context context) {
        if (this.m == null) {
            return false;
        }
        String a = AdUtil.a(context);
        return a != null && this.m.contains(a);
    }

    public Set c() {
        return this.g == null ? null : Collections.unmodifiableSet(this.g);
    }

    public Location d() {
        return this.j;
    }
}