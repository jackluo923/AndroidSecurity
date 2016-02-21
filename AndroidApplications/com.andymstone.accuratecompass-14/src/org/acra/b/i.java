package org.acra.b;

class i {
    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.lang.String r7) {
        throw new UnsupportedOperationException("Method not decompiled: org.acra.b.i.a(java.lang.String):java.lang.String");
        /*
        r2 = -1;
        r1 = android.os.Process.myPid();
        r0 = 0;
        r3 = org.acra.ACRA.getConfig();
        r3 = r3.G();
        if (r3 == 0) goto L_0x00f8;
    L_0x0010:
        if (r1 <= 0) goto L_0x00f8;
    L_0x0012:
        r0 = new java.lang.StringBuilder;
        r1 = java.lang.Integer.toString(r1);
        r1 = java.lang.String.valueOf(r1);
        r0.<init>(r1);
        r1 = "):";
        r0 = r0.append(r1);
        r0 = r0.toString();
        r1 = r0;
    L_0x002a:
        r3 = new java.util.ArrayList;
        r3.<init>();
        r0 = "logcat";
        r3.add(r0);
        if (r7 == 0) goto L_0x003e;
    L_0x0036:
        r0 = "-b";
        r3.add(r0);
        r3.add(r7);
    L_0x003e:
        r4 = new java.util.ArrayList;
        r0 = org.acra.ACRA.getConfig();
        r0 = r0.o();
        r0 = java.util.Arrays.asList(r0);
        r4.<init>(r0);
        r0 = "-t";
        r5 = r4.indexOf(r0);
        if (r5 <= r2) goto L_0x00cb;
    L_0x0057:
        r0 = r4.size();
        if (r5 >= r0) goto L_0x00cb;
    L_0x005d:
        r0 = r5 + 1;
        r0 = r4.get(r0);
        r0 = (java.lang.String) r0;
        r0 = java.lang.Integer.parseInt(r0);
        r2 = org.acra.b.a.a();
        r6 = 8;
        if (r2 >= r6) goto L_0x007e;
    L_0x0071:
        r2 = r5 + 1;
        r4.remove(r2);
        r4.remove(r5);
        r2 = "-d";
        r4.add(r2);
    L_0x007e:
        r2 = new org.acra.e.a;
        if (r0 <= 0) goto L_0x00cd;
    L_0x0082:
        r2.<init>(r0);
        r3.addAll(r4);
        r4 = java.lang.Runtime.getRuntime();	 Catch:{ IOException -> 0x00ef }
        r0 = r3.size();	 Catch:{ IOException -> 0x00ef }
        r0 = new java.lang.String[r0];	 Catch:{ IOException -> 0x00ef }
        r0 = r3.toArray(r0);	 Catch:{ IOException -> 0x00ef }
        r0 = (java.lang.String[]) r0;	 Catch:{ IOException -> 0x00ef }
        r0 = r4.exec(r0);	 Catch:{ IOException -> 0x00ef }
        r3 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x00ef }
        r4 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x00ef }
        r5 = r0.getInputStream();	 Catch:{ IOException -> 0x00ef }
        r4.<init>(r5);	 Catch:{ IOException -> 0x00ef }
        r5 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r3.<init>(r4, r5);	 Catch:{ IOException -> 0x00ef }
        r4 = org.acra.ACRA.LOG_TAG;	 Catch:{ IOException -> 0x00ef }
        r5 = "Retrieving logcat output...";
        android.util.Log.d(r4, r5);	 Catch:{ IOException -> 0x00ef }
        r4 = new java.lang.Thread;	 Catch:{ IOException -> 0x00ef }
        r5 = new org.acra.b.j;	 Catch:{ IOException -> 0x00ef }
        r5.<init>(r0);	 Catch:{ IOException -> 0x00ef }
        r4.<init>(r5);	 Catch:{ IOException -> 0x00ef }
        r4.start();	 Catch:{ IOException -> 0x00ef }
    L_0x00c0:
        r0 = r3.readLine();	 Catch:{ IOException -> 0x00ef }
        if (r0 != 0) goto L_0x00d0;
    L_0x00c6:
        r0 = r2.toString();
        return r0;
    L_0x00cb:
        r0 = r2;
        goto L_0x007e;
    L_0x00cd:
        r0 = 100;
        goto L_0x0082;
    L_0x00d0:
        if (r1 == 0) goto L_0x00d8;
    L_0x00d2:
        r4 = r0.contains(r1);	 Catch:{ IOException -> 0x00ef }
        if (r4 == 0) goto L_0x00c0;
    L_0x00d8:
        r4 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x00ef }
        r0 = java.lang.String.valueOf(r0);	 Catch:{ IOException -> 0x00ef }
        r4.<init>(r0);	 Catch:{ IOException -> 0x00ef }
        r0 = "\n";
        r0 = r4.append(r0);	 Catch:{ IOException -> 0x00ef }
        r0 = r0.toString();	 Catch:{ IOException -> 0x00ef }
        r2.add(r0);	 Catch:{ IOException -> 0x00ef }
        goto L_0x00c0;
    L_0x00ef:
        r0 = move-exception;
        r1 = org.acra.ACRA.LOG_TAG;
        r3 = "LogCatCollector.collectLogCat could not retrieve data.";
        android.util.Log.e(r1, r3, r0);
        goto L_0x00c6;
    L_0x00f8:
        r1 = r0;
        goto L_0x002a;
        */
    }
}