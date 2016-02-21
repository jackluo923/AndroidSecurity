package com.google.android.gms.internal;

import java.util.ArrayList;

public final class fj {
    public static void a(StringBuilder stringBuilder, double[] dArr) {
        int length = dArr.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Double.toString(dArr[i]));
            i++;
        }
    }

    public static void a(StringBuilder stringBuilder, float[] fArr) {
        int length = fArr.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Float.toString(fArr[i]));
            i++;
        }
    }

    public static void a(StringBuilder stringBuilder, int[] iArr) {
        int length = iArr.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Integer.toString(iArr[i]));
            i++;
        }
    }

    public static void a(StringBuilder stringBuilder, long[] jArr) {
        int length = jArr.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(jArr[i]));
            i++;
        }
    }

    public static void a(StringBuilder stringBuilder, Object[] objArr) {
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(objArr[i].toString());
            i++;
        }
    }

    public static void a(StringBuilder stringBuilder, String[] strArr) {
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append("\"").append(strArr[i]).append("\"");
            i++;
        }
    }

    public static void a(StringBuilder stringBuilder, boolean[] zArr) {
        int length = zArr.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Boolean.toString(zArr[i]));
            i++;
        }
    }

    public static ArrayList eH() {
        return new ArrayList();
    }
}