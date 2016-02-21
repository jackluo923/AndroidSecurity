package org.acra.b;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class n {
    public static String a(Class cls) {
        StringBuilder stringBuilder = new StringBuilder();
        Method[] methods = cls.getMethods();
        int length = methods.length;
        int i = 0;
        while (i < length) {
            Method method = methods[i];
            if (method.getParameterTypes().length == 0) {
                if ((method.getName().startsWith("get") || method.getName().startsWith("is")) && !method.getName().equals("getClass")) {
                    try {
                        stringBuilder.append(method.getName());
                        stringBuilder.append('=');
                        stringBuilder.append(method.invoke(null, null));
                        stringBuilder.append("\n");
                    } catch (IllegalArgumentException e) {
                    } catch (IllegalAccessException e2) {
                    } catch (InvocationTargetException e3) {
                    }
                }
            }
            i++;
        }
        return stringBuilder.toString();
    }

    public static String a(Class cls, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        Field[] fields = cls.getFields();
        int length = fields.length;
        int i = 0;
        while (i < length) {
            Field field = fields[i];
            if (str != null && str.length() > 0) {
                stringBuilder.append(str).append('.');
            }
            stringBuilder.append(field.getName()).append("=");
            try {
                stringBuilder.append(field.get(null).toString());
            } catch (IllegalArgumentException e) {
                stringBuilder.append("N/A");
            } catch (IllegalAccessException e2) {
                stringBuilder.append("N/A");
            }
            stringBuilder.append("\n");
            i++;
        }
        return stringBuilder.toString();
    }

    public static String b(Class cls) {
        return a(cls, "");
    }
}