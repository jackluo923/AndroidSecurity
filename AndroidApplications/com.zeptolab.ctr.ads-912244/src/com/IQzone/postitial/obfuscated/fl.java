package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b;
import java.util.Iterator;

public final class fl extends pp {
    private /* synthetic */ b a;

    public fl(b bVar) {
        this.a = bVar;
    }

    public final /* synthetic */ Object a(Object obj) {
        jl jlVar = (jl) obj;
        Iterator it = this.a.h.c().iterator();
        while (it.hasNext()) {
            jl jlVar2 = (jl) it.next();
            if (jlVar2.equals(jlVar)) {
                return jlVar2;
            }
        }
        return jlVar;
    }
}