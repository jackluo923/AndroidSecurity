package com.millennialmedia.a.a;

import java.lang.reflect.Field;

enum i extends d {
    i(String str, int i) {
        super(str, i, null);
    }

    public String a(Field field) {
        return d.a(field.getName(), "-").toLowerCase();
    }
}