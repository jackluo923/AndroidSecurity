package com.mixpanel.android.mpmetrics;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

class y {
    private static final String a = "MixpanelAPI";

    public static class a {
        private final String a;
        private final com.mixpanel.android.mpmetrics.y.b b;

        a(com.mixpanel.android.mpmetrics.y.b bVar, String str) {
            this.b = bVar;
            this.a = str;
        }

        public com.mixpanel.android.mpmetrics.y.b a_() {
            return this.b;
        }

        public String b() {
            return this.a;
        }
    }

    public enum b {
        SUCCEEDED,
        FAILED_RECOVERABLE,
        FAILED_UNRECOVERABLE;

        static {
            a = new com.mixpanel.android.mpmetrics.y.b("SUCCEEDED", 0);
            b = new com.mixpanel.android.mpmetrics.y.b("FAILED_RECOVERABLE", 1);
            c = new com.mixpanel.android.mpmetrics.y.b("FAILED_UNRECOVERABLE", 2);
            d = new com.mixpanel.android.mpmetrics.y.b[]{a, b, c};
        }
    }

    y() {
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.mixpanel.android.mpmetrics.y.a a(java.lang.String r14, java.util.List r15) {
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.y.a(java.lang.String, java.util.List):com.mixpanel.android.mpmetrics.y$a");
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Try/catch wrap count limit reached in com.mixpanel.android.mpmetrics.y.a(java.lang.String, java.util.List):com.mixpanel.android.mpmetrics.y$a
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
        r1 = 1;
        r2 = 0;
        r6 = 0;
        r11 = com.mixpanel.android.mpmetrics.y.b.c;
        r3 = r2;
        r8 = r6;
    L_0x0007:
        r0 = 3;
        if (r3 >= r0) goto L_0x00ee;
    L_0x000a:
        if (r2 != 0) goto L_0x00ee;
    L_0x000c:
        r0 = new java.net.URL;	 Catch:{ EOFException -> 0x0165, all -> 0x0127 }
        r0.<init>(r14);	 Catch:{ EOFException -> 0x0165, all -> 0x0127 }
        r0 = r0.openConnection();	 Catch:{ EOFException -> 0x0165, all -> 0x0127 }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ EOFException -> 0x0165, all -> 0x0127 }
        if (r15 == 0) goto L_0x01a3;
    L_0x0019:
        r4 = 1;
        r0.setDoOutput(r4);	 Catch:{ EOFException -> 0x016e, all -> 0x012e }
        r7 = new org.apache.http.client.entity.UrlEncodedFormEntity;	 Catch:{ EOFException -> 0x016e, all -> 0x012e }
        r4 = "UTF-8";
        r7.<init>(r15, r4);	 Catch:{ EOFException -> 0x016e, all -> 0x012e }
        r4 = "POST";
        r0.setRequestMethod(r4);	 Catch:{ EOFException -> 0x016e, all -> 0x012e }
        r4 = r7.getContentLength();	 Catch:{ EOFException -> 0x016e, all -> 0x012e }
        r4 = (int) r4;	 Catch:{ EOFException -> 0x016e, all -> 0x012e }
        r0.setFixedLengthStreamingMode(r4);	 Catch:{ EOFException -> 0x016e, all -> 0x012e }
        r5 = r0.getOutputStream();	 Catch:{ EOFException -> 0x016e, all -> 0x012e }
        r4 = new java.io.BufferedOutputStream;	 Catch:{ EOFException -> 0x0177, all -> 0x0138 }
        r4.<init>(r5);	 Catch:{ EOFException -> 0x0177, all -> 0x0138 }
        r7.writeTo(r4);	 Catch:{ EOFException -> 0x0180, all -> 0x0141 }
        r4.close();	 Catch:{ EOFException -> 0x0180, all -> 0x0141 }
        r5.close();	 Catch:{ EOFException -> 0x0177, all -> 0x0138 }
        r9 = r6;
        r10 = r6;
    L_0x0045:
        r7 = r0.getInputStream();	 Catch:{ EOFException -> 0x016e, all -> 0x012e }
        r5 = new java.io.BufferedInputStream;	 Catch:{ EOFException -> 0x0189, all -> 0x0149 }
        r5.<init>(r7);	 Catch:{ EOFException -> 0x0189, all -> 0x0149 }
        r4 = com.mixpanel.android.a.c.a(r7);	 Catch:{ EOFException -> 0x0192, all -> 0x0152 }
        r5.close();	 Catch:{ EOFException -> 0x019b, all -> 0x015b }
        r5 = 0;
        r7.close();	 Catch:{ EOFException -> 0x007a, all -> 0x00a0 }
        r2 = 0;
        if (r6 == 0) goto L_0x005f;
    L_0x005c:
        r9.close();	 Catch:{ IOException -> 0x0100, MalformedURLException -> 0x0125, OutOfMemoryError -> 0x00f5 }
    L_0x005f:
        if (r6 == 0) goto L_0x0064;
    L_0x0061:
        r10.close();	 Catch:{ IOException -> 0x0103, MalformedURLException -> 0x0125, OutOfMemoryError -> 0x00f5 }
    L_0x0064:
        if (r6 == 0) goto L_0x0069;
    L_0x0066:
        r5.close();	 Catch:{ IOException -> 0x0106, MalformedURLException -> 0x0125, OutOfMemoryError -> 0x00f5 }
    L_0x0069:
        if (r6 == 0) goto L_0x006e;
    L_0x006b:
        r2.close();	 Catch:{ IOException -> 0x0109, MalformedURLException -> 0x0125, OutOfMemoryError -> 0x00f5 }
    L_0x006e:
        if (r0 == 0) goto L_0x01ad;
    L_0x0070:
        r0.disconnect();	 Catch:{ MalformedURLException -> 0x0125, IOException -> 0x00f1, OutOfMemoryError -> 0x00f5 }
        r0 = r1;
        r2 = r3;
        r3 = r4;
    L_0x0076:
        r8 = r3;
        r3 = r2;
        r2 = r0;
        goto L_0x0007;
    L_0x007a:
        r5 = move-exception;
        r5 = r0;
        r8 = r6;
        r9 = r6;
        r10 = r7;
        r7 = r6;
    L_0x0080:
        r0 = r3 + 1;
        if (r7 == 0) goto L_0x0087;
    L_0x0084:
        r7.close();	 Catch:{ IOException -> 0x010c, MalformedURLException -> 0x0125, OutOfMemoryError -> 0x00f5 }
    L_0x0087:
        if (r8 == 0) goto L_0x008c;
    L_0x0089:
        r8.close();	 Catch:{ IOException -> 0x010f, MalformedURLException -> 0x0125, OutOfMemoryError -> 0x00f5 }
    L_0x008c:
        if (r9 == 0) goto L_0x0091;
    L_0x008e:
        r9.close();	 Catch:{ IOException -> 0x0112, MalformedURLException -> 0x0125, OutOfMemoryError -> 0x00f5 }
    L_0x0091:
        if (r10 == 0) goto L_0x0096;
    L_0x0093:
        r10.close();	 Catch:{ IOException -> 0x0115, MalformedURLException -> 0x0125, OutOfMemoryError -> 0x00f5 }
    L_0x0096:
        if (r5 == 0) goto L_0x01a7;
    L_0x0098:
        r5.disconnect();	 Catch:{ MalformedURLException -> 0x0125, IOException -> 0x00f1, OutOfMemoryError -> 0x00f5 }
        r3 = r4;
        r12 = r0;
        r0 = r2;
        r2 = r12;
        goto L_0x0076;
    L_0x00a0:
        r1 = move-exception;
        r5 = r6;
        r8 = r4;
        r4 = r6;
        r12 = r1;
        r1 = r6;
        r6 = r0;
        r0 = r12;
    L_0x00a8:
        if (r4 == 0) goto L_0x00ad;
    L_0x00aa:
        r4.close();	 Catch:{ IOException -> 0x0117, MalformedURLException -> 0x00c2, OutOfMemoryError -> 0x011f }
    L_0x00ad:
        if (r5 == 0) goto L_0x00b2;
    L_0x00af:
        r5.close();	 Catch:{ IOException -> 0x0119, MalformedURLException -> 0x00c2, OutOfMemoryError -> 0x011f }
    L_0x00b2:
        if (r1 == 0) goto L_0x00b7;
    L_0x00b4:
        r1.close();	 Catch:{ IOException -> 0x011b, MalformedURLException -> 0x00c2, OutOfMemoryError -> 0x011f }
    L_0x00b7:
        if (r7 == 0) goto L_0x00bc;
    L_0x00b9:
        r7.close();	 Catch:{ IOException -> 0x011d, MalformedURLException -> 0x00c2, OutOfMemoryError -> 0x011f }
    L_0x00bc:
        if (r6 == 0) goto L_0x00c1;
    L_0x00be:
        r6.disconnect();	 Catch:{ MalformedURLException -> 0x00c2, IOException -> 0x0122, OutOfMemoryError -> 0x011f }
    L_0x00c1:
        throw r0;	 Catch:{ MalformedURLException -> 0x00c2, IOException -> 0x0122, OutOfMemoryError -> 0x011f }
    L_0x00c2:
        r0 = move-exception;
        r4 = r8;
    L_0x00c4:
        r1 = "MixpanelAPI";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Cannot iterpret ";
        r2 = r2.append(r3);
        r2 = r2.append(r14);
        r3 = " as a URL";
        r2 = r2.append(r3);
        r2 = r2.toString();
        android.util.Log.e(r1, r2, r0);
        r0 = com.mixpanel.android.mpmetrics.y.b.c;
    L_0x00e4:
        if (r4 == 0) goto L_0x00e8;
    L_0x00e6:
        r0 = com.mixpanel.android.mpmetrics.y.b.a;
    L_0x00e8:
        r1 = new com.mixpanel.android.mpmetrics.y$a;
        r1.<init>(r0, r4);
        return r1;
    L_0x00ee:
        r4 = r8;
        r0 = r11;
        goto L_0x00e4;
    L_0x00f1:
        r0 = move-exception;
    L_0x00f2:
        r0 = com.mixpanel.android.mpmetrics.y.b.b;
        goto L_0x00e4;
    L_0x00f5:
        r0 = move-exception;
    L_0x00f6:
        r1 = "MixpanelAPI";
        r2 = "Cannot post message to Mixpanel Servers, will not retry.";
        android.util.Log.e(r1, r2, r0);
        r0 = com.mixpanel.android.mpmetrics.y.b.c;
        goto L_0x00e4;
    L_0x0100:
        r7 = move-exception;
        goto L_0x005f;
    L_0x0103:
        r7 = move-exception;
        goto L_0x0064;
    L_0x0106:
        r5 = move-exception;
        goto L_0x0069;
    L_0x0109:
        r2 = move-exception;
        goto L_0x006e;
    L_0x010c:
        r3 = move-exception;
        goto L_0x0087;
    L_0x010f:
        r3 = move-exception;
        goto L_0x008c;
    L_0x0112:
        r3 = move-exception;
        goto L_0x0091;
    L_0x0115:
        r3 = move-exception;
        goto L_0x0096;
    L_0x0117:
        r2 = move-exception;
        goto L_0x00ad;
    L_0x0119:
        r2 = move-exception;
        goto L_0x00b2;
    L_0x011b:
        r1 = move-exception;
        goto L_0x00b7;
    L_0x011d:
        r1 = move-exception;
        goto L_0x00bc;
    L_0x011f:
        r0 = move-exception;
        r4 = r8;
        goto L_0x00f6;
    L_0x0122:
        r0 = move-exception;
        r4 = r8;
        goto L_0x00f2;
    L_0x0125:
        r0 = move-exception;
        goto L_0x00c4;
    L_0x0127:
        r0 = move-exception;
        r4 = r6;
        r5 = r6;
        r1 = r6;
        r7 = r6;
        goto L_0x00a8;
    L_0x012e:
        r1 = move-exception;
        r4 = r6;
        r5 = r6;
        r7 = r6;
        r12 = r0;
        r0 = r1;
        r1 = r6;
        r6 = r12;
        goto L_0x00a8;
    L_0x0138:
        r1 = move-exception;
        r4 = r6;
        r7 = r6;
        r12 = r1;
        r1 = r6;
        r6 = r0;
        r0 = r12;
        goto L_0x00a8;
    L_0x0141:
        r1 = move-exception;
        r7 = r6;
        r12 = r0;
        r0 = r1;
        r1 = r6;
        r6 = r12;
        goto L_0x00a8;
    L_0x0149:
        r1 = move-exception;
        r4 = r6;
        r5 = r6;
        r12 = r1;
        r1 = r6;
        r6 = r0;
        r0 = r12;
        goto L_0x00a8;
    L_0x0152:
        r1 = move-exception;
        r4 = r6;
        r12 = r0;
        r0 = r1;
        r1 = r5;
        r5 = r6;
        r6 = r12;
        goto L_0x00a8;
    L_0x015b:
        r1 = move-exception;
        r8 = r4;
        r4 = r6;
        r12 = r0;
        r0 = r1;
        r1 = r5;
        r5 = r6;
        r6 = r12;
        goto L_0x00a8;
    L_0x0165:
        r0 = move-exception;
        r5 = r6;
        r7 = r6;
        r9 = r6;
        r10 = r6;
        r4 = r8;
        r8 = r6;
        goto L_0x0080;
    L_0x016e:
        r4 = move-exception;
        r5 = r0;
        r7 = r6;
        r9 = r6;
        r10 = r6;
        r4 = r8;
        r8 = r6;
        goto L_0x0080;
    L_0x0177:
        r4 = move-exception;
        r7 = r6;
        r9 = r6;
        r10 = r6;
        r4 = r8;
        r8 = r5;
        r5 = r0;
        goto L_0x0080;
    L_0x0180:
        r7 = move-exception;
        r7 = r4;
        r9 = r6;
        r10 = r6;
        r4 = r8;
        r8 = r5;
        r5 = r0;
        goto L_0x0080;
    L_0x0189:
        r4 = move-exception;
        r5 = r0;
        r9 = r6;
        r10 = r7;
        r4 = r8;
        r8 = r6;
        r7 = r6;
        goto L_0x0080;
    L_0x0192:
        r4 = move-exception;
        r9 = r5;
        r10 = r7;
        r4 = r8;
        r5 = r0;
        r7 = r6;
        r8 = r6;
        goto L_0x0080;
    L_0x019b:
        r8 = move-exception;
        r8 = r6;
        r9 = r5;
        r10 = r7;
        r7 = r6;
        r5 = r0;
        goto L_0x0080;
    L_0x01a3:
        r9 = r6;
        r10 = r6;
        goto L_0x0045;
    L_0x01a7:
        r3 = r4;
        r12 = r0;
        r0 = r2;
        r2 = r12;
        goto L_0x0076;
    L_0x01ad:
        r0 = r1;
        r2 = r3;
        r3 = r4;
        goto L_0x0076;
        */
    }

    public a a(String str, String str2) {
        a a = a(str, null);
        return (a.a() != b.b || str2 == null) ? a : a(str2, null);
    }

    public a a(String str, String str2, String str3) {
        b bVar;
        String str4;
        b bVar2 = b.c;
        String a = com.mixpanel.android.a.a.a(str);
        List arrayList = new ArrayList(1);
        arrayList.add(new BasicNameValuePair(i.a, a));
        a a2 = a(str2, arrayList);
        b a3 = a2.a();
        a = a2.b();
        if (a3 == b.a && a.equals("1\n")) {
            bVar2 = b.a;
        }
        String str5;
        if (a3 != b.b || str3 == null) {
            str5 = a;
            bVar = bVar2;
            str4 = str5;
        } else {
            a2 = a(str, str3, null);
            a3 = a2.a();
            a = a2.b();
            if (a3 != b.a) {
                Log.e(a, "Could not post data to Mixpanel");
                str5 = a;
                bVar = bVar2;
                str4 = str5;
            } else {
                str5 = a;
                bVar = b.a;
                str4 = str5;
            }
        }
        return new a(bVar, str4);
    }
}