package com.admob.android.ads;

import android.util.Log;
import com.tic_mobile.android.connectfour.Config;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

// compiled from: AdMobURLConnector.java
final class i extends r {
    private HttpURLConnection m;
    private URL n;

    public i(String str, String str2, String str3, h hVar, int i, Map<String, String> map, String str4) {
        Object obj = null;
        super(str2, str3, hVar, i, map, str4);
        try {
            this.n = new URL(str);
            this.i = this.n;
        } catch (MalformedURLException e) {
            Exception exception = e;
            this.n = obj;
            this.c = exception;
        }
        this.m = obj;
        this.e = 0;
    }

    private void h() {
        if (this.m != null) {
            this.m.disconnect();
            this.m = null;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a() {
        throw new UnsupportedOperationException("Method not decompiled: com.admob.android.ads.i.a():boolean");
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Try/catch wrap count limit reached in com.admob.android.ads.i.a():boolean
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:52)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:40)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
        /*
        r13 = this;
        r11 = 2;
        r10 = 1;
        r9 = 0;
        r8 = "AdMobSDK";
        r1 = r13.n;
        if (r1 != 0) goto L_0x0028;
    L_0x0009:
        r1 = r13.h;
        if (r1 == 0) goto L_0x0019;
    L_0x000d:
        r1 = r13.h;
        r2 = new java.lang.Exception;
        r3 = "url was null";
        r2.<init>(r3);
        r1.a(r13, r2);
    L_0x0019:
        r1 = r9;
    L_0x001a:
        if (r1 != 0) goto L_0x0027;
    L_0x001c:
        r2 = r13.h;
        if (r2 == 0) goto L_0x0027;
    L_0x0020:
        r2 = r13.h;
        r3 = r13.c;
        r2.a(r13, r3);
    L_0x0027:
        return r1;
    L_0x0028:
        java.net.HttpURLConnection.setFollowRedirects(r10);
        r3 = r9;
    L_0x002c:
        r1 = r13.e;
        r2 = r13.f;
        if (r1 >= r2) goto L_0x01ea;
    L_0x0032:
        if (r3 != 0) goto L_0x01ea;
    L_0x0034:
        r1 = "AdMobSDK";
        r1 = android.util.Log.isLoggable(r8, r11);
        if (r1 == 0) goto L_0x0062;
    L_0x003c:
        r1 = "AdMobSDK";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "attempt ";
        r1 = r1.append(r2);
        r2 = r13.e;
        r1 = r1.append(r2);
        r2 = " to connect to url ";
        r1 = r1.append(r2);
        r2 = r13.n;
        r1 = r1.append(r2);
        r1 = r1.toString();
        android.util.Log.v(r8, r1);
    L_0x0062:
        r4 = 0;
        r13.h();	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r13.n;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r1.openConnection();	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = (java.net.HttpURLConnection) r1;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r13.m = r1;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        if (r1 == 0) goto L_0x01e7;
    L_0x0074:
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r2 = "User-Agent";
        r5 = c();	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1.setRequestProperty(r2, r5);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r13.g;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        if (r1 == 0) goto L_0x008c;
    L_0x0083:
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r2 = "X-ADMOB-ISU";
        r5 = r13.g;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1.setRequestProperty(r2, r5);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
    L_0x008c:
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r2 = r13.b;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1.setConnectTimeout(r2);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r2 = r13.b;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1.setReadTimeout(r2);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r13.d;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        if (r1 == 0) goto L_0x00f8;
    L_0x009e:
        r1 = r13.d;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r1.keySet();	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r5 = r1.iterator();	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
    L_0x00a8:
        r1 = r5.hasNext();	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        if (r1 == 0) goto L_0x00f8;
    L_0x00ae:
        r1 = r5.next();	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r0 = r1;
        r0 = (java.lang.String) r0;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r2 = r0;
        if (r2 == 0) goto L_0x00a8;
    L_0x00b8:
        r1 = r13.d;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r1.get(r2);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        if (r1 == 0) goto L_0x00a8;
    L_0x00c2:
        r6 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r6.addRequestProperty(r2, r1);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        goto L_0x00a8;
    L_0x00c8:
        r1 = move-exception;
        r2 = r4;
    L_0x00ca:
        r3 = "AdMobSDK";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x01db }
        r4.<init>();	 Catch:{ all -> 0x01db }
        r5 = "could not open connection to url ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x01db }
        r5 = r13.n;	 Catch:{ all -> 0x01db }
        r4 = r4.append(r5);	 Catch:{ all -> 0x01db }
        r4 = r4.toString();	 Catch:{ all -> 0x01db }
        android.util.Log.w(r3, r4, r1);	 Catch:{ all -> 0x01db }
        r13.c = r1;	 Catch:{ all -> 0x01db }
        if (r2 == 0) goto L_0x00eb;
    L_0x00e8:
        r2.close();	 Catch:{ Exception -> 0x01d6 }
    L_0x00eb:
        r13.h();
        r1 = r9;
    L_0x00ef:
        r2 = r13.e;
        r2 = r2 + 1;
        r13.e = r2;
        r3 = r1;
        goto L_0x002c;
    L_0x00f8:
        r1 = r13.l;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        if (r1 == 0) goto L_0x01ab;
    L_0x00fc:
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r2 = "POST";
        r1.setRequestMethod(r2);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r2 = 1;
        r1.setDoOutput(r2);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r2 = "Content-Type";
        r5 = r13.a;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1.setRequestProperty(r2, r5);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r2 = "Content-Length";
        r5 = r13.l;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r5 = r5.length();	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r5 = java.lang.Integer.toString(r5);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1.setRequestProperty(r2, r5);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r1.getOutputStream();	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r2 = new java.io.BufferedWriter;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r5 = new java.io.OutputStreamWriter;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r5.<init>(r1);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r2.<init>(r5, r1);	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r13.l;	 Catch:{ Exception -> 0x01e2 }
        r2.write(r1);	 Catch:{ Exception -> 0x01e2 }
        r2.close();	 Catch:{ Exception -> 0x01e2 }
        r1 = 0;
    L_0x013e:
        r2 = r13.m;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r2 = r2.getResponseCode();	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r4 = "AdMobSDK";
        r5 = 2;
        r4 = android.util.Log.isLoggable(r4, r5);	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        if (r4 == 0) goto L_0x016d;
    L_0x014d:
        r4 = r13.m;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r5 = "X-AdMob-AdSrc";
        r4 = r4.getHeaderField(r5);	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r5 = "AdMobSDK";
        r6 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r6.<init>();	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r7 = "Ad response came from server ";
        r6 = r6.append(r7);	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r4 = r6.append(r4);	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r4 = r4.toString();	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        android.util.Log.v(r5, r4);	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
    L_0x016d:
        r4 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r2 < r4) goto L_0x01e5;
    L_0x0171:
        r4 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r2 >= r4) goto L_0x01e5;
    L_0x0175:
        r2 = r13.m;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r2 = r2.getURL();	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r13.i = r2;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r2 = r13.k;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        if (r2 == 0) goto L_0x01b8;
    L_0x0181:
        r2 = new java.io.BufferedInputStream;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r3 = r13.m;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r3 = r3.getInputStream();	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r4 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r2.<init>(r3, r4);	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r3 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r3 = new byte[r3];	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r4 = new java.io.ByteArrayOutputStream;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r5 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r4.<init>(r5);	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
    L_0x0199:
        r5 = r2.read(r3);	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r6 = -1;
        if (r5 == r6) goto L_0x01b2;
    L_0x01a0:
        r6 = 0;
        r4.write(r3, r6, r5);	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        goto L_0x0199;
    L_0x01a5:
        r2 = move-exception;
        r12 = r2;
        r2 = r1;
        r1 = r12;
        goto L_0x00ca;
    L_0x01ab:
        r1 = r13.m;	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1.connect();	 Catch:{ Exception -> 0x00c8, all -> 0x01cb }
        r1 = r4;
        goto L_0x013e;
    L_0x01b2:
        r2 = r4.toByteArray();	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r13.j = r2;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
    L_0x01b8:
        r2 = r13.h;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        if (r2 == 0) goto L_0x01c1;
    L_0x01bc:
        r2 = r13.h;	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r2.a(r13);	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
    L_0x01c1:
        r2 = r10;
    L_0x01c2:
        r13.h();	 Catch:{ Exception -> 0x01a5, all -> 0x01dd }
        r13.h();
        r1 = r2;
        goto L_0x00ef;
    L_0x01cb:
        r1 = move-exception;
        r2 = r4;
    L_0x01cd:
        if (r2 == 0) goto L_0x01d2;
    L_0x01cf:
        r2.close();	 Catch:{ Exception -> 0x01d9 }
    L_0x01d2:
        r13.h();
        throw r1;
    L_0x01d6:
        r1 = move-exception;
        goto L_0x00eb;
    L_0x01d9:
        r2 = move-exception;
        goto L_0x01d2;
    L_0x01db:
        r1 = move-exception;
        goto L_0x01cd;
    L_0x01dd:
        r2 = move-exception;
        r12 = r2;
        r2 = r1;
        r1 = r12;
        goto L_0x01cd;
    L_0x01e2:
        r1 = move-exception;
        goto L_0x00ca;
    L_0x01e5:
        r2 = r3;
        goto L_0x01c2;
    L_0x01e7:
        r1 = r4;
        r2 = r3;
        goto L_0x01c2;
    L_0x01ea:
        r1 = r3;
        goto L_0x001a;
        */
    }

    public final void b() {
        h();
        this.h = null;
    }

    public final void run() {
        String str;
        String str2 = AdManager.LOG;
        try {
            a();
        } catch (Exception e) {
            exception = e;
            str = AdManager.LOG;
            if (Log.isLoggable(str2, Config.ACTIVITY_ID_STATS)) {
                Exception exception2;
                str = AdManager.LOG;
                Log.e(str2, "exception caught in AdMobURLConnector.run(), " + exception2.getMessage());
            }
        }
    }
}