package com.google.android.gms.internal;

import java.util.Arrays;

public final class kc {
    public static final Object aah;

    static {
        aah = new Object();
    }

    public static boolean equals(int[] iArr, int[] iArr2) {
        if (iArr != null && iArr.length != 0) {
            return Arrays.equals(iArr, iArr2);
        }
        return iArr2 == null || iArr2.length == 0;
    }

    public static boolean equals(Object[] objArr, Object[] objArr2) {
        if (objArr == null) {
            boolean z = false;
        } else {
            int i = objArr.length;
        }
        int length = objArr2 == null ? 0 : objArr2.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= i || objArr[i3] != null) {
                int i4;
                int i5 = i2;
                while (i5 < length && objArr2[i5] == null) {
                    i5++;
                }
                i4 = i3 >= i;
                i2 = i5 >= length;
                if (i4 != 0 && i2 != 0) {
                    return true;
                }
                if (i4 != i2 || !objArr[i3].equals(objArr2[i5])) {
                    return false;
                }
                i2 = i5 + 1;
                i3++;
            } else {
                i3++;
            }
        }
    }

    public static int hashCode(int[] iArr) {
        return (iArr == null || iArr.length == 0) ? 0 : Arrays.hashCode(iArr);
    }

    public static int hashCode(Object[] objArr) {
        int i = 0;
        int length = objArr == null ? 0 : objArr.length;
        int i2 = 0;
        while (i2 < length) {
            Object obj = objArr[i2];
            if (obj != null) {
                i = i * 31 + obj.hashCode();
            }
            i2++;
        }
        return i;
    }
}