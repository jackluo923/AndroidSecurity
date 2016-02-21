package com.mixpanel.android.a;

import android.graphics.Bitmap;
import java.lang.reflect.Array;

public class b {
    public static void a(Bitmap bitmap, int i) {
        if (i >= 1) {
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            int i10;
            int i11;
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[(width * height)];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            int i12 = width - 1;
            int i13 = height - 1;
            int i14 = width * height;
            int i15 = i + i + 1;
            int[] iArr2 = new int[i14];
            int[] iArr3 = new int[i14];
            int[] iArr4 = new int[i14];
            int[] iArr5 = new int[Math.max(width, height)];
            i14 = (i15 + 1) >> 1;
            int i16 = i14 * i14;
            int[] iArr6 = new int[(i16 * 256)];
            i14 = 0;
            while (i14 < i16 * 256) {
                iArr6[i14] = i14 / i16;
                i14++;
            }
            int i17 = 0;
            int[][] iArr7 = (int[][]) Array.newInstance(Integer.TYPE, new int[]{i15, 3});
            int i18 = i + 1;
            int i19 = 0;
            int i20 = 0;
            while (i20 < height) {
                int[] iArr8;
                i16 = 0;
                i2 = 0;
                i3 = 0;
                i4 = 0;
                i5 = 0;
                i6 = -i;
                i7 = 0;
                i8 = 0;
                i9 = 0;
                i10 = 0;
                while (i6 <= i) {
                    i11 = iArr[Math.min(i12, Math.max(i6, 0)) + i17];
                    iArr8 = iArr7[i6 + i];
                    iArr8[0] = (16711680 & i11) >> 16;
                    iArr8[1] = (65280 & i11) >> 8;
                    iArr8[2] = i11 & 255;
                    i11 = i18 - Math.abs(i6);
                    i9 += iArr8[0] * i11;
                    i8 += iArr8[1] * i11;
                    i7 += i11 * iArr8[2];
                    if (i6 > 0) {
                        i2 += iArr8[0];
                        i10 += iArr8[1];
                        i16 += iArr8[2];
                    } else {
                        i5 += iArr8[0];
                        i4 += iArr8[1];
                        i3 += iArr8[2];
                    }
                    i6++;
                }
                i11 = i9;
                i9 = i8;
                i8 = i7;
                i7 = 0;
                i6 = i17;
                i17 = i;
                while (i7 < width) {
                    iArr2[i6] = iArr6[i11];
                    iArr3[i6] = iArr6[i9];
                    iArr4[i6] = iArr6[i8];
                    i11 -= i5;
                    i9 -= i4;
                    i8 -= i3;
                    iArr8 = iArr7[((i17 - i) + i15) % i15];
                    i5 -= iArr8[0];
                    i4 -= iArr8[1];
                    i3 -= iArr8[2];
                    if (i20 == 0) {
                        iArr5[i7] = Math.min(i7 + i + 1, i12);
                    }
                    int i21 = iArr[iArr5[i7] + i19];
                    iArr8[0] = (16711680 & i21) >> 16;
                    iArr8[1] = (65280 & i21) >> 8;
                    iArr8[2] = i21 & 255;
                    i2 += iArr8[0];
                    i10 += iArr8[1];
                    i16 += iArr8[2];
                    i11 += i2;
                    i9 += i10;
                    i8 += i16;
                    i17 = (i17 + 1) % i15;
                    iArr8 = iArr7[i17 % i15];
                    i5 += iArr8[0];
                    i4 += iArr8[1];
                    i3 += iArr8[2];
                    i2 -= iArr8[0];
                    i10 -= iArr8[1];
                    i16 -= iArr8[2];
                    i6++;
                    i7++;
                }
                i17 = i6;
                i19 += width;
                i20++;
            }
            i7 = 0;
            while (i7 < width) {
                i10 = 0;
                i16 = (-i) * width;
                i3 = 0;
                i4 = 0;
                i5 = 0;
                i17 = 0;
                i11 = -i;
                i6 = 0;
                i8 = 0;
                i9 = 0;
                i2 = 0;
                while (i11 <= i) {
                    i20 = Math.max(0, i16) + i7;
                    int[] iArr9 = iArr7[i11 + i];
                    iArr9[0] = iArr2[i20];
                    iArr9[1] = iArr3[i20];
                    iArr9[2] = iArr4[i20];
                    int abs = i18 - Math.abs(i11);
                    i19 = iArr2[i20] * abs + i9;
                    i9 = iArr3[i20] * abs + i8;
                    i8 = iArr4[i20] * abs + i6;
                    if (i11 > 0) {
                        i3 += iArr9[0];
                        i2 += iArr9[1];
                        i10 += iArr9[2];
                    } else {
                        i17 += iArr9[0];
                        i5 += iArr9[1];
                        i4 += iArr9[2];
                    }
                    if (i11 < i13) {
                        i16 += width;
                    }
                    i11++;
                    i6 = i8;
                    i8 = i9;
                    i9 = i19;
                }
                i11 = i8;
                i19 = i9;
                i8 = 0;
                i9 = i6;
                i6 = i7;
                i16 = i10;
                i10 = i2;
                i2 = i3;
                i3 = i4;
                i4 = i5;
                i5 = i17;
                i17 = i;
                while (i8 < height) {
                    iArr[i6] = ((-16777216 | (iArr6[i19] << 16)) | (iArr6[i11] << 8)) | iArr6[i9];
                    i19 -= i5;
                    i11 -= i4;
                    i9 -= i3;
                    int[] iArr10 = iArr7[((i17 - i) + i15) % i15];
                    i5 -= iArr10[0];
                    i4 -= iArr10[1];
                    i3 -= iArr10[2];
                    if (i7 == 0) {
                        iArr5[i8] = Math.min(i8 + i18, i13) * width;
                    }
                    i12 = iArr5[i8] + i7;
                    iArr10[0] = iArr2[i12];
                    iArr10[1] = iArr3[i12];
                    iArr10[2] = iArr4[i12];
                    i2 += iArr10[0];
                    i10 += iArr10[1];
                    i16 += iArr10[2];
                    i19 += i2;
                    i11 += i10;
                    i9 += i16;
                    i17 = (i17 + 1) % i15;
                    iArr10 = iArr7[i17];
                    i5 += iArr10[0];
                    i4 += iArr10[1];
                    i3 += iArr10[2];
                    i2 -= iArr10[0];
                    i10 -= iArr10[1];
                    i16 -= iArr10[2];
                    i6 += width;
                    i8++;
                }
                i7++;
            }
            bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        }
    }
}