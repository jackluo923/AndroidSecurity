package com.millennialmedia.android;

import java.util.Arrays;

class Base64 {
    private static final char[] a;
    private static final int[] b;

    static {
        a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        b = new int[256];
        Arrays.fill(b, -1);
        int length = a.length;
        int i = 0;
        while (i < length) {
            b[a[i]] = i;
            i++;
        }
        b[61] = 0;
    }

    Base64() {
    }

    public static final byte[] decode(String str) {
        int length = str != null ? str.length() : 0;
        if (length == 0) {
            return new byte[0];
        }
        int i = 0;
        int i2 = 0;
        while (i < length) {
            if (b[str.charAt(i)] < 0) {
                i2++;
            }
            i++;
        }
        if ((length - i2) % 4 != 0) {
            return null;
        }
        i = length;
        int i3 = 0;
        while (i > 1) {
            i--;
            if (b[str.charAt(i)] > 0) {
                break;
            } else if (str.charAt(i) == '=') {
                i3++;
            }
        }
        int i4 = ((length - i2) * 6) >> 3 - i3;
        byte[] bArr = new byte[i4];
        int i5 = 0;
        boolean z = false;
        while (i5 < i4) {
            i = 0;
            int i6 = i2;
            i2 = 0;
            while (i2 < 4) {
                length = i6 + 1;
                i6 = b[str.charAt(i6)];
                if (i6 >= 0) {
                    i |= i6 << (18 - (i2 * 6));
                } else {
                    i2--;
                }
                i2++;
                i6 = length;
            }
            i2 = i5 + 1;
            bArr[i5] = (byte) (i >> 16);
            if (i2 < i4) {
                length = i2 + 1;
                bArr[i2] = (byte) (i >> 8);
                if (length < i4) {
                    i2 = length + 1;
                    bArr[length] = (byte) i;
                } else {
                    i2 = length;
                }
            }
            i5 = i2;
            i2 = i6;
        }
        return bArr;
    }

    public static final byte[] decode(byte[] bArr) {
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            if (b[bArr[i] & 255] < 0) {
                i2++;
            }
            i++;
        }
        if ((length - i2) % 4 != 0) {
            return null;
        }
        i = length;
        int i3 = 0;
        while (i > 1) {
            i--;
            if (b[bArr[i] & 255] > 0) {
                break;
            } else if (bArr[i] == (byte) 61) {
                i3++;
            }
        }
        int i4 = ((length - i2) * 6) >> 3 - i3;
        byte[] bArr2 = new byte[i4];
        int i5 = 0;
        boolean z = false;
        while (i5 < i4) {
            i = 0;
            int i6 = i2;
            i2 = 0;
            while (i2 < 4) {
                length = i6 + 1;
                i6 = b[bArr[i6] & 255];
                if (i6 >= 0) {
                    i |= i6 << (18 - (i2 * 6));
                } else {
                    i2--;
                }
                i2++;
                i6 = length;
            }
            i2 = i5 + 1;
            bArr2[i5] = (byte) (i >> 16);
            if (i2 < i4) {
                length = i2 + 1;
                bArr2[i2] = (byte) (i >> 8);
                if (length < i4) {
                    i2 = length + 1;
                    bArr2[length] = (byte) i;
                } else {
                    i2 = length;
                }
            }
            i5 = i2;
            i2 = i6;
        }
        return bArr2;
    }

    public static final char[] encodeToChar(byte[] bArr, boolean z) {
        int i = 0;
        int length = bArr != null ? bArr.length : 0;
        if (length == 0) {
            return new char[0];
        }
        int i2 = (length / 3) * 3;
        int i3 = (((length - 1) / 3) + 1) << 2;
        int i4 = i3 + (z ? ((i3 - 1) / 76) << 1 : 0);
        char[] cArr = new char[i4];
        int i5 = 0;
        i3 = 0;
        int i6 = 0;
        while (i6 < i2) {
            int i7 = i6 + 1;
            int i8 = i7 + 1;
            i7 = ((bArr[i7] & 255) << 8) | ((bArr[i6] & 255) << 16);
            i6 = i8 + 1;
            i7 |= bArr[i8] & 255;
            i8 = i3 + 1;
            cArr[i3] = a[(i7 >>> 18) & 63];
            i3 = i8 + 1;
            cArr[i8] = a[(i7 >>> 12) & 63];
            i8 = i3 + 1;
            cArr[i3] = a[(i7 >>> 6) & 63];
            i3 = i8 + 1;
            cArr[i8] = a[i7 & 63];
            if (z) {
                i5++;
                if (i5 == 19 && i3 < i4 - 2) {
                    i7 = i3 + 1;
                    cArr[i3] = '\r';
                    i5 = i7 + 1;
                    cArr[i7] = '\n';
                    i3 = i5;
                    i5 = 0;
                }
            }
        }
        i5 = length - i2;
        if (i5 > 0) {
            i3 = (bArr[i2] & 255) << 10;
            if (i5 == 2) {
                i = (bArr[length - 1] & 255) << 2;
            }
            i |= i3;
            cArr[i4 - 4] = a[i >> 12];
            cArr[i4 - 3] = a[(i >>> 6) & 63];
            cArr[i4 - 2] = i5 == 2 ? a[i & 63] : '=';
            cArr[i4 - 1] = '=';
        }
        return cArr;
    }

    public static final String encodeToString(byte[] bArr, boolean z) {
        return new String(encodeToChar(bArr, z));
    }
}