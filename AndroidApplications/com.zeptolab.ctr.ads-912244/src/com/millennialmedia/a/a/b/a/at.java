package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.k;

final class at implements am {
    final /* synthetic */ Class a;
    final /* synthetic */ ak b;

    at(Class cls, ak akVar) {
        this.a = cls;
        this.b = akVar;
    }

    public ak a(k kVar, a aVar) {
        return this.a.isAssignableFrom(aVar.a()) ? this.b : null;
    }

    public String toString() {
        return "Factory[typeHierarchy=" + this.a.getName() + ",adapter=" + this.b + "]";
    }
}