package com.millennialmedia.a.a.b;

import com.millennialmedia.a.a.w;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

class k implements x {
    final /* synthetic */ Type a;
    final /* synthetic */ c b;

    k(c cVar, Type type) {
        this.b = cVar;
        this.a = type;
    }

    public Object a() {
        if (this.a instanceof ParameterizedType) {
            Type type = ((ParameterizedType) this.a).getActualTypeArguments()[0];
            if (type instanceof Class) {
                return EnumSet.noneOf((Class) type);
            }
            throw new w("Invalid EnumSet type: " + this.a.toString());
        } else {
            throw new w("Invalid EnumSet type: " + this.a.toString());
        }
    }
}