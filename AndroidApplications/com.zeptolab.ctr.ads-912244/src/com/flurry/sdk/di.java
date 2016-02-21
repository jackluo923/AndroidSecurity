package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;

public class di {
    private static final String a;
    private static di b;
    private final Map c;
    private final Map d;
    private final Object e;
    private dg f;

    static {
        a = di.class.getSimpleName();
    }

    private di() {
        this.c = new HashMap();
        this.d = new WeakHashMap();
        this.e = new Object();
    }

    public static synchronized di a() {
        di diVar;
        synchronized (di.class) {
            if (b == null) {
                b = new di();
            }
            diVar = b;
        }
        return diVar;
    }

    public synchronized void a(Context context) {
        dg dgVar = (dg) this.d.remove(context);
        if (dgVar == null) {
            el.d(a, "Session cannot be ended, session not found for context: " + context);
        } else {
            dgVar.c(context);
        }
    }

    public synchronized void a(Context context, String str) {
        dl.a(context);
        es.a().b();
        dw.a().b();
        dg dgVar = (dg) this.d.get(context);
        if (dgVar != null) {
            el.d(a, "Session already started with context: " + context + " count:" + dgVar.g());
        } else {
            if (this.c.containsKey(str)) {
                dgVar = (dg) this.c.get(str);
            } else {
                dgVar = new dg(str);
                this.c.put(str, dgVar);
                dgVar.a(context);
            }
            this.d.put(context, dgVar);
            a(dgVar);
            dgVar.b(context);
        }
    }

    public void a(dg dgVar) {
        synchronized (this.e) {
            this.f = dgVar;
        }
    }

    public synchronized void a(String str) {
        if (this.c.containsKey(str)) {
            dg c = c();
            if (c != null && TextUtils.equals(c.j(), str)) {
                a(null);
            }
            this.c.remove(str);
        } else {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Ended session is not in the session map! Maybe it was already destroyed.");
        }
    }

    public synchronized int b() {
        return this.d.size();
    }

    public dg c() {
        dg dgVar;
        synchronized (this.e) {
            dgVar = this.f;
        }
        return dgVar;
    }

    public synchronized void d() {
        Iterator it = this.d.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            ((dg) entry.getValue()).c((Context) entry.getKey());
        }
        this.d.clear();
        Iterator it2 = new ArrayList(this.c.values()).iterator();
        while (it2.hasNext()) {
            ((dg) it2.next()).c();
        }
        this.c.clear();
        a(null);
    }
}