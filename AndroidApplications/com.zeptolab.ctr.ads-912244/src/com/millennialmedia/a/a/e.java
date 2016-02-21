package com.millennialmedia.a.a;

import java.lang.reflect.Field;

enum e extends d {
    e(String str, int i) {
        super(str, i, null);
    }

    public String a(Field field) {
        return field.getName();
    }
}