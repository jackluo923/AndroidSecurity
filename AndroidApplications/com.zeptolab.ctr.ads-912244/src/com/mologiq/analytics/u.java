package com.mologiq.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.location.LocationStatusCodes;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@SuppressLint({"NewApi"})
class u extends AsyncTask {
    private final List a;
    private final Map b;
    private final String c;
    private final long d;
    @SuppressLint({"NewApi"})
    private final String e;
    private final WeakReference f;

    enum a {
        REQUEST,
        IMPRESSION,
        CLICK;

        static {
            a = new a("REQUEST", 0);
            b = new a("IMPRESSION", 1);
            c = new a("CLICK", 2);
            d = new a[]{a, b, c};
        }
    }

    u(Context context, List list, Map map, String str, long j, String str2) {
        this.f = new WeakReference(context);
        this.a = list;
        this.b = new HashMap();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            if (map.get(str3) instanceof String) {
                this.b.put(str3, (String) map.get(str3));
            }
        }
        this.c = str;
        this.d = j;
        this.e = str2;
    }

    private void a() {
        try {
            Context context = (Context) this.f.get();
            if (context != null) {
                int i;
                i = ac.b(context).equals("wifi") ? 1 : 0;
                ab c = ab.c();
                c.a(context);
                f fVar = new f();
                fVar.e(c.n());
                fVar.a(c.o());
                fVar.f(c.p());
                fVar.a(b.a);
                fVar.b(b.b);
                fVar.c(context.getPackageName() == null ? AdTrackerConstants.BLANK : context.getPackageName());
                fVar.getClass();
                a aVar = new a();
                aVar.a(Long.valueOf(System.currentTimeMillis()));
                aVar.a(this.c);
                aVar.b(Long.valueOf(this.d));
                aVar.b(context.getPackageName());
                if (this.b != null && this.b.size() > 0) {
                    List arrayList = new ArrayList();
                    Iterator it = this.b.keySet().iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        String str2 = (String) this.b.get(str);
                        aVar.getClass();
                        a aVar2 = new a();
                        aVar2.a(str);
                        aVar2.b(str2);
                        arrayList.add(aVar2);
                    }
                    aVar.a(arrayList);
                }
                fVar.d(this.e);
                fVar.a(i);
                Iterator it2 = this.a.iterator();
                while (it2.hasNext()) {
                    a aVar3 = (a) it2.next();
                    if (aVar3.equals(a.a)) {
                        fVar.b(aVar);
                    } else if (aVar3.equals(a.b)) {
                        fVar.a(aVar);
                    } else if (aVar3.equals(a.c)) {
                        fVar.c(aVar);
                    }
                }
                a(context, fVar.a());
            }
        } catch (Exception e) {
            ac.a(e.getStackTrace().toString());
        }
    }

    private void a(Context context, String str) {
        ac acVar = new ac(context);
        aa d = aa.d(context);
        String a = acVar.a(d.e(), str, context, 500, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, true);
        if (a != null && a.length() > 0) {
            d.b(a, context);
            d.b(context);
        }
    }

    protected Object doInBackground(Object... objArr) {
        try {
            Context context = (Context) this.f.get();
            if (!(context == null || aa.d(context).b())) {
                a();
            }
        } catch (Exception e) {
            ac.a(ac.a(e));
        }
        return null;
    }
}