package com.millennialmedia.a.a.b;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.k;

class q extends ak {
    final /* synthetic */ boolean a;
    final /* synthetic */ boolean b;
    final /* synthetic */ k c;
    final /* synthetic */ a d;
    final /* synthetic */ p e;
    private ak f;

    q(p pVar, boolean z, boolean z2, k kVar, a aVar) {
        this.e = pVar;
        this.a = z;
        this.b = z2;
        this.c = kVar;
        this.d = aVar;
    }

    private ak b() {
        ak akVar = this.f;
        if (akVar != null) {
            return akVar;
        }
        akVar = this.c.a(this.e, this.d);
        this.f = akVar;
        return akVar;
    }

    public void a(e eVar, Object obj) {
        if (this.b) {
            eVar.f();
        } else {
            b().a(eVar, obj);
        }
    }

    public Object b(com.millennialmedia.a.a.d.a aVar) {
        if (!this.a) {
            return b().b(aVar);
        }
        aVar.n();
        return null;
    }
}