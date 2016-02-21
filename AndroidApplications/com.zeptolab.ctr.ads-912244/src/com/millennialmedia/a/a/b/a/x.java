package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.af;
import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;

final class x extends ak {
    x() {
    }

    public Character a(a aVar) {
        if (aVar.f() == d.i) {
            aVar.j();
            return null;
        } else {
            String h = aVar.h();
            if (h.length() == 1) {
                return Character.valueOf(h.charAt(0));
            }
            throw new af("Expecting character, got: " + h);
        }
    }

    public void a(e eVar, Character ch) {
        eVar.b(ch == null ? null : String.valueOf(ch));
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}