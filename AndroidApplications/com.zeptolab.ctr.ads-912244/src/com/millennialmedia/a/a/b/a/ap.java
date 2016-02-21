package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.k;

final class ap implements am {
    final /* synthetic */ Class a;
    final /* synthetic */ ak b;

    ap(Class cls, ak akVar) {
        this.a = cls;
        this.b = akVar;
    }

    public ak a(k kVar, a aVar) {
        return aVar.a() == this.a ? this.b : null;
    }

    public String toString() {
        return "Factory[type=" + this.a.getName() + ",adapter=" + this.b + "]";
    }
}