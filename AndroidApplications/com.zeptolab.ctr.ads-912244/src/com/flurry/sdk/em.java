package com.flurry.sdk;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class em implements eq {
    private static em a;
    private final List b;

    private em() {
        this.b = b();
    }

    public static synchronized em a() {
        em emVar;
        synchronized (em.class) {
            if (a == null) {
                a = new em();
            }
            emVar = a;
        }
        return emVar;
    }

    private static List b() {
        List arrayList = new ArrayList();
        arrayList.add(new en("com.flurry.android.impl.analytics.FlurryAnalyticsModule", 10));
        arrayList.add(new en("com.flurry.android.impl.ads.FlurryAdModule", 10));
        return Collections.unmodifiableList(arrayList);
    }

    public void a(dg dgVar) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((eq) it.next()).a(dgVar);
        }
    }

    public void a(dg dgVar, Context context) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((eq) it.next()).a(dgVar, context);
        }
    }

    public void b(dg dgVar, Context context) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((eq) it.next()).b(dgVar, context);
        }
    }

    public void c(dg dgVar, Context context) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((eq) it.next()).c(dgVar, context);
        }
    }
}