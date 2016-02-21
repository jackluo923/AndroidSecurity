package com.google.ads;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.google.ads.a.b;
import com.google.ads.c.a.a;
import com.google.ads.c.h;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class d {
    public static final String a;
    private static final SimpleDateFormat b;
    private static Method c;
    private static Method d;
    private f e;
    private Date f;
    private Set g;
    private Map h;
    private final Map i;
    private Location j;
    private boolean k;
    private boolean l;
    private Set m;

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
                g.e("No Google Analytics: Library Incompatible.");
            }
        } catch (ClassNotFoundException e) {
            g.a("No Google Analytics: Library Not Found.");
        } catch (Throwable th) {
            g.a("No Google Analytics: Error Loading Library");
        }
        a = AdUtil.a("emulator");
    }

    public d() {
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

    public final d a(h hVar) {
        if (hVar != null) {
            this.i.put(hVar.getClass(), hVar);
        }
        return this;
    }

    public final d a(Set set) {
        this.g = set;
        return this;
    }

    public final Object a(Class cls) {
        return this.i.get(cls);
    }

    public Map a(Context context) {
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
            g.c(new StringBuilder("To get test ads on this device, call adRequest.addTestDevice(").append(AdUtil.c() ? "AdRequest.TEST_EMULATOR" : new StringBuilder("\"").append(AdUtil.a(context)).append("\"").toString()).append(");").toString());
            this.l = true;
        }
        a aVar = (a) a(a.class);
        b bVar = (b) a(b.class);
        if (bVar != null && bVar.c() != null && !bVar.c().isEmpty()) {
            hashMap.put("extras", bVar.c());
        } else if (!(aVar == null || aVar.c() == null || aVar.c().isEmpty())) {
            hashMap.put("extras", aVar.c());
        }
        if (bVar != null) {
            CharSequence a = bVar.a();
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
            g.c("Internal Analytics Error:", th);
        }
        return hashMap;
    }

    public final d b(Set set) {
        this.m = set;
        return this;
    }

    public final boolean b(Context context) {
        if (this.m == null) {
            return false;
        }
        String a = AdUtil.a(context);
        return a != null && this.m.contains(a);
    }
}