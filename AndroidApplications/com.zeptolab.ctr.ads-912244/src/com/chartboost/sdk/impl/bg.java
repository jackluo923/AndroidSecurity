package com.chartboost.sdk.impl;

public class bg {

    static class a extends IllegalArgumentException {
        a(String str) {
            super(str + " should not be null!");
        }
    }

    public static Object a(String str, Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new a(str);
    }
}