package com.millennialmedia.a.a;

import java.lang.reflect.Field;

enum f extends d {
    f(String str, int i) {
        super(str, i, null);
    }

    public String a(Field field) {
        return d.a(field.getName());
    }
}