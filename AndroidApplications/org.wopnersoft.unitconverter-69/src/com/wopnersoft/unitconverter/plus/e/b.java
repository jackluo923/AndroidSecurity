package com.wopnersoft.unitconverter.plus.e;

import com.actionbarsherlock.R;
import java.text.DecimalFormat;

// compiled from: ProGuard
public final class b {
    public static final double a;
    public static final double b;
    public static final double c;
    public static final double d;

    static {
        a = Math.log(10.0d);
        b = Math.log(2.0d);
        c = Math.log(Double.MAX_VALUE);
        d = Math.log(Double.MIN_VALUE);
    }

    public static double a(double d, int i) {
        if (d == 0.0d) {
            return d;
        }
        if (i == 0) {
            return Math.floor(d + 0.5d);
        }
        double a = a(i);
        return Math.floor((d / a) + 0.5d) * a;
    }

    public static double a(int i) {
        if (i == 0) {
            return 1.0d;
        }
        boolean z = 0;
        if (i < 0) {
            i *= -1;
            z = true;
        }
        int i2 = 1;
        double d = 10.0d;
        while (i2 < i) {
            i2++;
            d *= 10.0d;
        }
        return i != 0 ? 1.0d / d : d;
    }

    public static double a(String str) {
        double d = Double.NEGATIVE_INFINITY;
        try {
            String[] split = str.split("/");
            return split.length > 1 ? Double.valueOf(split[0]).doubleValue() / Double.valueOf(split[1]).doubleValue() : d;
        } catch (Exception e) {
            return d;
        }
    }

    public static long a(long j, long j2) {
        long j3 = 0;
        long j4 = j;
        while (j3 != j4) {
            if (j4 < j2) {
                j2 -= j4;
            } else if (j4 > j2) {
                j4 -= j2;
            } else {
                j3 = j4;
            }
        }
        return j3;
    }

    public static Boolean a(double d, double d2) {
        return Math.abs(d - d2) < 1.0E-9d ? Boolean.valueOf(true) : Boolean.valueOf(false);
    }

    public static String a(double d) {
        double a = a(d, -4);
        Boolean valueOf = Boolean.valueOf(a < 0.0d);
        String str = "%,d' - %s\"";
        a = Math.abs(a);
        a = a((a - ((double) ((int) a))) / 0.08333333333333333d, -3);
        String b = b(c(a), (int)R.styleable.SherlockTheme_listPopupWindowStyle);
        Object d2 = d(a);
        if (d2.length() == 0) {
            d2 = "0";
        }
        String toString = new StringBuilder(String.valueOf(d2)).append(b.length() > 0 ? new StringBuilder(" <sup><small>").append(b).append("</small></sup>").toString() : "").toString();
        return new StringBuilder(String.valueOf(valueOf.booleanValue() ? "-" : "")).append(String.format("%,d' - %s\"", new Object[]{Integer.valueOf(i), toString})).toString();
    }

    public static String a(double d, String str, String str2) {
        double a = a(d, -4);
        Boolean valueOf = Boolean.valueOf(a < 0.0d);
        String str3 = "%,d%s %s%s";
        a = Math.abs(a);
        a = a((a - ((double) ((int) a))) / 0.08333333333333333d, -3);
        String b = b(c(a), (int)R.styleable.SherlockTheme_listPopupWindowStyle);
        Object d2 = d(a);
        if (d2.length() == 0) {
            d2 = "0";
        }
        String toString = new StringBuilder(String.valueOf(d2)).append(b.length() > 0 ? new StringBuilder(" <sup><small>").append(b).append("</small></sup>").toString() : "").toString();
        return new StringBuilder(String.valueOf(valueOf.booleanValue() ? "-" : "")).append(String.format("%,d%s %s%s", new Object[]{Integer.valueOf(i), str, toString, str2})).toString();
    }

    public static String a(double d, DecimalFormat decimalFormat) {
        double a = a(d, -4);
        Boolean valueOf = Boolean.valueOf(a < 0.0d);
        String str = "%,dlb - %soz";
        a = Math.abs(a);
        String a2 = com.wopnersoft.unitconverter.plus.d.b.a(decimalFormat.format(a((a - ((double) ((int) a))) / 0.0625d, -3)));
        return new StringBuilder(String.valueOf(valueOf.booleanValue() ? "-" : "")).append(String.format("%,dlb - %soz", new Object[]{Integer.valueOf(i), a2})).toString();
    }

    public static boolean a(long j) {
        return (1 & j) == 0;
    }

    public static double b_(String str) {
        try {
            return Double.parseDouble(str);
        } catch (Exception e) {
            return Double.parseDouble(str.replace(',', '.'));
        }
    }

    public static int b_(long j) {
        return (int) (Math.log((double) j) / Math.log(2.0d));
    }

    public static String b_(double d) {
        double d2 = 0.0d;
        double d3 = 1.0d;
        double d4 = 0.0d;
        while (d3 <= 64.0d) {
            double round = d - ((double) Math.round(d / (1.0d / d3))) / d3;
            if (d3 == 1.0d) {
                d2 = round;
                d4 = d3;
            }
            if (Math.abs(round) < Math.abs(d2)) {
                d4 = d3;
            } else {
                round = d2;
            }
            d3 += 1.0d;
            d2 = round;
        }
        long round2 = Math.round(d / (1.0d / d4));
        return round2 == 0 ? "" : new StringBuilder(String.valueOf(round2)).append("/").append((int) d4).toString();
    }

    public static String b_(double d, int i) {
        long a = (long) a(((double) i) * d, 0);
        String str = "";
        if (a == 0) {
            return str;
        }
        while (a(a) && i > 1) {
            a /= 2;
            i /= 2;
        }
        return new StringBuilder(String.valueOf(a)).append("/").append(i).toString();
    }

    public static String b_(double d, DecimalFormat decimalFormat) {
        double a = a(d, -4);
        Boolean valueOf = Boolean.valueOf(a < 0.0d);
        String str = "%,dst %dlb - %soz";
        a = Math.abs(a);
        a = a((a - ((double) ((int) a))) / 0.07142857142857142d, -3);
        String a2 = com.wopnersoft.unitconverter.plus.d.b.a(decimalFormat.format(a((a - ((double) ((int) a))) / 0.0625d, -3)));
        return new StringBuilder(String.valueOf(valueOf.booleanValue() ? "-" : "")).append(String.format("%,dst %dlb - %soz", new Object[]{Integer.valueOf(i), Integer.valueOf(i), a2})).toString();
    }

    public static double c(double d) {
        double abs = Math.abs(d);
        return abs - ((double) ((long) Math.floor(abs)));
    }

    public static String d(double d) {
        Object obj = "";
        if (d < 0.0d) {
            obj = "-";
        }
        long floor = (long) Math.floor(Math.abs(d));
        return floor == 0 ? "" : new StringBuilder(String.valueOf(obj)).append(floor).toString();
    }
}