package com.millennialmedia.a.a.b;

import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.r;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

public final class c {
    private final Map a;

    public c(Map map) {
        this.a = map;
    }

    private x a(Class cls) {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new i(this, declaredConstructor);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    private x a(Type type, Class cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new j(this);
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new k(this, type);
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new l(this);
            }
            return Queue.class.isAssignableFrom(cls) ? new m(this) : new n(this);
        } else if (!Map.class.isAssignableFrom(cls)) {
            return null;
        } else {
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new o(this);
            }
            return (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(a.b(((ParameterizedType) type).getActualTypeArguments()[0]).a())) ? new f(this) : new e(this);
        }
    }

    private x b(Type type, Class cls) {
        return new g(this, cls, type);
    }

    public x a(a aVar) {
        Type b = aVar.b();
        Class a = aVar.a();
        r rVar = (r) this.a.get(b);
        if (rVar != null) {
            return new d(this, rVar, b);
        }
        rVar = (r) this.a.get(a);
        if (rVar != null) {
            return new h(this, rVar, b);
        }
        x a2 = a(a);
        if (a2 != null) {
            return a2;
        }
        a2 = a(b, a);
        return a2 == null ? b(b, a) : a2;
    }

    public String toString() {
        return this.a.toString();
    }
}