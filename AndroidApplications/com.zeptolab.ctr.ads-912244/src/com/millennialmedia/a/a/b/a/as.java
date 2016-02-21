package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.k;

final class as implements am {
    final /* synthetic */ Class a;
    final /* synthetic */ Class b;
    final /* synthetic */ ak c;

    as(Class cls, Class cls2, ak akVar) {
        this.a = cls;
        this.b = cls2;
        this.c = akVar;
    }

    public ak a(k kVar, a aVar) {
        Class a = aVar.a();
        return (a == this.a || a == this.b) ? this.c : null;
    }

    public String toString() {
        return "Factory[type=" + this.a.getName() + "+" + this.b.getName() + ",adapter=" + this.c + "]";
    }
}