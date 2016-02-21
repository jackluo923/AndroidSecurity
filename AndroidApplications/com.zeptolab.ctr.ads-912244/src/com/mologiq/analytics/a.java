package com.mologiq.analytics;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.location.LocationStatusCodes;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class a {
    private static a b;
    private final WeakReference a;

    private a(Context context) {
        this.a = new WeakReference(context);
    }

    public static a a_(Context context) {
        if (b == null) {
            b = new a(context);
        }
        return b;
    }

    private Map a_(List list, List list2) {
        Map map = null;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Set hashSet;
            i iVar = (i) it.next();
            boolean z = 1;
            if (iVar.d().size() > 0) {
                hashSet = new HashSet(list2);
                hashSet.retainAll(iVar.d());
                if (hashSet.isEmpty()) {
                    z = false;
                }
            }
            if (iVar.c().size() > 0) {
                hashSet = new HashSet(list2);
                hashSet.retainAll(iVar.c());
                if (!hashSet.isEmpty()) {
                    z = false;
                }
            }
            if (i != 0) {
                if (map == null) {
                    map = new HashMap();
                }
                Iterator it2 = iVar.e().iterator();
                while (it2.hasNext()) {
                    y yVar = (y) it2.next();
                    map.put(yVar.a(), yVar.b());
                }
            }
        }
        return map;
    }

    public Map a_(String str, Map map) {
        try {
            Context context = (Context) this.a.get();
            if (context == null) {
                return null;
            }
            aa d = aa.d(context);
            if (d.b()) {
                return null;
            }
            Map hashMap;
            Map a;
            hashMap = map == null ? new HashMap() : map;
            ab c = ab.c();
            c.a(context);
            if (d.u() != null && d.u().size() > 0) {
                a = a(d.u(), c.A());
                if (a != null) {
                    hashMap.putAll(a);
                }
            }
            x b = x.b();
            b.a(context);
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - b.d() > d.l()) {
                ac acVar = new ac(context);
                z zVar = new z();
                zVar.e(c.n());
                zVar.a(c.o());
                zVar.f(c.p());
                zVar.b(b.a);
                zVar.c(b.b);
                zVar.a(context.getPackageName() == null ? AdTrackerConstants.BLANK : context.getPackageName());
                zVar.d(str);
                if (hashMap != null && hashMap.size() > 0) {
                    List arrayList = new ArrayList();
                    Iterator it = hashMap.keySet().iterator();
                    while (it.hasNext()) {
                        String str2 = (String) it.next();
                        if (hashMap.get(str2) instanceof String) {
                            y yVar = new y();
                            yVar.a(str2);
                            yVar.b((String) hashMap.get(str2));
                            arrayList.add(yVar);
                        }
                    }
                    if (arrayList.size() > 0) {
                        zVar.a(arrayList);
                    }
                }
                String a2 = acVar.a(d.g(), zVar.a(), context, 500, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, true);
                if (a2 != null && a2.length() > 0) {
                    b.b(a2, context);
                }
                b.a(currentTimeMillis);
                b.b(context);
            }
            a = b.c();
            if (!(hashMap == null || a == null)) {
                hashMap.putAll(a);
            }
            return hashMap;
        } catch (Exception e) {
            ac.a(ac.a(e));
            return null;
        }
    }

    public void a_() {
    }

    public void a_(String str, int i, Map map, String str2) {
        try {
            Context context = (Context) this.a.get();
            if (context != null) {
                List arrayList = new ArrayList();
                arrayList.add(a.a);
                if (b.a() >= 11) {
                    new Handler(context.getMainLooper()).post(new w(context, arrayList, map, str, i, str2));
                } else {
                    new Handler(context.getMainLooper()).post(new v(context, arrayList, map, str, i, str2));
                }
            }
        } catch (Exception e) {
            ac.a(ac.a(e));
        }
    }

    public void a_(String str, int i, Map map, String str2, String str3) {
        try {
            Context context = (Context) this.a.get();
            if (context != null) {
                List arrayList = new ArrayList();
                arrayList.add(a.c);
                if (b.a() >= 11) {
                    new Handler(context.getMainLooper()).post(new w(context, arrayList, map, str, i, str3));
                } else {
                    new Handler(context.getMainLooper()).post(new v(context, arrayList, map, str, i, str3));
                }
            }
        } catch (Exception e) {
            ac.a(ac.a(e));
        }
    }

    public void b() {
    }

    public void b(String str, int i, Map map, String str2) {
        try {
            Context context = (Context) this.a.get();
            if (context != null) {
                List arrayList = new ArrayList();
                arrayList.add(a.a);
                arrayList.add(a.b);
                if (b.a() >= 11) {
                    new Handler(context.getMainLooper()).post(new w(context, arrayList, map, str, i, str2));
                } else {
                    new Handler(context.getMainLooper()).post(new v(context, arrayList, map, str, i, str2));
                }
            }
        } catch (Exception e) {
            ac.a(ac.a(e));
        }
    }

    public void c() {
        try {
            Context context = (Context) this.a.get();
            if (context != null) {
                if (b.a() >= 11) {
                    new Handler(context.getMainLooper()).post(new r(context));
                } else {
                    new Handler(context.getMainLooper()).post(new q(context));
                }
            }
        } catch (Exception e) {
            ac.a(ac.a(e));
        }
    }

    public void d() {
        try {
            Context context = (Context) this.a.get();
            g.c();
            if (context != null) {
            }
        } catch (Exception e) {
            ac.a(ac.a(e));
        }
    }
}