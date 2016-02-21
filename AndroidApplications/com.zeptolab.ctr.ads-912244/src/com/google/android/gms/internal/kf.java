package com.google.android.gms.internal;

import com.admarvel.android.ads.Constants;
import com.brightcove.player.media.MediaService;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class kf {
    private static void a(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) {
        if (obj != null) {
            if (obj instanceof ke) {
                int modifiers;
                int length = stringBuffer.length();
                if (str != null) {
                    stringBuffer2.append(stringBuffer).append(bR(str)).append(" <\n");
                    stringBuffer.append("  ");
                }
                Class cls = obj.getClass();
                Field[] fields = cls.getFields();
                int length2 = fields.length;
                int i = 0;
                while (i < length2) {
                    Field field = fields[i];
                    modifiers = field.getModifiers();
                    String name = field.getName();
                    if (!((modifiers & 1) != 1 || (modifiers & 8) == 8 || name.startsWith("_") || name.endsWith("_"))) {
                        Class type = field.getType();
                        Object obj2 = field.get(obj);
                        if (!type.isArray()) {
                            a(name, obj2, stringBuffer, stringBuffer2);
                        } else if (type.getComponentType() == Byte.TYPE) {
                            a(name, obj2, stringBuffer, stringBuffer2);
                        } else {
                            int length3;
                            length3 = obj2 == null ? 0 : Array.getLength(obj2);
                            modifiers = 0;
                            while (modifiers < length3) {
                                a(name, Array.get(obj2, modifiers), stringBuffer, stringBuffer2);
                                modifiers++;
                            }
                        }
                    }
                    i++;
                }
                Method[] methods = cls.getMethods();
                int length4 = methods.length;
                modifiers = 0;
                while (modifiers < length4) {
                    String name2 = methods[modifiers].getName();
                    if (name2.startsWith("set")) {
                        String substring = name2.substring(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                        try {
                            if (((Boolean) cls.getMethod("has" + substring, new Class[0]).invoke(obj, new Object[0])).booleanValue()) {
                                try {
                                    a(substring, cls.getMethod("get" + substring, new Class[0]).invoke(obj, new Object[0]), stringBuffer, stringBuffer2);
                                } catch (NoSuchMethodException e) {
                                }
                            }
                        } catch (NoSuchMethodException e2) {
                        }
                    }
                    modifiers++;
                }
                if (str != null) {
                    stringBuffer.setLength(length);
                    stringBuffer2.append(stringBuffer).append(">\n");
                }
            } else {
                stringBuffer2.append(stringBuffer).append(bR(str)).append(": ");
                if (obj instanceof String) {
                    stringBuffer2.append("\"").append(bS((String) obj)).append("\"");
                } else if (obj instanceof byte[]) {
                    a((byte[]) obj, stringBuffer2);
                } else {
                    stringBuffer2.append(obj);
                }
                stringBuffer2.append(Constants.FORMATTER);
            }
        }
    }

    private static void a(byte[] bArr, StringBuffer stringBuffer) {
        if (bArr == null) {
            stringBuffer.append("\"\"");
        } else {
            stringBuffer.append('\"');
            int i = 0;
            while (i < bArr.length) {
                byte b = bArr[i];
                if (b == (byte) 92 || b == (byte) 34) {
                    stringBuffer.append('\\').append((char) b);
                } else if (b < (byte) 32 || b >= Byte.MAX_VALUE) {
                    stringBuffer.append(String.format("\\%03o", new Object[]{Integer.valueOf(b)}));
                } else {
                    stringBuffer.append((char) b);
                }
                i++;
            }
            stringBuffer.append('\"');
        }
    }

    private static String ap(String str) {
        int length = str.length();
        StringBuilder stringBuilder = new StringBuilder(length);
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt < ' ' || charAt > '~' || charAt == '\"' || charAt == '\'') {
                stringBuilder.append(String.format("\\u%04x", new Object[]{Integer.valueOf(charAt)}));
            } else {
                stringBuilder.append(charAt);
            }
            i++;
        }
        return stringBuilder.toString();
    }

    private static String bR(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (i == 0) {
                stringBuffer.append(Character.toLowerCase(charAt));
            } else if (Character.isUpperCase(charAt)) {
                stringBuffer.append('_').append(Character.toLowerCase(charAt));
            } else {
                stringBuffer.append(charAt);
            }
            i++;
        }
        return stringBuffer.toString();
    }

    private static String bS(String str) {
        if (!str.startsWith(MediaService.DEFAULT_MEDIA_DELIVERY) && str.length() > 200) {
            str = str.substring(0, AdException.INTERNAL_ERROR) + "[...]";
        }
        return ap(str);
    }

    public static String e(ke keVar) {
        if (keVar == null) {
            return AdTrackerConstants.BLANK;
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            a(null, keVar, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e) {
            return "Error printing proto: " + e.getMessage();
        } catch (InvocationTargetException e2) {
            return "Error printing proto: " + e2.getMessage();
        }
    }
}