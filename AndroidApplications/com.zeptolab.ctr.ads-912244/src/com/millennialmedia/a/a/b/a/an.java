package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.k;

final class an implements am {
    an() {
    }

    public ak a(k kVar, a aVar) {
        Class a = aVar.a();
        if (!Enum.class.isAssignableFrom(a) || a == Enum.class) {
            return null;
        }
        if (!a.isEnum()) {
            a = a.getSuperclass();
        }
        return new a(a);
    }
}