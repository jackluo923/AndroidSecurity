package org.acra.b;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import org.acra.ACRA;

public final class b {
    private static SparseArray a;
    private static SparseArray b;
    private static SparseArray c;
    private static SparseArray d;
    private static SparseArray e;
    private static SparseArray f;
    private static SparseArray g;
    private static SparseArray h;
    private static SparseArray i;
    private static final HashMap j;

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static {
        throw new UnsupportedOperationException("Method not decompiled: org.acra.b.b.<clinit>():void");
        /*
        r0 = new android.util.SparseArray;
        r0.<init>();
        a = r0;
        r0 = new android.util.SparseArray;
        r0.<init>();
        b = r0;
        r0 = new android.util.SparseArray;
        r0.<init>();
        c = r0;
        r0 = new android.util.SparseArray;
        r0.<init>();
        d = r0;
        r0 = new android.util.SparseArray;
        r0.<init>();
        e = r0;
        r0 = new android.util.SparseArray;
        r0.<init>();
        f = r0;
        r0 = new android.util.SparseArray;
        r0.<init>();
        g = r0;
        r0 = new android.util.SparseArray;
        r0.<init>();
        h = r0;
        r0 = new android.util.SparseArray;
        r0.<init>();
        i = r0;
        r0 = new java.util.HashMap;
        r0.<init>();
        j = r0;
        r0 = j;
        r1 = "HARDKEYBOARDHIDDEN_";
        r2 = a;
        r0.put(r1, r2);
        r0 = j;
        r1 = "KEYBOARD_";
        r2 = b;
        r0.put(r1, r2);
        r0 = j;
        r1 = "KEYBOARDHIDDEN_";
        r2 = c;
        r0.put(r1, r2);
        r0 = j;
        r1 = "NAVIGATION_";
        r2 = d;
        r0.put(r1, r2);
        r0 = j;
        r1 = "NAVIGATIONHIDDEN_";
        r2 = e;
        r0.put(r1, r2);
        r0 = j;
        r1 = "ORIENTATION_";
        r2 = f;
        r0.put(r1, r2);
        r0 = j;
        r1 = "SCREENLAYOUT_";
        r2 = g;
        r0.put(r1, r2);
        r0 = j;
        r1 = "TOUCHSCREEN_";
        r2 = h;
        r0.put(r1, r2);
        r0 = j;
        r1 = "UI_MODE_";
        r2 = i;
        r0.put(r1, r2);
        r0 = android.content.res.Configuration.class;
        r2 = r0.getFields();
        r3 = r2.length;
        r0 = 0;
        r1 = r0;
    L_0x00a0:
        if (r1 < r3) goto L_0x00a3;
    L_0x00a2:
        return;
    L_0x00a3:
        r0 = r2[r1];
        r4 = r0.getModifiers();
        r4 = java.lang.reflect.Modifier.isStatic(r4);
        if (r4 == 0) goto L_0x00cf;
    L_0x00af:
        r4 = r0.getModifiers();
        r4 = java.lang.reflect.Modifier.isFinal(r4);
        if (r4 == 0) goto L_0x00cf;
    L_0x00b9:
        r4 = r0.getName();
        r5 = "HARDKEYBOARDHIDDEN_";
        r5 = r4.startsWith(r5);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        if (r5 == 0) goto L_0x00d3;
    L_0x00c5:
        r5 = a;	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r6 = 0;
        r0 = r0.getInt(r6);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r5.put(r0, r4);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
    L_0x00cf:
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x00a0;
    L_0x00d3:
        r5 = "KEYBOARD_";
        r5 = r4.startsWith(r5);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        if (r5 == 0) goto L_0x00ef;
    L_0x00db:
        r5 = b;	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r6 = 0;
        r0 = r0.getInt(r6);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r5.put(r0, r4);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        goto L_0x00cf;
    L_0x00e6:
        r0 = move-exception;
        r4 = org.acra.ACRA.LOG_TAG;
        r5 = "Error while inspecting device configuration: ";
        android.util.Log.w(r4, r5, r0);
        goto L_0x00cf;
    L_0x00ef:
        r5 = "KEYBOARDHIDDEN_";
        r5 = r4.startsWith(r5);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        if (r5 == 0) goto L_0x010b;
    L_0x00f7:
        r5 = c;	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r6 = 0;
        r0 = r0.getInt(r6);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r5.put(r0, r4);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        goto L_0x00cf;
    L_0x0102:
        r0 = move-exception;
        r4 = org.acra.ACRA.LOG_TAG;
        r5 = "Error while inspecting device configuration: ";
        android.util.Log.w(r4, r5, r0);
        goto L_0x00cf;
    L_0x010b:
        r5 = "NAVIGATION_";
        r5 = r4.startsWith(r5);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        if (r5 == 0) goto L_0x011e;
    L_0x0113:
        r5 = d;	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r6 = 0;
        r0 = r0.getInt(r6);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r5.put(r0, r4);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        goto L_0x00cf;
    L_0x011e:
        r5 = "NAVIGATIONHIDDEN_";
        r5 = r4.startsWith(r5);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        if (r5 == 0) goto L_0x0131;
    L_0x0126:
        r5 = e;	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r6 = 0;
        r0 = r0.getInt(r6);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r5.put(r0, r4);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        goto L_0x00cf;
    L_0x0131:
        r5 = "ORIENTATION_";
        r5 = r4.startsWith(r5);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        if (r5 == 0) goto L_0x0144;
    L_0x0139:
        r5 = f;	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r6 = 0;
        r0 = r0.getInt(r6);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r5.put(r0, r4);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        goto L_0x00cf;
    L_0x0144:
        r5 = "SCREENLAYOUT_";
        r5 = r4.startsWith(r5);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        if (r5 == 0) goto L_0x0158;
    L_0x014c:
        r5 = g;	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r6 = 0;
        r0 = r0.getInt(r6);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r5.put(r0, r4);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        goto L_0x00cf;
    L_0x0158:
        r5 = "TOUCHSCREEN_";
        r5 = r4.startsWith(r5);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        if (r5 == 0) goto L_0x016c;
    L_0x0160:
        r5 = h;	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r6 = 0;
        r0 = r0.getInt(r6);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r5.put(r0, r4);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        goto L_0x00cf;
    L_0x016c:
        r5 = "UI_MODE_";
        r5 = r4.startsWith(r5);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        if (r5 == 0) goto L_0x00cf;
    L_0x0174:
        r5 = i;	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r6 = 0;
        r0 = r0.getInt(r6);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        r5.put(r0, r4);	 Catch:{ IllegalArgumentException -> 0x00e6, IllegalAccessException -> 0x0102 }
        goto L_0x00cf;
        */
    }

    public static String a(Context context) {
        try {
            return a(context.getResources().getConfiguration());
        } catch (RuntimeException e) {
            Log.w(ACRA.LOG_TAG, new StringBuilder("Couldn't retrieve CrashConfiguration for : ").append(context.getPackageName()).toString(), e);
            return "Couldn't retrieve crash config";
        }
    }

    public static String a(Configuration configuration) {
        StringBuilder stringBuilder = new StringBuilder();
        Field[] fields = configuration.getClass().getFields();
        int length = fields.length;
        int i = 0;
        while (i < length) {
            Field field = fields[i];
            try {
                if (!Modifier.isStatic(field.getModifiers())) {
                    stringBuilder.append(field.getName()).append('=');
                    if (field.getType().equals(Integer.TYPE)) {
                        stringBuilder.append(a(configuration, field));
                    } else if (field.get(configuration) != null) {
                        stringBuilder.append(field.get(configuration).toString());
                    }
                    stringBuilder.append('\n');
                }
            } catch (IllegalArgumentException e) {
                Log.e(ACRA.LOG_TAG, "Error while inspecting device configuration: ", e);
            } catch (IllegalAccessException e2) {
                Log.e(ACRA.LOG_TAG, "Error while inspecting device configuration: ", e2);
            }
            i++;
        }
        return stringBuilder.toString();
    }

    private static String a(Configuration configuration, Field field) {
        String name = field.getName();
        if (name.equals("mcc") || name.equals("mnc")) {
            return Integer.toString(field.getInt(configuration));
        }
        if (name.equals("uiMode")) {
            return a((SparseArray) j.get("UI_MODE_"), field.getInt(configuration));
        }
        if (name.equals("screenLayout")) {
            return a((SparseArray) j.get("SCREENLAYOUT_"), field.getInt(configuration));
        }
        SparseArray sparseArray = (SparseArray) j.get(new StringBuilder(String.valueOf(name.toUpperCase())).append('_').toString());
        if (sparseArray == null) {
            return Integer.toString(field.getInt(configuration));
        }
        name = (String) sparseArray.get(field.getInt(configuration));
        return name == null ? Integer.toString(field.getInt(configuration)) : name;
    }

    private static String a(SparseArray sparseArray, int i) {
        StringBuilder stringBuilder = new StringBuilder();
        int i2 = 0;
        while (i2 < sparseArray.size()) {
            int keyAt = sparseArray.keyAt(i2);
            if (((String) sparseArray.get(keyAt)).endsWith("_MASK")) {
                int i3 = i & keyAt;
                if (i3 > 0) {
                    if (stringBuilder.length() > 0) {
                        stringBuilder.append('+');
                    }
                    stringBuilder.append((String) sparseArray.get(i3));
                }
            }
            i2++;
        }
        return stringBuilder.toString();
    }
}