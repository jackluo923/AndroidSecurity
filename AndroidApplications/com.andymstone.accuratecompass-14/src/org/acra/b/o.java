package org.acra.b;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.acra.ACRA;

final class o {
    public static String a(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        Field[] fields = System.class.getFields();
        int length = fields.length;
        int i = 0;
        while (i < length) {
            Field field = fields[i];
            if (!field.isAnnotationPresent(Deprecated.class) && field.getType() == String.class) {
                try {
                    String string = System.getString(context.getContentResolver(), (String) field.get(null));
                    if (string != null) {
                        stringBuilder.append(field.getName()).append("=").append(string).append("\n");
                    }
                } catch (IllegalArgumentException e) {
                    Log.w(ACRA.LOG_TAG, "Error : ", e);
                } catch (IllegalAccessException e2) {
                    Log.w(ACRA.LOG_TAG, "Error : ", e2);
                }
            }
            i++;
        }
        return stringBuilder.toString();
    }

    private static boolean a(Field field) {
        if (field == null || field.getName().startsWith("WIFI_AP")) {
            return false;
        }
        String[] J = ACRA.getConfig().J();
        int length = J.length;
        int i = 0;
        while (i < length) {
            if (field.getName().matches(J[i])) {
                return false;
            }
            i++;
        }
        return true;
    }

    public static String b(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        Field[] fields = Secure.class.getFields();
        int length = fields.length;
        int i = 0;
        while (i < length) {
            Field field = fields[i];
            if (!field.isAnnotationPresent(Deprecated.class) && field.getType() == String.class && a(field)) {
                try {
                    String string = Secure.getString(context.getContentResolver(), (String) field.get(null));
                    if (string != null) {
                        stringBuilder.append(field.getName()).append("=").append(string).append("\n");
                    }
                } catch (IllegalArgumentException e) {
                    Log.w(ACRA.LOG_TAG, "Error : ", e);
                } catch (IllegalAccessException e2) {
                    Log.w(ACRA.LOG_TAG, "Error : ", e2);
                }
            }
            i++;
        }
        return stringBuilder.toString();
    }

    public static String c(Context context) {
        if (a.a() < 17) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        try {
            Class forName = Class.forName("android.provider.Settings$Global");
            Field[] fields = forName.getFields();
            Method method = forName.getMethod("getString", new Class[]{ContentResolver.class, String.class});
            int length = fields.length;
            int i = 0;
            while (i < length) {
                Field field = fields[i];
                if (!field.isAnnotationPresent(Deprecated.class) && field.getType() == String.class && a(field)) {
                    Object invoke = method.invoke(null, new Object[]{context.getContentResolver(), (String) field.get(null)});
                    if (invoke != null) {
                        stringBuilder.append(field.getName()).append("=").append(invoke).append("\n");
                    }
                }
                i++;
            }
        } catch (IllegalArgumentException e) {
            Log.w(ACRA.LOG_TAG, "Error : ", e);
        } catch (IllegalAccessException e2) {
            Log.w(ACRA.LOG_TAG, "Error : ", e2);
        } catch (ClassNotFoundException e3) {
            Log.w(ACRA.LOG_TAG, "Error : ", e3);
        } catch (SecurityException e4) {
            Log.w(ACRA.LOG_TAG, "Error : ", e4);
        } catch (NoSuchMethodException e5) {
            Log.w(ACRA.LOG_TAG, "Error : ", e5);
        } catch (InvocationTargetException e6) {
            Log.w(ACRA.LOG_TAG, "Error : ", e6);
        }
        return stringBuilder.toString();
    }
}