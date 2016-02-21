package com.mixpanel.android.a;

public class a {
    private static char[] a;
    private static byte[] b;

    static {
        int i;
        int i2 = 0;
        a = new char[64];
        char c = 'A';
        int i3 = 0;
        while (c <= 'Z') {
            i = i3 + 1;
            a[i3] = c;
            c = (char) (c + 1);
            i3 = i;
        }
        c = 'a';
        while (c <= 'z') {
            i = i3 + 1;
            a[i3] = c;
            c = (char) (c + 1);
            i3 = i;
        }
        c = '0';
        while (c <= '9') {
            i = i3 + 1;
            a[i3] = c;
            c = (char) (c + 1);
            i3 = i;
        }
        i = i3 + 1;
        a[i3] = '+';
        i3 = i + 1;
        a[i] = '/';
        b = new byte[128];
        int i4 = 0;
        while (i4 < b.length) {
            b[i4] = (byte) -1;
            i4++;
        }
        while (i2 < 64) {
            b[a[i2]] = (byte) i2;
            i2++;
        }
    }

    public static String a_(String str) {
        return new String(a(str.getBytes()));
    }

    public static byte[] a_(char[] cArr) {
        int i = 0;
        int length = cArr.length;
        if (length % 4 != 0) {
            throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
        }
        int i2 = length;
        while (i2 > 0 && cArr[i2 - 1] == '=') {
            i2--;
        }
        int i3 = (i2 * 3) / 4;
        byte[] bArr = new byte[i3];
        int i4 = 0;
        while (i < i2) {
            int i5;
            length = i + 1;
            char c = cArr[i];
            i = length + 1;
            char c2 = cArr[length];
            if (i < i2) {
                char c3 = cArr[i];
                i++;
            } else {
                int i6 = 65;
            }
            if (i < i2) {
                length = i + 1;
                i = cArr[i];
                i5 = length;
            } else {
                i5 = i;
                i = 65;
            }
            if (c <= '\u007f' && c2 <= '\u007f' && i6 <= 127 && i <= 127) {
                byte b = b[c];
                byte b2 = b[c2];
                byte b3 = b[i6];
                byte b4 = b[i];
                if (b >= 0 && b2 >= 0 && b3 >= 0 && b4 >= 0) {
                    length = (b << 2) | (b2 >>> 4);
                    int i7 = ((b2 & 15) << 4) | (b3 >>> 2);
                    i6 = ((b3 & 3) << 6) | b4;
                    i = i4 + 1;
                    bArr[i4] = (byte) length;
                    if (i < i3) {
                        length = i + 1;
                        bArr[i] = (byte) i7;
                    } else {
                        length = i;
                    }
                    if (length < i3) {
                        i = length + 1;
                        bArr[length] = (byte) i6;
                    } else {
                        i = length;
                    }
                    i4 = i;
                    i = i5;
                }
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
        }
        return bArr;
    }

    public static char[] a_(byte[] bArr) {
        return a(bArr, bArr.length);
    }

    public static char[] a_(byte[] bArr, int i) {
        int i2 = ((i * 4) + 2) / 3;
        char[] cArr = new char[(((i + 2) / 3) * 4)];
        int i3 = 0;
        int i4 = 0;
        while (i4 < i) {
            int i5;
            int i6 = i4 + 1;
            int i7 = bArr[i4] & 255;
            if (i6 < i) {
                i5 = bArr[i6] & 255;
                i6++;
            } else {
                i5 = 0;
            }
            if (i6 < i) {
                i4 = i6 + 1;
                i6 = bArr[i6] & 255;
            } else {
                i4 = i6;
                i6 = 0;
            }
            int i8 = i7 >>> 2;
            i7 = ((i7 & 3) << 4) | (i5 >>> 4);
            i5 = ((i5 & 15) << 2) | (i6 >>> 6);
            int i9 = i6 & 63;
            i6 = i3 + 1;
            cArr[i3] = a[i8];
            i3 = i6 + 1;
            cArr[i6] = a[i7];
            cArr[i3] = i3 < i2 ? a[i5] : '=';
            i5 = i3 + 1;
            cArr[i5] = i5 < i2 ? a[i9] : '=';
            i3 = i5 + 1;
        }
        return cArr;
    }

    public static String b(String str) {
        return new String(c(str));
    }

    public static byte[] c(String str) {
        return a(str.toCharArray());
    }
}