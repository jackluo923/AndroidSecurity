package me.kiip.internal.e;

final class b {

    public static interface a {
        void a_(String str, String str2);
    }

    public static int a(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return parseLong < 0 ? 0 : (int) parseLong;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    public static int a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\t') {
                return i;
            }
            i++;
        }
        return i;
    }

    public static int a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    public static void a(String str, a aVar) {
        int i = 0;
        while (i < str.length()) {
            int a = a(str, i, "=,");
            String trim = str.substring(i, a).trim();
            if (a == str.length() || str.charAt(a) == ',') {
                i = a + 1;
                aVar.a(trim, null);
            } else {
                String str2;
                i = a(str, a + 1);
                String str3;
                if (i >= str.length() || str.charAt(i) != '\"') {
                    a = a(str, i, ",");
                    str3 = str.substring(i, a).trim();
                    i = a;
                    str2 = str3;
                } else {
                    i++;
                    a = a(str, i, "\"");
                    str3 = str.substring(i, a);
                    i = a + 1;
                    str2 = str3;
                }
                aVar.a(trim, str2);
            }
        }
    }
}