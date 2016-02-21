package com.google.ads.util;

import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;

public final class l extends k {
    private static final int[] c;
    private static final int[] d;
    private int e;
    private int f;
    private final int[] g;

    static {
        c = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        d = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    }

    public l(byte[] bArr) {
        this.a = bArr;
        this.g = c;
        this.e = 0;
        this.f = 0;
    }

    public final boolean a(byte[] bArr, int i) {
        if (this.e == 6) {
            return false;
        }
        int i2 = i + 0;
        int i3 = this.e;
        int i4 = this.f;
        byte[] bArr2 = this.a;
        int[] iArr = this.g;
        int i5 = 0;
        int i6 = i3;
        i3 = 0;
        while (i5 < i2) {
            if (i6 == 0) {
                while (i5 + 4 <= i2) {
                    i4 = (((iArr[bArr[i5] & 255] << 18) | (iArr[bArr[i5 + 1] & 255] << 12)) | (iArr[bArr[i5 + 2] & 255] << 6)) | iArr[bArr[i5 + 3] & 255];
                    if (i4 >= 0) {
                        bArr2[i3 + 2] = (byte) i4;
                        bArr2[i3 + 1] = (byte) (i4 >> 8);
                        bArr2[i3] = (byte) (i4 >> 16);
                        i3 += 3;
                        i5 += 4;
                    } else if (i5 >= i2) {
                        i5 = i4;
                        switch (i6) {
                            case IcsToast.LENGTH_LONG:
                                this.e = 6;
                                return false;
                            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                                i4 = i3 + 1;
                                bArr2[i3] = (byte) (i5 >> 4);
                                i3 = i4;
                                this.e = i6;
                                this.b = i3;
                                return true;
                            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                                i4 = i3 + 1;
                                bArr2[i3] = (byte) (i5 >> 10);
                                i3 = i4 + 1;
                                bArr2[i4] = (byte) (i5 >> 2);
                                this.e = i6;
                                this.b = i3;
                                return true;
                            case ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT:
                                this.e = 6;
                                return false;
                            default:
                                this.e = i6;
                                this.b = i3;
                                return true;
                        }
                    }
                }
                if (i5 >= i2) {
                    i5 = i4;
                    switch (i6) {
                        case IcsToast.LENGTH_LONG:
                            this.e = 6;
                            return false;
                        case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                            i4 = i3 + 1;
                            bArr2[i3] = (byte) (i5 >> 4);
                            i3 = i4;
                            this.e = i6;
                            this.b = i3;
                            return true;
                        case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                            i4 = i3 + 1;
                            bArr2[i3] = (byte) (i5 >> 10);
                            i3 = i4 + 1;
                            bArr2[i4] = (byte) (i5 >> 2);
                            this.e = i6;
                            this.b = i3;
                            return true;
                        case ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT:
                            this.e = 6;
                            return false;
                        default:
                            this.e = i6;
                            this.b = i3;
                            return true;
                    }
                }
            }
            int i7 = i5 + 1;
            i5 = iArr[bArr[i5] & 255];
            switch (i6) {
                case IcsToast.LENGTH_SHORT:
                    if (i5 >= 0) {
                        i6++;
                        i4 = i5;
                        i5 = i7;
                    } else {
                        if (i5 != -1) {
                            this.e = 6;
                            return false;
                        }
                        i5 = i7;
                    }
                    break;
                case IcsToast.LENGTH_LONG:
                    if (i5 >= 0) {
                        i4 = (i4 << 6) | i5;
                        i6++;
                        i5 = i7;
                    } else {
                        if (i5 != -1) {
                            this.e = 6;
                            return false;
                        }
                        i5 = i7;
                    }
                    break;
                case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                    if (i5 >= 0) {
                        i4 = (i4 << 6) | i5;
                        i6++;
                        i5 = i7;
                    } else if (i5 == -2) {
                        i5 = i3 + 1;
                        bArr2[i3] = (byte) (i4 >> 4);
                        i6 = 4;
                        i3 = i5;
                        i5 = i7;
                    } else {
                        if (i5 != -1) {
                            this.e = 6;
                            return false;
                        }
                        i5 = i7;
                    }
                    break;
                case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                    if (i5 >= 0) {
                        i4 = (i4 << 6) | i5;
                        bArr2[i3 + 2] = (byte) i4;
                        bArr2[i3 + 1] = (byte) (i4 >> 8);
                        bArr2[i3] = (byte) (i4 >> 16);
                        i3 += 3;
                        i5 = i7;
                        i6 = 0;
                    } else if (i5 == -2) {
                        bArr2[i3 + 1] = (byte) (i4 >> 2);
                        bArr2[i3] = (byte) (i4 >> 10);
                        i3 += 2;
                        i6 = 5;
                        i5 = i7;
                    } else {
                        if (i5 != -1) {
                            this.e = 6;
                            return false;
                        }
                        i5 = i7;
                    }
                    break;
                case ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT:
                    if (i5 == -2) {
                        i6++;
                        i5 = i7;
                    } else {
                        if (i5 != -1) {
                            this.e = 6;
                            return false;
                        }
                        i5 = i7;
                    }
                    break;
                case FragmentManagerImpl.ANIM_STYLE_FADE_ENTER:
                    if (i5 != -1) {
                        this.e = 6;
                        return false;
                    }
                    i5 = i7;
                    break;
                default:
                    i5 = i7;
                    break;
            }
        }
        i5 = i4;
        switch (i6) {
            case IcsToast.LENGTH_LONG:
                this.e = 6;
                return false;
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                i4 = i3 + 1;
                bArr2[i3] = (byte) (i5 >> 4);
                i3 = i4;
                this.e = i6;
                this.b = i3;
                return true;
            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                i4 = i3 + 1;
                bArr2[i3] = (byte) (i5 >> 10);
                i3 = i4 + 1;
                bArr2[i4] = (byte) (i5 >> 2);
                this.e = i6;
                this.b = i3;
                return true;
            case ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT:
                this.e = 6;
                return false;
            default:
                this.e = i6;
                this.b = i3;
                return true;
        }
    }
}