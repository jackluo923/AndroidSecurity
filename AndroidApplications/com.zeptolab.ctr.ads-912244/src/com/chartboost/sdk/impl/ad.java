package com.chartboost.sdk.impl;

public class ad {
    public static String a(Object obj) {
        StringBuilder stringBuilder = new StringBuilder();
        a(obj, stringBuilder);
        return stringBuilder.toString();
    }

    public static void a(Object obj, StringBuilder stringBuilder) {
        ae.a().a(obj, stringBuilder);
    }

    static void a(StringBuilder stringBuilder, String str) {
        stringBuilder.append("\"");
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == '\\') {
                stringBuilder.append("\\\\");
            } else if (charAt == '\"') {
                stringBuilder.append("\\\"");
            } else if (charAt == '\n') {
                stringBuilder.append("\\n");
            } else if (charAt == '\r') {
                stringBuilder.append("\\r");
            } else if (charAt == '\t') {
                stringBuilder.append("\\t");
            } else if (charAt == '\b') {
                stringBuilder.append("\\b");
            } else if (charAt >= ' ') {
                stringBuilder.append(charAt);
            }
            i++;
        }
        stringBuilder.append("\"");
    }
}