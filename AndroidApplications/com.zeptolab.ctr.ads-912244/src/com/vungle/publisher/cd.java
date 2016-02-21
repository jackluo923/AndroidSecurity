package com.vungle.publisher;

public final class cd {
    private static final char[] a;

    static {
        a = "0123456789abcdef".toCharArray();
    }

    public static String a(Enum enumR) {
        return enumR == null ? null : enumR.name();
    }

    public static String a(Object... objArr) {
        String str = ", ";
        if (objArr == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        boolean z = 1;
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (i != 0) {
                z = false;
            } else {
                stringBuilder.append(str);
            }
            stringBuilder.append(obj);
            i++;
        }
        return stringBuilder.toString();
    }

    public static void a(StringBuilder stringBuilder, String str, Object obj) {
        stringBuilder.append(", ");
        stringBuilder.append(str).append(": ").append(obj);
    }

    public static String b(Object[] objArr) {
        return new StringBuilder("[").append(a(objArr)).append("]").toString();
    }
}