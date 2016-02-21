package com.millennialmedia.a.a;

public enum d implements j {
    IDENTITY,
    UPPER_CAMEL_CASE,
    UPPER_CAMEL_CASE_WITH_SPACES,
    LOWER_CASE_WITH_UNDERSCORES,
    LOWER_CASE_WITH_DASHES;

    static {
        a = new e("IDENTITY", 0);
        b = new f("UPPER_CAMEL_CASE", 1);
        c = new g("UPPER_CAMEL_CASE_WITH_SPACES", 2);
        d = new h("LOWER_CASE_WITH_UNDERSCORES", 3);
        e = new i("LOWER_CASE_WITH_DASHES", 4);
        f = new d[]{a, b, c, d, e};
    }

    private static String a(char c, String str, int i) {
        return i < str.length() ? c + str.substring(i) : String.valueOf(c);
    }

    private static String b(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        char charAt = str.charAt(0);
        while (i < str.length() - 1 && !Character.isLetter(charAt)) {
            stringBuilder.append(charAt);
            i++;
            charAt = str.charAt(i);
        }
        if (i == str.length()) {
            return stringBuilder.toString();
        }
        return Character.isUpperCase(charAt) ? str : stringBuilder.append(a(Character.toUpperCase(charAt), str, i + 1)).toString();
    }

    private static String b(String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && stringBuilder.length() != 0) {
                stringBuilder.append(str2);
            }
            stringBuilder.append(charAt);
            i++;
        }
        return stringBuilder.toString();
    }
}