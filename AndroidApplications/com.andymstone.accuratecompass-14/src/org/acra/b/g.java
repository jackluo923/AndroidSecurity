package org.acra.b;

final class g {
    private static final String[] a;

    static {
        a = new String[]{"system_app_anr", "system_app_wtf", "system_app_crash", "system_server_anr", "system_server_wtf", "system_server_crash", "BATTERY_DISCHARGE_INFO", "SYSTEM_RECOVERY_LOG", "SYSTEM_BOOT", "SYSTEM_LAST_KMSG", "APANIC_CONSOLE", "APANIC_THREADS", "SYSTEM_RESTART", "SYSTEM_TOMBSTONE", "data_app_strictmode"};
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(android.content.Context r18, java.lang.String[] r19) {
        throw new UnsupportedOperationException("Method not decompiled: org.acra.b.g.a(android.content.Context, java.lang.String[]):java.lang.String");
        /*
        r1 = org.acra.b.a.b();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        if (r1 != 0) goto L_0x0009;
    L_0x0006:
        r1 = "N/A";
    L_0x0008:
        return r1;
    L_0x0009:
        r0 = r18;
        r4 = r0.getSystemService(r1);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r1 = r4.getClass();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = "getNextEntry";
        r3 = 2;
        r3 = new java.lang.Class[r3];	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r5 = 0;
        r6 = java.lang.String.class;
        r3[r5] = r6;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r5 = 1;
        r6 = java.lang.Long.TYPE;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r3[r5] = r6;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r5 = r1.getMethod(r2, r3);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        if (r5 != 0) goto L_0x002b;
    L_0x0028:
        r1 = "";
        goto L_0x0008;
    L_0x002b:
        r6 = new android.text.format.Time;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r6.<init>();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r6.setToNow();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r1 = r6.minute;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = org.acra.ACRA.getConfig();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = r2.h();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r1 = r1 - r2;
        r6.minute = r1;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r1 = 0;
        r6.normalize(r1);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r1 = 0;
        r7 = r6.toMillis(r1);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r1 = new java.util.ArrayList;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r1.<init>();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = org.acra.ACRA.getConfig();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = r2.n();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        if (r2 == 0) goto L_0x0061;
    L_0x0058:
        r2 = a;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = java.util.Arrays.asList(r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r1.addAll(r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
    L_0x0061:
        if (r19 == 0) goto L_0x006f;
    L_0x0063:
        r0 = r19;
        r2 = r0.length;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        if (r2 <= 0) goto L_0x006f;
    L_0x0068:
        r2 = java.util.Arrays.asList(r19);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r1.addAll(r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
    L_0x006f:
        r2 = r1.isEmpty();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        if (r2 == 0) goto L_0x0078;
    L_0x0075:
        r1 = "No tag configured for collection.";
        goto L_0x0008;
    L_0x0078:
        r9 = new java.lang.StringBuilder;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r9.<init>();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r10 = r1.iterator();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
    L_0x0081:
        r1 = r10.hasNext();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        if (r1 != 0) goto L_0x008d;
    L_0x0087:
        r1 = r9.toString();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        goto L_0x0008;
    L_0x008d:
        r1 = r10.next();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r1 = (java.lang.String) r1;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = "Tag: ";
        r2 = r9.append(r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = r2.append(r1);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r3 = 10;
        r2.append(r3);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = 2;
        r2 = new java.lang.Object[r2];	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r3 = 0;
        r2[r3] = r1;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r3 = 1;
        r11 = java.lang.Long.valueOf(r7);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2[r3] = r11;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = r5.invoke(r4, r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        if (r2 != 0) goto L_0x00cd;
    L_0x00b5:
        r1 = "Nothing.";
        r1 = r9.append(r1);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = 10;
        r1.append(r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        goto L_0x0081;
    L_0x00c1:
        r1 = move-exception;
        r1 = org.acra.ACRA.LOG_TAG;
        r2 = "DropBoxManager not available.";
        android.util.Log.i(r1, r2);
    L_0x00c9:
        r1 = "N/A";
        goto L_0x0008;
    L_0x00cd:
        r3 = r2.getClass();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r11 = "getText";
        r12 = 1;
        r12 = new java.lang.Class[r12];	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r13 = 0;
        r14 = java.lang.Integer.TYPE;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r12[r13] = r14;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r11 = r3.getMethod(r11, r12);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r3 = r2.getClass();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r12 = "getTimeMillis";
        r13 = 0;
        r12 = r3.getMethod(r12, r13);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r3 = r2.getClass();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r13 = "close";
        r14 = 0;
        r13 = r3.getMethod(r13, r14);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r3 = r2;
    L_0x00f6:
        if (r3 == 0) goto L_0x0081;
    L_0x00f8:
        r2 = 0;
        r2 = r12.invoke(r3, r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = (java.lang.Long) r2;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r14 = r2.longValue();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r6.set(r14);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = "@";
        r2 = r9.append(r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r16 = r6.format2445();	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r0 = r16;
        r2 = r2.append(r0);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r16 = 10;
        r0 = r16;
        r2.append(r0);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = 1;
        r2 = new java.lang.Object[r2];	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r16 = 0;
        r17 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r17 = java.lang.Integer.valueOf(r17);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2[r16] = r17;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = r11.invoke(r3, r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = (java.lang.String) r2;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        if (r2 == 0) goto L_0x015e;
    L_0x0132:
        r16 = "Text: ";
        r0 = r16;
        r16 = r9.append(r0);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r0 = r16;
        r2 = r0.append(r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r16 = 10;
        r0 = r16;
        r2.append(r0);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
    L_0x0147:
        r2 = 0;
        r13.invoke(r3, r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = 2;
        r2 = new java.lang.Object[r2];	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r3 = 0;
        r2[r3] = r1;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r3 = 1;
        r14 = java.lang.Long.valueOf(r14);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2[r3] = r14;	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r2 = r5.invoke(r4, r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r3 = r2;
        goto L_0x00f6;
    L_0x015e:
        r2 = "Not Text!";
        r2 = r9.append(r2);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        r16 = 10;
        r0 = r16;
        r2.append(r0);	 Catch:{ SecurityException -> 0x00c1, NoSuchMethodException -> 0x016c, IllegalArgumentException -> 0x0176, IllegalAccessException -> 0x0180, InvocationTargetException -> 0x018a, NoSuchFieldException -> 0x0194 }
        goto L_0x0147;
    L_0x016c:
        r1 = move-exception;
        r1 = org.acra.ACRA.LOG_TAG;
        r2 = "DropBoxManager not available.";
        android.util.Log.i(r1, r2);
        goto L_0x00c9;
    L_0x0176:
        r1 = move-exception;
        r1 = org.acra.ACRA.LOG_TAG;
        r2 = "DropBoxManager not available.";
        android.util.Log.i(r1, r2);
        goto L_0x00c9;
    L_0x0180:
        r1 = move-exception;
        r1 = org.acra.ACRA.LOG_TAG;
        r2 = "DropBoxManager not available.";
        android.util.Log.i(r1, r2);
        goto L_0x00c9;
    L_0x018a:
        r1 = move-exception;
        r1 = org.acra.ACRA.LOG_TAG;
        r2 = "DropBoxManager not available.";
        android.util.Log.i(r1, r2);
        goto L_0x00c9;
    L_0x0194:
        r1 = move-exception;
        r1 = org.acra.ACRA.LOG_TAG;
        r2 = "DropBoxManager not available.";
        android.util.Log.i(r1, r2);
        goto L_0x00c9;
        */
    }
}