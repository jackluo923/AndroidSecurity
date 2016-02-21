package com.IQzone.postitial.obfuscated;

import android.media.MediaPlayer.OnPreparedListener;

final class qg implements OnPreparedListener {
    private /* synthetic */ qe a;

    qg(qe qeVar) {
        this.a = qeVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onPrepared(android.media.MediaPlayer r11) {
        throw new UnsupportedOperationException("Method not decompiled: com.IQzone.postitial.obfuscated.qg.onPrepared(android.media.MediaPlayer):void");
        /*
        r10 = this;
        r9 = 3;
        r3 = 2;
        r2 = 1;
        r1 = 0;
        r0 = r10.a;
        r0.d = r3;
        r0 = 0;
        r3 = android.media.MediaPlayer.class;
        r4 = "getMetadata";
        r5 = 2;
        r5 = new java.lang.Class[r5];	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r6 = 0;
        r7 = java.lang.Boolean.TYPE;	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r5[r6] = r7;	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r6 = 1;
        r7 = java.lang.Boolean.TYPE;	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r5[r6] = r7;	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r3 = r3.getMethod(r4, r5);	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        if (r3 == 0) goto L_0x01a8;
    L_0x0021:
        r4 = 2;
        r4 = new java.lang.Object[r4];	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r5 = 0;
        r6 = 0;
        r6 = java.lang.Boolean.valueOf(r6);	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r4[r5] = r6;	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r5 = 1;
        r6 = 0;
        r6 = java.lang.Boolean.valueOf(r6);	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r4[r5] = r6;	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r0 = r3.invoke(r11, r4);	 Catch:{ SecurityException -> 0x01ac, NoSuchMethodException -> 0x01b3, IllegalArgumentException -> 0x01ba, IllegalAccessException -> 0x01c1, InvocationTargetException -> 0x01c8 }
        r3 = r0;
    L_0x0039:
        if (r3 == 0) goto L_0x01da;
    L_0x003b:
        r0 = r3.getClass();	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r4 = "has";
        r5 = 1;
        r5 = new java.lang.Class[r5];	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r6 = 0;
        r7 = java.lang.Integer.TYPE;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r5[r6] = r7;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r4 = r0.getMethod(r4, r5);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r3.getClass();	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r5 = "getBoolean";
        r6 = 1;
        r6 = new java.lang.Class[r6];	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r7 = 0;
        r8 = java.lang.Integer.TYPE;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r6[r7] = r8;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r5 = r0.getMethod(r5, r6);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r6 = r10.a;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r7 = 0;
        r8 = 29;
        r8 = java.lang.Integer.valueOf(r8);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0[r7] = r8;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r4.invoke(r3, r0);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = (java.lang.Boolean) r0;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r0.booleanValue();	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        if (r0 == 0) goto L_0x0091;
    L_0x0079:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r7 = 0;
        r8 = 29;
        r8 = java.lang.Integer.valueOf(r8);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0[r7] = r8;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r5.invoke(r3, r0);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = (java.lang.Boolean) r0;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r0.booleanValue();	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        if (r0 == 0) goto L_0x01d1;
    L_0x0091:
        r0 = r2;
    L_0x0092:
        r6.q = r0;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r6 = r10.a;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r7 = 0;
        r8 = 30;
        r8 = java.lang.Integer.valueOf(r8);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0[r7] = r8;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r4.invoke(r3, r0);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = (java.lang.Boolean) r0;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r0.booleanValue();	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        if (r0 == 0) goto L_0x00c7;
    L_0x00af:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r7 = 0;
        r8 = 30;
        r8 = java.lang.Integer.valueOf(r8);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0[r7] = r8;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r5.invoke(r3, r0);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = (java.lang.Boolean) r0;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r0.booleanValue();	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        if (r0 == 0) goto L_0x01d4;
    L_0x00c7:
        r0 = r2;
    L_0x00c8:
        r6.r = r0;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r6 = r10.a;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r7 = 0;
        r8 = 31;
        r8 = java.lang.Integer.valueOf(r8);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0[r7] = r8;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r4.invoke(r3, r0);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = (java.lang.Boolean) r0;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r0.booleanValue();	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        if (r0 == 0) goto L_0x00fd;
    L_0x00e5:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r4 = 0;
        r7 = 31;
        r7 = java.lang.Integer.valueOf(r7);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0[r4] = r7;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r5.invoke(r3, r0);	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = (java.lang.Boolean) r0;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0 = r0.booleanValue();	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        if (r0 == 0) goto L_0x01d7;
    L_0x00fd:
        r0 = r2;
    L_0x00fe:
        r6.s = r0;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
    L_0x0101:
        r0 = r10.a;
        r0 = r0.m;
        if (r0 == 0) goto L_0x0118;
    L_0x0109:
        r0 = r10.a;
        r0 = r0.m;
        r3 = r10.a;
        r3 = r3.g;
        r0.onPrepared(r3);
    L_0x0118:
        r0 = r10.a;
        r0 = null;
        if (r0 == 0) goto L_0x0129;
    L_0x0120:
        r0 = r10.a;
        r0 = null;
        r0.setEnabled(r2);
    L_0x0129:
        r0 = r10.a;
        r2 = r11.getVideoWidth();
        r0.h = r2;
        r0 = r10.a;
        r2 = r11.getVideoHeight();
        r0.i = r2;
        r0 = r10.a;
        r0 = r0.p;
        if (r0 == 0) goto L_0x0148;
    L_0x0143:
        r2 = r10.a;
        r2.seekTo(r0);
    L_0x0148:
        r2 = r10.a;
        r2 = r2.h;
        if (r2 == 0) goto L_0x0233;
    L_0x0150:
        r2 = r10.a;
        r2 = r2.i;
        if (r2 == 0) goto L_0x0233;
    L_0x0158:
        r2 = r10.a;
        r2 = r2.getHolder();
        r3 = r10.a;
        r3 = r3.h;
        r4 = r10.a;
        r4 = r4.i;
        r2.setFixedSize(r3, r4);
        r2 = r10.a;
        r2 = r2.j;
        r3 = r10.a;
        r3 = r3.h;
        if (r2 != r3) goto L_0x01a7;
    L_0x017b:
        r2 = r10.a;
        r2 = r2.k;
        r3 = r10.a;
        r3 = r3.i;
        if (r2 != r3) goto L_0x01a7;
    L_0x0189:
        r2 = r10.a;
        r2 = r2.e;
        if (r2 != r9) goto L_0x020e;
    L_0x0191:
        r0 = r10.a;
        r0.start();
        r0 = r10.a;
        r0 = null;
        if (r0 == 0) goto L_0x01a7;
    L_0x019e:
        r0 = r10.a;
        r0 = null;
        r0.show();
    L_0x01a7:
        return;
    L_0x01a8:
        r0 = 0;
        r3 = r0;
        goto L_0x0039;
    L_0x01ac:
        r3 = move-exception;
        com.IQzone.postitial.obfuscated.qe.a;	 Catch:{ all -> 0x01cf }
        r3 = r0;
        goto L_0x0039;
    L_0x01b3:
        r3 = move-exception;
        com.IQzone.postitial.obfuscated.qe.a;	 Catch:{ all -> 0x01cf }
        r3 = r0;
        goto L_0x0039;
    L_0x01ba:
        r3 = move-exception;
        com.IQzone.postitial.obfuscated.qe.a;	 Catch:{ all -> 0x01cf }
        r3 = r0;
        goto L_0x0039;
    L_0x01c1:
        r3 = move-exception;
        com.IQzone.postitial.obfuscated.qe.a;	 Catch:{ all -> 0x01cf }
        r3 = r0;
        goto L_0x0039;
    L_0x01c8:
        r3 = move-exception;
        com.IQzone.postitial.obfuscated.qe.a;	 Catch:{ all -> 0x01cf }
        r3 = r0;
        goto L_0x0039;
    L_0x01cf:
        r0 = move-exception;
        throw r0;
    L_0x01d1:
        r0 = r1;
        goto L_0x0092;
    L_0x01d4:
        r0 = r1;
        goto L_0x00c8;
    L_0x01d7:
        r0 = r1;
        goto L_0x00fe;
    L_0x01da:
        r0 = r10.a;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r3 = r10.a;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r4 = r10.a;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r5 = 1;
        r4 = r4.s = r5;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r3 = r3.r = r4;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        r0.q = r3;	 Catch:{ IllegalArgumentException -> 0x01ee, IllegalAccessException -> 0x01f6, InvocationTargetException -> 0x01fc, SecurityException -> 0x0202, NoSuchMethodException -> 0x0208 }
        goto L_0x0101;
    L_0x01ee:
        r0 = move-exception;
        com.IQzone.postitial.obfuscated.qe.a;	 Catch:{ all -> 0x01f4 }
        goto L_0x0101;
    L_0x01f4:
        r0 = move-exception;
        throw r0;
    L_0x01f6:
        r0 = move-exception;
        com.IQzone.postitial.obfuscated.qe.a;	 Catch:{ all -> 0x01f4 }
        goto L_0x0101;
    L_0x01fc:
        r0 = move-exception;
        com.IQzone.postitial.obfuscated.qe.a;	 Catch:{ all -> 0x01f4 }
        goto L_0x0101;
    L_0x0202:
        r0 = move-exception;
        com.IQzone.postitial.obfuscated.qe.a;	 Catch:{ all -> 0x01f4 }
        goto L_0x0101;
    L_0x0208:
        r0 = move-exception;
        com.IQzone.postitial.obfuscated.qe.a;	 Catch:{ all -> 0x01f4 }
        goto L_0x0101;
    L_0x020e:
        r2 = r10.a;
        r2 = r2.isPlaying();
        if (r2 != 0) goto L_0x01a7;
    L_0x0216:
        if (r0 != 0) goto L_0x0220;
    L_0x0218:
        r0 = r10.a;
        r0 = r0.getCurrentPosition();
        if (r0 <= 0) goto L_0x01a7;
    L_0x0220:
        r0 = r10.a;
        r0 = null;
        if (r0 == 0) goto L_0x01a7;
    L_0x0228:
        r0 = r10.a;
        r0 = null;
        r0.show(r1);
        goto L_0x01a7;
    L_0x0233:
        r0 = r10.a;
        r0 = r0.e;
        if (r0 != r9) goto L_0x01a7;
    L_0x023b:
        r0 = r10.a;
        r0.start();
        goto L_0x01a7;
        */
    }
}