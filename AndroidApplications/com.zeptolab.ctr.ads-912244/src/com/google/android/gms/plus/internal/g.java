package com.google.android.gms.plus.internal;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.er;

public final class g {
    private static Context PB;
    private static c Rl;

    public static class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    private static c D(Context context) {
        er.f(context);
        if (Rl == null) {
            if (PB == null) {
                PB = GooglePlayServicesUtil.getRemoteContext(context);
                if (PB == null) {
                    throw new a("Could not get remote context.");
                }
            }
            try {
                Rl = com.google.android.gms.plus.internal.c.a.az((IBinder) PB.getClassLoader().loadClass("com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl").newInstance());
            } catch (ClassNotFoundException e) {
                throw new a("Could not load creator class.");
            } catch (InstantiationException e2) {
                throw new a("Could not instantiate creator.");
            } catch (IllegalAccessException e3) {
                throw new a("Could not access creator.");
            }
        }
        return Rl;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.view.View a(android.content.Context r6, int r7, int r8, java.lang.String r9, int r10) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.plus.internal.g.a(android.content.Context, int, int, java.lang.String, int):android.view.View");
        /*
        if (r9 != 0) goto L_0x000f;
    L_0x0002:
        r0 = new java.lang.NullPointerException;	 Catch:{ Exception -> 0x0008 }
        r0.<init>();	 Catch:{ Exception -> 0x0008 }
        throw r0;	 Catch:{ Exception -> 0x0008 }
    L_0x0008:
        r0 = move-exception;
        r0 = new com.google.android.gms.plus.PlusOneDummyView;
        r0.<init>(r6, r7);
    L_0x000e:
        return r0;
    L_0x000f:
        r0 = D(r6);	 Catch:{ Exception -> 0x0008 }
        r1 = com.google.android.gms.dynamic.c.h(r6);	 Catch:{ Exception -> 0x0008 }
        r2 = r7;
        r3 = r8;
        r4 = r9;
        r5 = r10;
        r0 = r0.a(r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x0008 }
        r0 = com.google.android.gms.dynamic.c.b(r0);	 Catch:{ Exception -> 0x0008 }
        r0 = (android.view.View) r0;	 Catch:{ Exception -> 0x0008 }
        goto L_0x000e;
        */
    }
}