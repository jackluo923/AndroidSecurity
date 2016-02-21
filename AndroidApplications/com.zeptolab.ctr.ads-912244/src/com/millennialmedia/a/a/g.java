package com.millennialmedia.a.a;

import java.lang.reflect.Field;

enum g extends d {
    g(String str, int i) {
        super(str, i, null);
    }

    public String a(Field field) {
        return d.a(d.a(field.getName(), " "));
    }
}