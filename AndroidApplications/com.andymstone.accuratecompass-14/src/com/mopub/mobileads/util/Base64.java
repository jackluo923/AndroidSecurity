package com.mopub.mobileads.util;

import com.andymstone.compasslib.v;
import com.andymstone.core.o;

public class Base64 {
    static final /* synthetic */ boolean a;

    abstract class Coder {
        public byte[] a;
        public int b;

        Coder() {
        }
    }

    class Decoder extends Coder {
        private static final int[] c;
        private static final int[] d;
        private int e;
        private int f;
        private final int[] g;

        static {
            int[] iArr = new int[256];
            iArr[0] = -1;
            iArr[1] = -1;
            iArr[2] = -1;
            iArr[3] = -1;
            iArr[4] = -1;
            iArr[5] = -1;
            iArr[6] = -1;
            iArr[7] = -1;
            iArr[8] = -1;
            iArr[9] = -1;
            iArr[10] = -1;
            iArr[11] = -1;
            iArr[12] = -1;
            iArr[13] = -1;
            iArr[14] = -1;
            iArr[15] = -1;
            iArr[16] = -1;
            iArr[17] = -1;
            iArr[18] = -1;
            iArr[19] = -1;
            iArr[20] = -1;
            iArr[21] = -1;
            iArr[22] = -1;
            iArr[23] = -1;
            iArr[24] = -1;
            iArr[25] = -1;
            iArr[26] = -1;
            iArr[27] = -1;
            iArr[28] = -1;
            iArr[29] = -1;
            iArr[30] = -1;
            iArr[31] = -1;
            iArr[32] = -1;
            iArr[33] = -1;
            iArr[34] = -1;
            iArr[35] = -1;
            iArr[36] = -1;
            iArr[37] = -1;
            iArr[38] = -1;
            iArr[39] = -1;
            iArr[40] = -1;
            iArr[41] = -1;
            iArr[42] = -1;
            iArr[43] = 62;
            iArr[44] = -1;
            iArr[45] = -1;
            iArr[46] = -1;
            iArr[47] = 63;
            iArr[48] = 52;
            iArr[49] = 53;
            iArr[50] = 54;
            iArr[51] = 55;
            iArr[52] = 56;
            iArr[53] = 57;
            iArr[54] = 58;
            iArr[55] = 59;
            iArr[56] = 60;
            iArr[57] = 61;
            iArr[58] = -1;
            iArr[59] = -1;
            iArr[60] = -1;
            iArr[61] = -2;
            iArr[62] = -1;
            iArr[63] = -1;
            iArr[64] = -1;
            iArr[66] = 1;
            iArr[67] = 2;
            iArr[68] = 3;
            iArr[69] = 4;
            iArr[70] = 5;
            iArr[71] = 6;
            iArr[72] = 7;
            iArr[73] = 8;
            iArr[74] = 9;
            iArr[75] = 10;
            iArr[76] = 11;
            iArr[77] = 12;
            iArr[78] = 13;
            iArr[79] = 14;
            iArr[80] = 15;
            iArr[81] = 16;
            iArr[82] = 17;
            iArr[83] = 18;
            iArr[84] = 19;
            iArr[85] = 20;
            iArr[86] = 21;
            iArr[87] = 22;
            iArr[88] = 23;
            iArr[89] = 24;
            iArr[90] = 25;
            iArr[91] = -1;
            iArr[92] = -1;
            iArr[93] = -1;
            iArr[94] = -1;
            iArr[95] = -1;
            iArr[96] = -1;
            iArr[97] = 26;
            iArr[98] = 27;
            iArr[99] = 28;
            iArr[100] = 29;
            iArr[101] = 30;
            iArr[102] = 31;
            iArr[103] = 32;
            iArr[104] = 33;
            iArr[105] = 34;
            iArr[106] = 35;
            iArr[107] = 36;
            iArr[108] = 37;
            iArr[109] = 38;
            iArr[110] = 39;
            iArr[111] = 40;
            iArr[112] = 41;
            iArr[113] = 42;
            iArr[114] = 43;
            iArr[115] = 44;
            iArr[116] = 45;
            iArr[117] = 46;
            iArr[118] = 47;
            iArr[119] = 48;
            iArr[120] = 49;
            iArr[121] = 50;
            iArr[122] = 51;
            iArr[123] = -1;
            iArr[124] = -1;
            iArr[125] = -1;
            iArr[126] = -1;
            iArr[127] = -1;
            iArr[128] = -1;
            iArr[129] = -1;
            iArr[130] = -1;
            iArr[131] = -1;
            iArr[132] = -1;
            iArr[133] = -1;
            iArr[134] = -1;
            iArr[135] = -1;
            iArr[136] = -1;
            iArr[137] = -1;
            iArr[138] = -1;
            iArr[139] = -1;
            iArr[140] = -1;
            iArr[141] = -1;
            iArr[142] = -1;
            iArr[143] = -1;
            iArr[144] = -1;
            iArr[145] = -1;
            iArr[146] = -1;
            iArr[147] = -1;
            iArr[148] = -1;
            iArr[149] = -1;
            iArr[150] = -1;
            iArr[151] = -1;
            iArr[152] = -1;
            iArr[153] = -1;
            iArr[154] = -1;
            iArr[155] = -1;
            iArr[156] = -1;
            iArr[157] = -1;
            iArr[158] = -1;
            iArr[159] = -1;
            iArr[160] = -1;
            iArr[161] = -1;
            iArr[162] = -1;
            iArr[163] = -1;
            iArr[164] = -1;
            iArr[165] = -1;
            iArr[166] = -1;
            iArr[167] = -1;
            iArr[168] = -1;
            iArr[169] = -1;
            iArr[170] = -1;
            iArr[171] = -1;
            iArr[172] = -1;
            iArr[173] = -1;
            iArr[174] = -1;
            iArr[175] = -1;
            iArr[176] = -1;
            iArr[177] = -1;
            iArr[178] = -1;
            iArr[179] = -1;
            iArr[180] = -1;
            iArr[181] = -1;
            iArr[182] = -1;
            iArr[183] = -1;
            iArr[184] = -1;
            iArr[185] = -1;
            iArr[186] = -1;
            iArr[187] = -1;
            iArr[188] = -1;
            iArr[189] = -1;
            iArr[190] = -1;
            iArr[191] = -1;
            iArr[192] = -1;
            iArr[193] = -1;
            iArr[194] = -1;
            iArr[195] = -1;
            iArr[196] = -1;
            iArr[197] = -1;
            iArr[198] = -1;
            iArr[199] = -1;
            iArr[200] = -1;
            iArr[201] = -1;
            iArr[202] = -1;
            iArr[203] = -1;
            iArr[204] = -1;
            iArr[205] = -1;
            iArr[206] = -1;
            iArr[207] = -1;
            iArr[208] = -1;
            iArr[209] = -1;
            iArr[210] = -1;
            iArr[211] = -1;
            iArr[212] = -1;
            iArr[213] = -1;
            iArr[214] = -1;
            iArr[215] = -1;
            iArr[216] = -1;
            iArr[217] = -1;
            iArr[218] = -1;
            iArr[219] = -1;
            iArr[220] = -1;
            iArr[221] = -1;
            iArr[222] = -1;
            iArr[223] = -1;
            iArr[224] = -1;
            iArr[225] = -1;
            iArr[226] = -1;
            iArr[227] = -1;
            iArr[228] = -1;
            iArr[229] = -1;
            iArr[230] = -1;
            iArr[231] = -1;
            iArr[232] = -1;
            iArr[233] = -1;
            iArr[234] = -1;
            iArr[235] = -1;
            iArr[236] = -1;
            iArr[237] = -1;
            iArr[238] = -1;
            iArr[239] = -1;
            iArr[240] = -1;
            iArr[241] = -1;
            iArr[242] = -1;
            iArr[243] = -1;
            iArr[244] = -1;
            iArr[245] = -1;
            iArr[246] = -1;
            iArr[247] = -1;
            iArr[248] = -1;
            iArr[249] = -1;
            iArr[250] = -1;
            iArr[251] = -1;
            iArr[252] = -1;
            iArr[253] = -1;
            iArr[254] = -1;
            iArr[255] = -1;
            c = iArr;
            iArr = new int[256];
            iArr[0] = -1;
            iArr[1] = -1;
            iArr[2] = -1;
            iArr[3] = -1;
            iArr[4] = -1;
            iArr[5] = -1;
            iArr[6] = -1;
            iArr[7] = -1;
            iArr[8] = -1;
            iArr[9] = -1;
            iArr[10] = -1;
            iArr[11] = -1;
            iArr[12] = -1;
            iArr[13] = -1;
            iArr[14] = -1;
            iArr[15] = -1;
            iArr[16] = -1;
            iArr[17] = -1;
            iArr[18] = -1;
            iArr[19] = -1;
            iArr[20] = -1;
            iArr[21] = -1;
            iArr[22] = -1;
            iArr[23] = -1;
            iArr[24] = -1;
            iArr[25] = -1;
            iArr[26] = -1;
            iArr[27] = -1;
            iArr[28] = -1;
            iArr[29] = -1;
            iArr[30] = -1;
            iArr[31] = -1;
            iArr[32] = -1;
            iArr[33] = -1;
            iArr[34] = -1;
            iArr[35] = -1;
            iArr[36] = -1;
            iArr[37] = -1;
            iArr[38] = -1;
            iArr[39] = -1;
            iArr[40] = -1;
            iArr[41] = -1;
            iArr[42] = -1;
            iArr[43] = -1;
            iArr[44] = -1;
            iArr[45] = 62;
            iArr[46] = -1;
            iArr[47] = -1;
            iArr[48] = 52;
            iArr[49] = 53;
            iArr[50] = 54;
            iArr[51] = 55;
            iArr[52] = 56;
            iArr[53] = 57;
            iArr[54] = 58;
            iArr[55] = 59;
            iArr[56] = 60;
            iArr[57] = 61;
            iArr[58] = -1;
            iArr[59] = -1;
            iArr[60] = -1;
            iArr[61] = -2;
            iArr[62] = -1;
            iArr[63] = -1;
            iArr[64] = -1;
            iArr[66] = 1;
            iArr[67] = 2;
            iArr[68] = 3;
            iArr[69] = 4;
            iArr[70] = 5;
            iArr[71] = 6;
            iArr[72] = 7;
            iArr[73] = 8;
            iArr[74] = 9;
            iArr[75] = 10;
            iArr[76] = 11;
            iArr[77] = 12;
            iArr[78] = 13;
            iArr[79] = 14;
            iArr[80] = 15;
            iArr[81] = 16;
            iArr[82] = 17;
            iArr[83] = 18;
            iArr[84] = 19;
            iArr[85] = 20;
            iArr[86] = 21;
            iArr[87] = 22;
            iArr[88] = 23;
            iArr[89] = 24;
            iArr[90] = 25;
            iArr[91] = -1;
            iArr[92] = -1;
            iArr[93] = -1;
            iArr[94] = -1;
            iArr[95] = 63;
            iArr[96] = -1;
            iArr[97] = 26;
            iArr[98] = 27;
            iArr[99] = 28;
            iArr[100] = 29;
            iArr[101] = 30;
            iArr[102] = 31;
            iArr[103] = 32;
            iArr[104] = 33;
            iArr[105] = 34;
            iArr[106] = 35;
            iArr[107] = 36;
            iArr[108] = 37;
            iArr[109] = 38;
            iArr[110] = 39;
            iArr[111] = 40;
            iArr[112] = 41;
            iArr[113] = 42;
            iArr[114] = 43;
            iArr[115] = 44;
            iArr[116] = 45;
            iArr[117] = 46;
            iArr[118] = 47;
            iArr[119] = 48;
            iArr[120] = 49;
            iArr[121] = 50;
            iArr[122] = 51;
            iArr[123] = -1;
            iArr[124] = -1;
            iArr[125] = -1;
            iArr[126] = -1;
            iArr[127] = -1;
            iArr[128] = -1;
            iArr[129] = -1;
            iArr[130] = -1;
            iArr[131] = -1;
            iArr[132] = -1;
            iArr[133] = -1;
            iArr[134] = -1;
            iArr[135] = -1;
            iArr[136] = -1;
            iArr[137] = -1;
            iArr[138] = -1;
            iArr[139] = -1;
            iArr[140] = -1;
            iArr[141] = -1;
            iArr[142] = -1;
            iArr[143] = -1;
            iArr[144] = -1;
            iArr[145] = -1;
            iArr[146] = -1;
            iArr[147] = -1;
            iArr[148] = -1;
            iArr[149] = -1;
            iArr[150] = -1;
            iArr[151] = -1;
            iArr[152] = -1;
            iArr[153] = -1;
            iArr[154] = -1;
            iArr[155] = -1;
            iArr[156] = -1;
            iArr[157] = -1;
            iArr[158] = -1;
            iArr[159] = -1;
            iArr[160] = -1;
            iArr[161] = -1;
            iArr[162] = -1;
            iArr[163] = -1;
            iArr[164] = -1;
            iArr[165] = -1;
            iArr[166] = -1;
            iArr[167] = -1;
            iArr[168] = -1;
            iArr[169] = -1;
            iArr[170] = -1;
            iArr[171] = -1;
            iArr[172] = -1;
            iArr[173] = -1;
            iArr[174] = -1;
            iArr[175] = -1;
            iArr[176] = -1;
            iArr[177] = -1;
            iArr[178] = -1;
            iArr[179] = -1;
            iArr[180] = -1;
            iArr[181] = -1;
            iArr[182] = -1;
            iArr[183] = -1;
            iArr[184] = -1;
            iArr[185] = -1;
            iArr[186] = -1;
            iArr[187] = -1;
            iArr[188] = -1;
            iArr[189] = -1;
            iArr[190] = -1;
            iArr[191] = -1;
            iArr[192] = -1;
            iArr[193] = -1;
            iArr[194] = -1;
            iArr[195] = -1;
            iArr[196] = -1;
            iArr[197] = -1;
            iArr[198] = -1;
            iArr[199] = -1;
            iArr[200] = -1;
            iArr[201] = -1;
            iArr[202] = -1;
            iArr[203] = -1;
            iArr[204] = -1;
            iArr[205] = -1;
            iArr[206] = -1;
            iArr[207] = -1;
            iArr[208] = -1;
            iArr[209] = -1;
            iArr[210] = -1;
            iArr[211] = -1;
            iArr[212] = -1;
            iArr[213] = -1;
            iArr[214] = -1;
            iArr[215] = -1;
            iArr[216] = -1;
            iArr[217] = -1;
            iArr[218] = -1;
            iArr[219] = -1;
            iArr[220] = -1;
            iArr[221] = -1;
            iArr[222] = -1;
            iArr[223] = -1;
            iArr[224] = -1;
            iArr[225] = -1;
            iArr[226] = -1;
            iArr[227] = -1;
            iArr[228] = -1;
            iArr[229] = -1;
            iArr[230] = -1;
            iArr[231] = -1;
            iArr[232] = -1;
            iArr[233] = -1;
            iArr[234] = -1;
            iArr[235] = -1;
            iArr[236] = -1;
            iArr[237] = -1;
            iArr[238] = -1;
            iArr[239] = -1;
            iArr[240] = -1;
            iArr[241] = -1;
            iArr[242] = -1;
            iArr[243] = -1;
            iArr[244] = -1;
            iArr[245] = -1;
            iArr[246] = -1;
            iArr[247] = -1;
            iArr[248] = -1;
            iArr[249] = -1;
            iArr[250] = -1;
            iArr[251] = -1;
            iArr[252] = -1;
            iArr[253] = -1;
            iArr[254] = -1;
            iArr[255] = -1;
            d = iArr;
        }

        public Decoder(int i, byte[] bArr) {
            this.a = bArr;
            this.g = (i & 8) == 0 ? c : d;
            this.e = 0;
            this.f = 0;
        }

        public boolean a(byte[] bArr, int i, int i2, boolean z) {
            if (this.e == 6) {
                return false;
            }
            int i3 = i2 + i;
            int i4 = this.e;
            int i5 = this.f;
            int i6 = 0;
            byte[] bArr2 = this.a;
            int[] iArr = this.g;
            int i7 = i4;
            i4 = i;
            while (i4 < i3) {
                if (i7 == 0) {
                    while (i4 + 4 <= i3) {
                        i5 = (((iArr[bArr[i4] & 255] << 18) | (iArr[bArr[i4 + 1] & 255] << 12)) | (iArr[bArr[i4 + 2] & 255] << 6)) | iArr[bArr[i4 + 3] & 255];
                        if (i5 >= 0) {
                            bArr2[i6 + 2] = (byte) i5;
                            bArr2[i6 + 1] = (byte) (i5 >> 8);
                            bArr2[i6] = (byte) (i5 >> 16);
                            i6 += 3;
                            i4 += 4;
                        } else if (i4 >= i3) {
                            i4 = i5;
                            if (z) {
                                switch (i7) {
                                    case o.MyAlertDialog_myAlertDialogAccentColor:
                                        this.e = 6;
                                        return false;
                                    case o.MyAlertDialog_myAlertDialogButtonDrawable:
                                        i5 = i6 + 1;
                                        bArr2[i6] = (byte) (i4 >> 4);
                                        i6 = i5;
                                        this.e = i7;
                                        this.b = i6;
                                        return true;
                                    case o.MyAlertDialog_MAD_titleStyle:
                                        i5 = i6 + 1;
                                        bArr2[i6] = (byte) (i4 >> 10);
                                        i6 = i5 + 1;
                                        bArr2[i5] = (byte) (i4 >> 2);
                                        this.e = i7;
                                        this.b = i6;
                                        return true;
                                    case o.MyAlertDialog_MAD_buttonBarStyle:
                                        this.e = 6;
                                        return false;
                                    default:
                                        this.e = i7;
                                        this.b = i6;
                                        return true;
                                }
                            } else {
                                this.e = i7;
                                this.f = i4;
                                this.b = i6;
                                return true;
                            }
                        }
                    }
                    if (i4 >= i3) {
                        i4 = i5;
                        if (z) {
                            switch (i7) {
                                case o.MyAlertDialog_myAlertDialogAccentColor:
                                    this.e = 6;
                                    return false;
                                case o.MyAlertDialog_myAlertDialogButtonDrawable:
                                    i5 = i6 + 1;
                                    bArr2[i6] = (byte) (i4 >> 4);
                                    i6 = i5;
                                    this.e = i7;
                                    this.b = i6;
                                    return true;
                                case o.MyAlertDialog_MAD_titleStyle:
                                    i5 = i6 + 1;
                                    bArr2[i6] = (byte) (i4 >> 10);
                                    i6 = i5 + 1;
                                    bArr2[i5] = (byte) (i4 >> 2);
                                    this.e = i7;
                                    this.b = i6;
                                    return true;
                                case o.MyAlertDialog_MAD_buttonBarStyle:
                                    this.e = 6;
                                    return false;
                                default:
                                    this.e = i7;
                                    this.b = i6;
                                    return true;
                            }
                        } else {
                            this.e = i7;
                            this.f = i4;
                            this.b = i6;
                            return true;
                        }
                    }
                }
                i = i4 + 1;
                i4 = iArr[bArr[i4] & 255];
                switch (i7) {
                    case v.DropShadowView_cornerRadius:
                        if (i4 >= 0) {
                            i7++;
                            i5 = i4;
                            i4 = i;
                        } else {
                            if (i4 != -1) {
                                this.e = 6;
                                return false;
                            }
                            i4 = i;
                        }
                        break;
                    case o.MyAlertDialog_myAlertDialogAccentColor:
                        if (i4 >= 0) {
                            i5 = (i5 << 6) | i4;
                            i7++;
                            i4 = i;
                        } else {
                            if (i4 != -1) {
                                this.e = 6;
                                return false;
                            }
                            i4 = i;
                        }
                        break;
                    case o.MyAlertDialog_myAlertDialogButtonDrawable:
                        if (i4 >= 0) {
                            i5 = (i5 << 6) | i4;
                            i7++;
                            i4 = i;
                        } else if (i4 == -2) {
                            i4 = i6 + 1;
                            bArr2[i6] = (byte) (i5 >> 4);
                            i7 = 4;
                            i6 = i4;
                            i4 = i;
                        } else {
                            if (i4 != -1) {
                                this.e = 6;
                                return false;
                            }
                            i4 = i;
                        }
                        break;
                    case o.MyAlertDialog_MAD_titleStyle:
                        if (i4 >= 0) {
                            i5 = (i5 << 6) | i4;
                            bArr2[i6 + 2] = (byte) i5;
                            bArr2[i6 + 1] = (byte) (i5 >> 8);
                            bArr2[i6] = (byte) (i5 >> 16);
                            i6 += 3;
                            i7 = 0;
                            i4 = i;
                        } else if (i4 == -2) {
                            bArr2[i6 + 1] = (byte) (i5 >> 2);
                            bArr2[i6] = (byte) (i5 >> 10);
                            i6 += 2;
                            i7 = 5;
                            i4 = i;
                        } else {
                            if (i4 != -1) {
                                this.e = 6;
                                return false;
                            }
                            i4 = i;
                        }
                        break;
                    case o.MyAlertDialog_MAD_buttonBarStyle:
                        if (i4 == -2) {
                            i7++;
                            i4 = i;
                        } else {
                            if (i4 != -1) {
                                this.e = 6;
                                return false;
                            }
                            i4 = i;
                        }
                        break;
                    case o.MyAlertDialog_MAD_textAppearanceMedium:
                        if (i4 != -1) {
                            this.e = 6;
                            return false;
                        }
                        i4 = i;
                        break;
                    default:
                        i4 = i;
                        break;
                }
            }
            i4 = i5;
            if (z) {
                this.e = i7;
                this.f = i4;
                this.b = i6;
                return true;
            } else {
                switch (i7) {
                    case o.MyAlertDialog_myAlertDialogAccentColor:
                        this.e = 6;
                        return false;
                    case o.MyAlertDialog_myAlertDialogButtonDrawable:
                        i5 = i6 + 1;
                        bArr2[i6] = (byte) (i4 >> 4);
                        i6 = i5;
                        this.e = i7;
                        this.b = i6;
                        return true;
                    case o.MyAlertDialog_MAD_titleStyle:
                        i5 = i6 + 1;
                        bArr2[i6] = (byte) (i4 >> 10);
                        i6 = i5 + 1;
                        bArr2[i5] = (byte) (i4 >> 2);
                        this.e = i7;
                        this.b = i6;
                        return true;
                    case o.MyAlertDialog_MAD_buttonBarStyle:
                        this.e = 6;
                        return false;
                    default:
                        this.e = i7;
                        this.b = i6;
                        return true;
                }
            }
        }
    }

    class Encoder extends Coder {
        static final /* synthetic */ boolean c;
        private static final byte[] d;
        private static final byte[] e;

        static {
            c = !Base64.class.desiredAssertionStatus();
            d = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, (byte) 47};
            e = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 45, (byte) 95};
        }
    }

    static {
        a = !Base64.class.desiredAssertionStatus();
    }

    private Base64() {
    }

    public static byte[] a(String str, int i) {
        return a(str.getBytes(), i);
    }

    public static byte[] a(byte[] bArr, int i) {
        return a(bArr, 0, bArr.length, i);
    }

    public static byte[] a(byte[] bArr, int i, int i2, int i3) {
        Decoder decoder = new Decoder(i3, new byte[((i2 * 3) / 4)]);
        if (!decoder.a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        } else if (decoder.b == decoder.a.length) {
            return decoder.a;
        } else {
            byte[] bArr2 = new byte[decoder.b];
            System.arraycopy(decoder.a, 0, bArr2, 0, decoder.b);
            return bArr2;
        }
    }
}