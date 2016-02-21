package com.inmobi.commons.thirdparty;

import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.UnsupportedEncodingException;

public class Base64 {
    public static final int CRLF = 4;
    public static final int DEFAULT = 0;
    public static final int NO_CLOSE = 16;
    public static final int NO_PADDING = 1;
    public static final int NO_WRAP = 2;
    public static final int URL_SAFE = 8;
    static final /* synthetic */ boolean a;

    static abstract class c {
        public byte[] f;
        public int g;

        c() {
        }
    }

    static class a extends c {
        static final /* synthetic */ boolean e;
        private static final byte[] h;
        private static final byte[] i;
        int a;
        public final boolean b;
        public final boolean c;
        public final boolean d;
        private final byte[] j;
        private int k;
        private final byte[] l;

        static {
            e = !Base64.class.desiredAssertionStatus();
            h = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, (byte) 47};
            i = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 45, (byte) 95};
        }

        public a(int i, byte[] bArr) {
            boolean z = true;
            this.f = bArr;
            this.b = (i & 1) == 0;
            this.c = (i & 2) == 0;
            if ((i & 4) == 0) {
                z = false;
            }
            this.d = z;
            this.l = (i & 8) == 0 ? h : i;
            this.j = new byte[2];
            this.a = 0;
            this.k = this.c ? ApiEventType.API_MRAID_GET_DEFAULT_POSITION : -1;
        }

        public boolean a_(byte[] r12, int r13, int r14, boolean r15) {
            throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.thirdparty.Base64.a.a(byte[], int, int, boolean):boolean");
            /* JADX: method processing error */
/*
            Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:42)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:62)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:29)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
            /*
            r11 = this;
            r6 = r11.l;
            r7 = r11.f;
            r1 = 0;
            r0 = r11.k;
            r8 = r14 + r13;
            r2 = -1;
            r3 = r11.a;
            switch(r3) {
                case 0: goto L_0x00a7;
                case 1: goto L_0x00aa;
                case 2: goto L_0x00cd;
                default: goto L_0x000f;
            };
        L_0x000f:
            r3 = r13;
        L_0x0010:
            r4 = -1;
            if (r2 == r4) goto L_0x023b;
        L_0x0013:
            r4 = 1;
            r5 = r2 >> 18;
            r5 = r5 & 63;
            r5 = r6[r5];
            r7[r1] = r5;
            r1 = 2;
            r5 = r2 >> 12;
            r5 = r5 & 63;
            r5 = r6[r5];
            r7[r4] = r5;
            r4 = 3;
            r5 = r2 >> 6;
            r5 = r5 & 63;
            r5 = r6[r5];
            r7[r1] = r5;
            r1 = 4;
            r2 = r2 & 63;
            r2 = r6[r2];
            r7[r4] = r2;
            r0 = r0 + -1;
            if (r0 != 0) goto L_0x023b;
        L_0x0039:
            r0 = r11.d;
            if (r0 == 0) goto L_0x023f;
        L_0x003d:
            r0 = 5;
            r2 = 13;
            r7[r1] = r2;
        L_0x0042:
            r1 = r0 + 1;
            r2 = 10;
            r7[r0] = r2;
            r0 = 19;
            r5 = r0;
            r4 = r1;
        L_0x004c:
            r0 = r3 + 3;
            if (r0 > r8) goto L_0x00f0;
        L_0x0050:
            r0 = r12[r3];
            r0 = r0 & 255;
            r0 = r0 << 16;
            r1 = r3 + 1;
            r1 = r12[r1];
            r1 = r1 & 255;
            r1 = r1 << 8;
            r0 = r0 | r1;
            r1 = r3 + 2;
            r1 = r12[r1];
            r1 = r1 & 255;
            r0 = r0 | r1;
            r1 = r0 >> 18;
            r1 = r1 & 63;
            r1 = r6[r1];
            r7[r4] = r1;
            r1 = r4 + 1;
            r2 = r0 >> 12;
            r2 = r2 & 63;
            r2 = r6[r2];
            r7[r1] = r2;
            r1 = r4 + 2;
            r2 = r0 >> 6;
            r2 = r2 & 63;
            r2 = r6[r2];
            r7[r1] = r2;
            r1 = r4 + 3;
            r0 = r0 & 63;
            r0 = r6[r0];
            r7[r1] = r0;
            r3 = r3 + 3;
            r1 = r4 + 4;
            r0 = r5 + -1;
            if (r0 != 0) goto L_0x023b;
        L_0x0092:
            r0 = r11.d;
            if (r0 == 0) goto L_0x0238;
        L_0x0096:
            r0 = r1 + 1;
            r2 = 13;
            r7[r1] = r2;
        L_0x009c:
            r1 = r0 + 1;
            r2 = 10;
            r7[r0] = r2;
            r0 = 19;
            r5 = r0;
            r4 = r1;
            goto L_0x004c;
        L_0x00a7:
            r3 = r13;
            goto L_0x0010;
        L_0x00aa:
            r3 = r13 + 2;
            if (r3 > r8) goto L_0x000f;
        L_0x00ae:
            r2 = r11.j;
            r3 = 0;
            r2 = r2[r3];
            r2 = r2 & 255;
            r2 = r2 << 16;
            r3 = r13 + 1;
            r4 = r12[r13];
            r4 = r4 & 255;
            r4 = r4 << 8;
            r2 = r2 | r4;
            r13 = r3 + 1;
            r3 = r12[r3];
            r3 = r3 & 255;
            r2 = r2 | r3;
            r3 = 0;
            r11.a = r3;
            r3 = r13;
            goto L_0x0010;
        L_0x00cd:
            r3 = r13 + 1;
            if (r3 > r8) goto L_0x000f;
        L_0x00d1:
            r2 = r11.j;
            r3 = 0;
            r2 = r2[r3];
            r2 = r2 & 255;
            r2 = r2 << 16;
            r3 = r11.j;
            r4 = 1;
            r3 = r3[r4];
            r3 = r3 & 255;
            r3 = r3 << 8;
            r2 = r2 | r3;
            r3 = r13 + 1;
            r4 = r12[r13];
            r4 = r4 & 255;
            r2 = r2 | r4;
            r4 = 0;
            r11.a = r4;
            goto L_0x0010;
        L_0x00f0:
            if (r15 == 0) goto L_0x01fe;
        L_0x00f2:
            r0 = r11.a;
            r0 = r3 - r0;
            r1 = r8 + -1;
            if (r0 != r1) goto L_0x015e;
        L_0x00fa:
            r2 = 0;
            r0 = r11.a;
            if (r0 <= 0) goto L_0x0156;
        L_0x00ff:
            r0 = r11.j;
            r1 = 1;
            r0 = r0[r2];
            r2 = r3;
        L_0x0105:
            r0 = r0 & 255;
            r3 = r0 << 4;
            r0 = r11.a;
            r0 = r0 - r1;
            r11.a = r0;
            r1 = r4 + 1;
            r0 = r3 >> 6;
            r0 = r0 & 63;
            r0 = r6[r0];
            r7[r4] = r0;
            r0 = r1 + 1;
            r3 = r3 & 63;
            r3 = r6[r3];
            r7[r1] = r3;
            r1 = r11.b;
            if (r1 == 0) goto L_0x0130;
        L_0x0124:
            r1 = r0 + 1;
            r3 = 61;
            r7[r0] = r3;
            r0 = r1 + 1;
            r3 = 61;
            r7[r1] = r3;
        L_0x0130:
            r1 = r11.c;
            if (r1 == 0) goto L_0x0146;
        L_0x0134:
            r1 = r11.d;
            if (r1 == 0) goto L_0x013f;
        L_0x0138:
            r1 = r0 + 1;
            r3 = 13;
            r7[r0] = r3;
            r0 = r1;
        L_0x013f:
            r1 = r0 + 1;
            r3 = 10;
            r7[r0] = r3;
            r0 = r1;
        L_0x0146:
            r3 = r2;
            r4 = r0;
        L_0x0148:
            r0 = e;
            if (r0 != 0) goto L_0x01f2;
        L_0x014c:
            r0 = r11.a;
            if (r0 == 0) goto L_0x01f2;
        L_0x0150:
            r0 = new java.lang.AssertionError;
            r0.<init>();
            throw r0;
        L_0x0156:
            r1 = r3 + 1;
            r0 = r12[r3];
            r10 = r2;
            r2 = r1;
            r1 = r10;
            goto L_0x0105;
        L_0x015e:
            r0 = r11.a;
            r0 = r3 - r0;
            r1 = r8 + -2;
            if (r0 != r1) goto L_0x01d6;
        L_0x0166:
            r2 = 0;
            r0 = r11.a;
            r1 = 1;
            if (r0 <= r1) goto L_0x01c9;
        L_0x016c:
            r0 = r11.j;
            r1 = 1;
            r0 = r0[r2];
        L_0x0171:
            r0 = r0 & 255;
            r9 = r0 << 10;
            r0 = r11.a;
            if (r0 <= 0) goto L_0x01d0;
        L_0x0179:
            r0 = r11.j;
            r2 = r1 + 1;
            r0 = r0[r1];
            r1 = r2;
        L_0x0180:
            r0 = r0 & 255;
            r0 = r0 << 2;
            r0 = r0 | r9;
            r2 = r11.a;
            r1 = r2 - r1;
            r11.a = r1;
            r1 = r4 + 1;
            r2 = r0 >> 12;
            r2 = r2 & 63;
            r2 = r6[r2];
            r7[r4] = r2;
            r2 = r1 + 1;
            r4 = r0 >> 6;
            r4 = r4 & 63;
            r4 = r6[r4];
            r7[r1] = r4;
            r1 = r2 + 1;
            r0 = r0 & 63;
            r0 = r6[r0];
            r7[r2] = r0;
            r0 = r11.b;
            if (r0 == 0) goto L_0x0235;
        L_0x01ab:
            r0 = r1 + 1;
            r2 = 61;
            r7[r1] = r2;
        L_0x01b1:
            r1 = r11.c;
            if (r1 == 0) goto L_0x01c7;
        L_0x01b5:
            r1 = r11.d;
            if (r1 == 0) goto L_0x01c0;
        L_0x01b9:
            r1 = r0 + 1;
            r2 = 13;
            r7[r0] = r2;
            r0 = r1;
        L_0x01c0:
            r1 = r0 + 1;
            r2 = 10;
            r7[r0] = r2;
            r0 = r1;
        L_0x01c7:
            r4 = r0;
            goto L_0x0148;
        L_0x01c9:
            r1 = r3 + 1;
            r0 = r12[r3];
            r3 = r1;
            r1 = r2;
            goto L_0x0171;
        L_0x01d0:
            r2 = r3 + 1;
            r0 = r12[r3];
            r3 = r2;
            goto L_0x0180;
        L_0x01d6:
            r0 = r11.c;
            if (r0 == 0) goto L_0x0148;
        L_0x01da:
            if (r4 <= 0) goto L_0x0148;
        L_0x01dc:
            r0 = 19;
            if (r5 == r0) goto L_0x0148;
        L_0x01e0:
            r0 = r11.d;
            if (r0 == 0) goto L_0x0233;
        L_0x01e4:
            r0 = r4 + 1;
            r1 = 13;
            r7[r4] = r1;
        L_0x01ea:
            r4 = r0 + 1;
            r1 = 10;
            r7[r0] = r1;
            goto L_0x0148;
        L_0x01f2:
            r0 = e;
            if (r0 != 0) goto L_0x020e;
        L_0x01f6:
            if (r3 == r8) goto L_0x020e;
        L_0x01f8:
            r0 = new java.lang.AssertionError;
            r0.<init>();
            throw r0;
        L_0x01fe:
            r0 = r8 + -1;
            if (r3 != r0) goto L_0x0214;
        L_0x0202:
            r0 = r11.j;
            r1 = r11.a;
            r2 = r1 + 1;
            r11.a = r2;
            r2 = r12[r3];
            r0[r1] = r2;
        L_0x020e:
            r11.g = r4;
            r11.k = r5;
            r0 = 1;
            return r0;
        L_0x0214:
            r0 = r8 + -2;
            if (r3 != r0) goto L_0x020e;
        L_0x0218:
            r0 = r11.j;
            r1 = r11.a;
            r2 = r1 + 1;
            r11.a = r2;
            r2 = r12[r3];
            r0[r1] = r2;
            r0 = r11.j;
            r1 = r11.a;
            r2 = r1 + 1;
            r11.a = r2;
            r2 = r3 + 1;
            r2 = r12[r2];
            r0[r1] = r2;
            goto L_0x020e;
        L_0x0233:
            r0 = r4;
            goto L_0x01ea;
        L_0x0235:
            r0 = r1;
            goto L_0x01b1;
        L_0x0238:
            r0 = r1;
            goto L_0x009c;
        L_0x023b:
            r5 = r0;
            r4 = r1;
            goto L_0x004c;
        L_0x023f:
            r0 = r1;
            goto L_0x0042;
            */
        }
    }

    static class b extends c {
        private static final int[] a;
        private static final int[] b;
        private int c;
        private int d;
        private final int[] e;

        static {
            a = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
            b = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        }

        public b(int i, byte[] bArr) {
            this.f = bArr;
            this.e = (i & 8) == 0 ? a : b;
            this.c = 0;
            this.d = 0;
        }

        public boolean a(byte[] bArr, int i, int i2, boolean z) {
            if (this.c == 6) {
                return false;
            }
            int i3 = i2 + i;
            int i4 = this.c;
            int i5 = this.d;
            int i6 = DEFAULT;
            byte[] bArr2 = this.f;
            int[] iArr = this.e;
            int i7 = i;
            while (i7 < i3) {
                if (i4 == 0) {
                    while (i7 + 4 <= i3) {
                        i5 = (((iArr[bArr[i7] & 255] << 18) | (iArr[bArr[i7 + 1] & 255] << 12)) | (iArr[bArr[i7 + 2] & 255] << 6)) | iArr[bArr[i7 + 3] & 255];
                        if (i5 >= 0) {
                            bArr2[i6 + 2] = (byte) i5;
                            bArr2[i6 + 1] = (byte) (i5 >> 8);
                            bArr2[i6] = (byte) (i5 >> 16);
                            i6 += 3;
                            i7 += 4;
                        } else if (i7 >= i3) {
                            i7 = i5;
                            if (z) {
                                switch (i4) {
                                    case NO_PADDING:
                                        this.c = 6;
                                        return false;
                                    case NO_WRAP:
                                        i5 = i6 + 1;
                                        bArr2[i6] = (byte) (i7 >> 4);
                                        i6 = i5;
                                        this.c = i4;
                                        this.g = i6;
                                        return true;
                                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                        i5 = i6 + 1;
                                        bArr2[i6] = (byte) (i7 >> 10);
                                        i6 = i5 + 1;
                                        bArr2[i5] = (byte) (i7 >> 2);
                                        this.c = i4;
                                        this.g = i6;
                                        return true;
                                    case CRLF:
                                        this.c = 6;
                                        return false;
                                    default:
                                        this.c = i4;
                                        this.g = i6;
                                        return true;
                                }
                            } else {
                                this.c = i4;
                                this.d = i7;
                                this.g = i6;
                                return true;
                            }
                        }
                    }
                    if (i7 >= i3) {
                        i7 = i5;
                        if (z) {
                            switch (i4) {
                                case NO_PADDING:
                                    this.c = 6;
                                    return false;
                                case NO_WRAP:
                                    i5 = i6 + 1;
                                    bArr2[i6] = (byte) (i7 >> 4);
                                    i6 = i5;
                                    this.c = i4;
                                    this.g = i6;
                                    return true;
                                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                    i5 = i6 + 1;
                                    bArr2[i6] = (byte) (i7 >> 10);
                                    i6 = i5 + 1;
                                    bArr2[i5] = (byte) (i7 >> 2);
                                    this.c = i4;
                                    this.g = i6;
                                    return true;
                                case CRLF:
                                    this.c = 6;
                                    return false;
                                default:
                                    this.c = i4;
                                    this.g = i6;
                                    return true;
                            }
                        } else {
                            this.c = i4;
                            this.d = i7;
                            this.g = i6;
                            return true;
                        }
                    }
                }
                i = i7 + 1;
                i7 = iArr[bArr[i7] & 255];
                int i8;
                switch (i4) {
                    case DEFAULT:
                        if (i7 >= 0) {
                            i8 = i7;
                            i7 = i4 + 1;
                            i5 = i8;
                        } else {
                            if (i7 != -1) {
                                this.c = 6;
                                return false;
                            }
                            i7 = i4;
                        }
                        break;
                    case NO_PADDING:
                        if (i7 >= 0) {
                            i5 = (i5 << 6) | i7;
                            i7 = i4 + 1;
                        } else {
                            if (i7 != -1) {
                                this.c = 6;
                                return false;
                            }
                            i7 = i4;
                        }
                        break;
                    case NO_WRAP:
                        if (i7 >= 0) {
                            i5 = (i5 << 6) | i7;
                            i7 = i4 + 1;
                        } else if (i7 == -2) {
                            i7 = i6 + 1;
                            bArr2[i6] = (byte) (i5 >> 4);
                            i8 = i7;
                            i7 = 4;
                            i6 = i8;
                        } else {
                            if (i7 != -1) {
                                this.c = 6;
                                return false;
                            }
                            i7 = i4;
                        }
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        if (i7 >= 0) {
                            i5 = (i5 << 6) | i7;
                            bArr2[i6 + 2] = (byte) i5;
                            bArr2[i6 + 1] = (byte) (i5 >> 8);
                            bArr2[i6] = (byte) (i5 >> 16);
                            i6 += 3;
                            i7 = DEFAULT;
                        } else if (i7 == -2) {
                            bArr2[i6 + 1] = (byte) (i5 >> 2);
                            bArr2[i6] = (byte) (i5 >> 10);
                            i6 += 2;
                            i7 = IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
                        } else {
                            if (i7 != -1) {
                                this.c = 6;
                                return false;
                            }
                            i7 = i4;
                        }
                        break;
                    case CRLF:
                        if (i7 == -2) {
                            i7 = i4 + 1;
                        } else {
                            if (i7 != -1) {
                                this.c = 6;
                                return false;
                            }
                            i7 = i4;
                        }
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                        if (i7 != -1) {
                            this.c = 6;
                            return false;
                        }
                        i7 = i4;
                        break;
                    default:
                        i7 = i4;
                        break;
                }
                i4 = i7;
                i7 = i;
            }
            i7 = i5;
            if (z) {
                this.c = i4;
                this.d = i7;
                this.g = i6;
                return true;
            } else {
                switch (i4) {
                    case NO_PADDING:
                        this.c = 6;
                        return false;
                    case NO_WRAP:
                        i5 = i6 + 1;
                        bArr2[i6] = (byte) (i7 >> 4);
                        i6 = i5;
                        this.c = i4;
                        this.g = i6;
                        return true;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        i5 = i6 + 1;
                        bArr2[i6] = (byte) (i7 >> 10);
                        i6 = i5 + 1;
                        bArr2[i5] = (byte) (i7 >> 2);
                        this.c = i4;
                        this.g = i6;
                        return true;
                    case CRLF:
                        this.c = 6;
                        return false;
                    default:
                        this.c = i4;
                        this.g = i6;
                        return true;
                }
            }
        }
    }

    static {
        a = !Base64.class.desiredAssertionStatus();
    }

    protected Base64() {
    }

    public static byte[] decode(String str, int i) {
        return decode(str.getBytes(), i);
    }

    public static byte[] decode(byte[] bArr, int i) {
        return decode(bArr, DEFAULT, bArr.length, i);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) {
        b bVar = new b(i3, new byte[((i2 * 3) / 4)]);
        if (!bVar.a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        } else if (bVar.g == bVar.f.length) {
            return bVar.f;
        } else {
            Object obj = new Object[bVar.g];
            System.arraycopy(bVar.f, DEFAULT, obj, DEFAULT, bVar.g);
            return obj;
        }
    }

    public static byte[] encode(byte[] bArr, int i) {
        return encode(bArr, DEFAULT, bArr.length, i);
    }

    public static byte[] encode(byte[] bArr, int i, int i2, int i3) {
        a aVar = new a(i3, null);
        int i4 = (i2 / 3) * 4;
        if (!aVar.b) {
            switch (i2 % 3) {
                case DEFAULT:
                    break;
                case NO_PADDING:
                    i4 += 2;
                    break;
                case NO_WRAP:
                    i4 += 3;
                    break;
                default:
                    break;
            }
        } else if (i2 % 3 > 0) {
            i4 += 4;
        }
        if (aVar.c && i2 > 0) {
            i4 += (aVar.d ? NO_WRAP : 1) * (((i2 - 1) / 57) + 1);
        }
        aVar.f = new byte[i4];
        aVar.a(bArr, i, i2, true);
        if (a || aVar.g == i4) {
            return aVar.f;
        }
        throw new AssertionError();
    }

    public static String encodeToString(byte[] bArr, int i) {
        try {
            return new String(encode(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static String encodeToString(byte[] bArr, int i, int i2, int i3) {
        try {
            return new String(encode(bArr, i, i2, i3), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}