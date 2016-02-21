package com.google.ads;

import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;

public final class an {
    private static final char[] a;
    private static final char[] b;
    private static final byte[] c;
    private static final byte[] d;

    static {
        a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray();
        c = new byte[]{(byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -5, (byte) -5, (byte) -9, (byte) -9, (byte) -5, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -5, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) 62, (byte) -9, (byte) -9, (byte) -9, (byte) 63, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 58, (byte) 59, (byte) 60, (byte) 61, (byte) -9, (byte) -9, (byte) -9, (byte) -1, (byte) -9, (byte) -9, (byte) -9, (byte) 0, (byte) 1, (byte) 2, (byte) 3, (byte) 4, (byte) 5, (byte) 6, (byte) 7, (byte) 8, (byte) 9, (byte) 10, (byte) 11, (byte) 12, (byte) 13, (byte) 14, (byte) 15, (byte) 16, (byte) 17, (byte) 18, (byte) 19, (byte) 20, (byte) 21, (byte) 22, (byte) 23, (byte) 24, (byte) 25, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) 26, (byte) 27, (byte) 28, (byte) 29, (byte) 30, (byte) 31, (byte) 32, (byte) 33, (byte) 34, (byte) 35, (byte) 36, (byte) 37, (byte) 38, (byte) 39, (byte) 40, (byte) 41, (byte) 42, (byte) 43, (byte) 44, (byte) 45, (byte) 46, (byte) 47, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9};
        d = new byte[]{(byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -5, (byte) -5, (byte) -9, (byte) -9, (byte) -5, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -5, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) 62, (byte) -9, (byte) -9, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 58, (byte) 59, (byte) 60, (byte) 61, (byte) -9, (byte) -9, (byte) -9, (byte) -1, (byte) -9, (byte) -9, (byte) -9, (byte) 0, (byte) 1, (byte) 2, (byte) 3, (byte) 4, (byte) 5, (byte) 6, (byte) 7, (byte) 8, (byte) 9, (byte) 10, (byte) 11, (byte) 12, (byte) 13, (byte) 14, (byte) 15, (byte) 16, (byte) 17, (byte) 18, (byte) 19, (byte) 20, (byte) 21, (byte) 22, (byte) 23, (byte) 24, (byte) 25, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) 63, (byte) -9, (byte) 26, (byte) 27, (byte) 28, (byte) 29, (byte) 30, (byte) 31, (byte) 32, (byte) 33, (byte) 34, (byte) 35, (byte) 36, (byte) 37, (byte) 38, (byte) 39, (byte) 40, (byte) 41, (byte) 42, (byte) 43, (byte) 44, (byte) 45, (byte) 46, (byte) 47, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9};
    }

    private static int a(char[] cArr, byte[] bArr, int i, byte[] bArr2) {
        if (cArr[2] == '=') {
            bArr[i] = (byte) ((((bArr2[cArr[0]] << 24) >>> 6) | ((bArr2[cArr[1]] << 24) >>> 12)) >>> 16);
            return 1;
        } else if (cArr[3] == '=') {
            i = (((bArr2[cArr[1]] << 24) >>> 12) | ((bArr2[cArr[0]] << 24) >>> 6)) | ((bArr2[cArr[2]] << 24) >>> 18);
            bArr[i] = (byte) (i >>> 16);
            bArr[i + 1] = (byte) (i >>> 8);
            return 2;
        } else {
            i = ((((bArr2[cArr[1]] << 24) >>> 12) | ((bArr2[cArr[0]] << 24) >>> 6)) | ((bArr2[cArr[2]] << 24) >>> 18)) | ((bArr2[cArr[3]] << 24) >>> 24);
            bArr[i] = (byte) (i >> 16);
            bArr[i + 1] = (byte) (i >> 8);
            bArr[i + 2] = (byte) i;
            return 3;
        }
    }

    public static String a(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = b;
        int i = ((length + 2) / 3) * 4;
        char[] cArr2 = new char[(i + i / Integer.MAX_VALUE)];
        int i2 = length - 2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i5 < i2) {
            i = (((bArr[i5 + 0] << 24) >>> 8) | ((bArr[(i5 + 1) + 0] << 24) >>> 16)) | ((bArr[(i5 + 2) + 0] << 24) >>> 24);
            cArr2[i4] = cArr[i >>> 18];
            cArr2[i4 + 1] = cArr[(i >>> 12) & 63];
            cArr2[i4 + 2] = cArr[(i >>> 6) & 63];
            cArr2[i4 + 3] = cArr[i & 63];
            i = i3 + 4;
            if (i == Integer.MAX_VALUE) {
                cArr2[i4 + 4] = '\n';
                i4++;
                i = 0;
            }
            i5 += 3;
            i4 += 4;
            i3 = i;
        }
        if (i5 < length) {
            i2 = i5 + 0;
            length -= i5;
            i = (length > 2 ? (bArr[i2 + 2] << 24) >>> 24 : 0) | ((length > 0 ? (bArr[i2] << 24) >>> 8 : 0) | (length > 1 ? (bArr[i2 + 1] << 24) >>> 16 : 0));
            switch (length) {
                case IcsToast.LENGTH_LONG:
                    cArr2[i4] = cArr[i >>> 18];
                    cArr2[i4 + 1] = cArr[(i >>> 12) & 63];
                    cArr2[i4 + 2] = '=';
                    cArr2[i4 + 3] = '=';
                    break;
                case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                    cArr2[i4] = cArr[i >>> 18];
                    cArr2[i4 + 1] = cArr[(i >>> 12) & 63];
                    cArr2[i4 + 2] = cArr[(i >>> 6) & 63];
                    cArr2[i4 + 3] = '=';
                    break;
                case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                    cArr2[i4] = cArr[i >>> 18];
                    cArr2[i4 + 1] = cArr[(i >>> 12) & 63];
                    cArr2[i4 + 2] = cArr[(i >>> 6) & 63];
                    cArr2[i4 + 3] = cArr[i & 63];
                    break;
            }
            if (i3 + 4 == Integer.MAX_VALUE) {
                cArr2[i4 + 4] = '\n';
            }
        }
        i = cArr2.length;
        while (i > 0 && cArr2[i - 1] == '=') {
            i--;
        }
        return new String(cArr2, 0, i);
    }

    public static byte[] a(String str) {
        char[] toCharArray = str.toCharArray();
        int length = toCharArray.length;
        byte[] bArr = c;
        Object obj = new Object[((length * 3) / 4 + 2)];
        int i = 0;
        char[] cArr = new char[4];
        boolean z = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            char c = toCharArray[i2 + 0];
            char c2 = (char) (c & 127);
            byte b = bArr[c2];
            if (c2 != c || b >= (byte) -5) {
                int i4;
                if (b >= (byte) -1 && c2 == '=') {
                    if (i == 0) {
                        if (i2 < 2) {
                            throw new am(new StringBuilder("Invalid padding char found in position ").append(i2).toString());
                        }
                        z = 1;
                        c = (char) (toCharArray[(length - 1) + 0] & 127);
                        if (c == '=' || c == '\n') {
                            i4 = i;
                        } else {
                            throw new am("encoded value has invalid trailing char");
                        }
                    }
                    i4 = i;
                } else if (i != 0) {
                    throw new am(new StringBuilder("Data found after trailing padding char at index ").append(i2).toString());
                } else {
                    i4 = i3 + 1;
                    cArr[i3] = c2;
                    if (i4 == 4) {
                        i4 = i + a(cArr, obj, i, bArr);
                        i3 = 0;
                    } else {
                        i3 = i4;
                        i4 = i;
                    }
                }
                i2++;
                i = i4;
            } else {
                throw new am(new StringBuilder("Bad Base64 input character at ").append(i2).append(": ").append(toCharArray[i2 + 0]).append("(decimal)").toString());
            }
        }
        if (i3 == 0 || i3 != 1) {
            cArr[i3] = '=';
            i += a(cArr, obj, i, bArr);
        } else {
            throw new am(new StringBuilder("single trailing character at offset ").append(length - 1).toString());
        }
        Object obj2 = new Object[i];
        System.arraycopy(obj, 0, obj2, 0, i);
        return obj2;
    }
}