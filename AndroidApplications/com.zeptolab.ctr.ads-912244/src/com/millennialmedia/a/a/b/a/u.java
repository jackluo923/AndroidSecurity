package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;

final class u extends ak {
    u() {
    }

    public Class a(a aVar) {
        if (aVar.f() == d.i) {
            aVar.j();
            return null;
        } else {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }
    }

    public void a(e eVar, Class cls) {
        if (cls == null) {
            eVar.f();
        } else {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}