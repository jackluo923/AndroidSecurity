package com.millennialmedia.a.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;

class o extends ak {
    final /* synthetic */ k a;

    o(k kVar) {
        this.a = kVar;
    }

    public Float a(a aVar) {
        if (aVar.f() != d.i) {
            return Float.valueOf((float) aVar.k());
        }
        aVar.j();
        return null;
    }

    public void a(e eVar, Number number) {
        if (number == null) {
            eVar.f();
        } else {
            k.a(this.a, (double) number.floatValue());
            eVar.a(number);
        }
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}