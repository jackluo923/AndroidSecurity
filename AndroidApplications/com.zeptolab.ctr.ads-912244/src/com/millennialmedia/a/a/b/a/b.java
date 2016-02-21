package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.k;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class b implements am {
    b() {
    }

    public ak a(k kVar, a aVar) {
        Type b = aVar.b();
        if (!(b instanceof GenericArrayType) && (!(b instanceof Class) || !((Class) b).isArray())) {
            return null;
        }
        b = com.millennialmedia.a.a.b.b.g(b);
        return new a(kVar, kVar.a(a.b(b)), com.millennialmedia.a.a.b.b.e(b));
    }
}