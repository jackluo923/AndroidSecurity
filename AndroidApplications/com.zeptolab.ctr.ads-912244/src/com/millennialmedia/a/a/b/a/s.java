package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.k;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class s extends ak {
    private final k a;
    private final ak b;
    private final Type c;

    s(k kVar, ak akVar, Type type) {
        this.a = kVar;
        this.b = akVar;
        this.c = type;
    }

    private Type a(Type type, Object obj) {
        if (obj == null) {
            return type;
        }
        return (type == Object.class || type instanceof TypeVariable || type instanceof Class) ? obj.getClass() : type;
    }

    public void a(e eVar, Object obj) {
        ak akVar = this.b;
        Type a = a(this.c, obj);
        if (a != this.c) {
            akVar = this.a.a(a.b(a));
            if (akVar instanceof m.a && !this.b instanceof m.a) {
                akVar = this.b;
            }
        }
        akVar.a(eVar, obj);
    }

    public Object b(com.millennialmedia.a.a.d.a aVar) {
        return this.b.b(aVar);
    }
}