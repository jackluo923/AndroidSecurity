package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Handler;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class h extends e {
    private static final ql f;
    private static Set g;
    private static Set h;
    private final Map i;
    private final Handler j;
    private final me k;

    static {
        f = new ql();
        g = new HashSet();
        h = new HashSet();
        g.add(m.i);
        g.add(m.j);
        g.add(m.k);
        g.add(m.n);
        h.add(m.g);
        h.add(m.h);
        h.add(m.l);
        h.add(m.m);
    }

    public h(Context context, px pxVar, px pxVar2) {
        super(context, pxVar, pxVar2);
        this.i = new HashMap();
        this.j = new mv();
        this.k = new me(context);
        this.k.a();
    }

    protected final List a(List list) {
        List arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            m e = e(intValue);
            this.i.put(e, Integer.valueOf(intValue));
            if (e != null) {
                arrayList.add(e);
            }
        }
        if (bh.a()) {
            arrayList.remove(m.a);
        }
        List arrayList2 = new ArrayList(arrayList);
        ql qlVar;
        if (this.k.b()) {
            qlVar = f;
            arrayList2.retainAll(g);
        } else if (this.k.c()) {
            qlVar = f;
            arrayList2.retainAll(h);
        } else {
            arrayList2.clear();
        }
        arrayList.removeAll(arrayList2);
        arrayList.addAll(arrayList2);
        it = arrayList.iterator();
        while (it.hasNext()) {
            m mVar = (m) it.next();
            ql qlVar2 = f;
            new StringBuilder("sorted ").append(mVar).toString();
        }
        return arrayList;
    }

    protected abstract void a(m mVar, String str, ViewGroup viewGroup, mx mxVar, boolean z);

    protected final void a(String str, List list, ViewGroup viewGroup, int i, boolean z) {
        if (!this.b.g()) {
            this.d.execute(this.e);
        }
        if (list.size() == 0) {
            ql qlVar = f;
            synchronized (this.b) {
                if (i == this.b.i()) {
                    qlVar = f;
                    this.b.b(false);
                    this.b.c(true);
                    this.b.a(-1);
                }
            }
        } else {
            m mVar = (m) list.remove(0);
            a(mVar, str, viewGroup, (mx)new i(this, i, mVar, viewGroup, str, list, z), z);
        }
    }

    protected abstract m e(int i);
}