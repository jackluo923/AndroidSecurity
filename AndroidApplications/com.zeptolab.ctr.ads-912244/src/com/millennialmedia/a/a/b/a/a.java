package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.k;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public final class a extends ak {
    public static final am a;
    private final Class b;
    private final ak c;

    static {
        a = new b();
    }

    public a(k kVar, ak akVar, Class cls) {
        this.c = new s(kVar, akVar, cls);
        this.b = cls;
    }

    public void a_(e eVar, Object obj) {
        if (obj == null) {
            eVar.f();
        } else {
            eVar.b();
            int i = 0;
            int length = Array.getLength(obj);
            while (i < length) {
                this.c.a(eVar, Array.get(obj, i));
                i++;
            }
            eVar.c();
        }
    }

    public Object b(com.millennialmedia.a.a.d.a aVar) {
        if (aVar.f() == d.i) {
            aVar.j();
            return null;
        } else {
            List arrayList = new ArrayList();
            aVar.a();
            while (aVar.e()) {
                arrayList.add(this.c.b(aVar));
            }
            aVar.b();
            Object newInstance = Array.newInstance(this.b, arrayList.size());
            int i = 0;
            while (i < arrayList.size()) {
                Array.set(newInstance, i, arrayList.get(i));
                i++;
            }
            return newInstance;
        }
    }
}