package org.acra.b;

import android.util.SparseArray;
import com.andymstone.core.o;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;

public class l {
    private static final String[] a;
    private static final String[] b;
    private static final String[] c;
    private static final String[] d;
    private static Class e;
    private static Method f;
    private static Class g;
    private static Method h;
    private static Method i;
    private static Method j;
    private static Method k;
    private static Class l;
    private static Field m;
    private static Field n;
    private static Field o;
    private static Field p;
    private static SparseArray q;
    private static SparseArray r;
    private static SparseArray s;
    private static SparseArray t;
    private static SparseArray u;
    private static SparseArray v;
    private static SparseArray w;
    private static SparseArray x;
    private static /* synthetic */ int[] y;

    static {
        int i = 0;
        a = new String[]{"mp4", "mpeg4", "MP4", "MPEG4"};
        b = new String[]{"avc", "h264", "AVC", "H264"};
        c = new String[]{"h263", "H263"};
        d = new String[]{"aac", "AAC"};
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        j = null;
        k = null;
        l = null;
        m = null;
        n = null;
        o = null;
        p = null;
        q = new SparseArray();
        r = new SparseArray();
        s = new SparseArray();
        t = new SparseArray();
        u = new SparseArray();
        v = new SparseArray();
        w = new SparseArray();
        x = new SparseArray();
        e = Class.forName("android.media.MediaCodecList");
        f = e.getMethod("getCodecInfoAt", new Class[]{Integer.TYPE});
        g = Class.forName("android.media.MediaCodecInfo");
        h = g.getMethod("getName", new Class[0]);
        i = g.getMethod("isEncoder", new Class[0]);
        j = g.getMethod("getSupportedTypes", new Class[0]);
        k = g.getMethod("getCapabilitiesForType", new Class[]{String.class});
        l = Class.forName("android.media.MediaCodecInfo$CodecCapabilities");
        m = l.getField("colorFormats");
        n = l.getField("profileLevels");
        Field[] fields = l.getFields();
        int length = fields.length;
        int i2 = 0;
        while (i2 < length) {
            Field field = fields[i2];
            if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers()) && field.getName().startsWith("COLOR_")) {
                q.put(field.getInt(null), field.getName());
            }
            i2++;
        }
        Class forName = Class.forName("android.media.MediaCodecInfo$CodecProfileLevel");
        fields = forName.getFields();
        length = fields.length;
        while (i < length) {
            field = fields[i];
            if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
                if (field.getName().startsWith("AVCLevel")) {
                    r.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("AVCProfile")) {
                    s.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("H263Level")) {
                    t.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("H263Profile")) {
                    u.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("MPEG4Level")) {
                    v.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("MPEG4Profile")) {
                    w.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("AAC")) {
                    x.put(field.getInt(null), field.getName());
                }
            }
            i++;
        }
        o = forName.getField("profile");
        p = forName.getField("level");
    }

    public static String a() {
        StringBuilder stringBuilder = new StringBuilder();
        if (!(e == null || g == null)) {
            try {
                int intValue = ((Integer) e.getMethod("getCodecCount", new Class[0]).invoke(null, new Object[0])).intValue();
                int i = 0;
                while (i < intValue) {
                    stringBuilder.append("\n");
                    Object invoke = f.invoke(null, new Object[]{Integer.valueOf(i)});
                    stringBuilder.append(i).append(": ").append(h.invoke(invoke, new Object[0])).append("\n");
                    stringBuilder.append("isEncoder: ").append(i.invoke(invoke, new Object[0])).append("\n");
                    String[] strArr = (String[]) j.invoke(invoke, new Object[0]);
                    stringBuilder.append("Supported types: ").append(Arrays.toString(strArr)).append("\n");
                    int length = strArr.length;
                    int i2 = 0;
                    while (i2 < length) {
                        stringBuilder.append(a(invoke, strArr[i2]));
                        i2++;
                    }
                    stringBuilder.append("\n");
                    i++;
                }
            } catch (NoSuchMethodException e) {
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
            }
        }
        return stringBuilder.toString();
    }

    private static String a(Object obj, String str) {
        int i;
        int i2 = 0;
        StringBuilder stringBuilder = new StringBuilder();
        Object invoke = k.invoke(obj, new Object[]{str});
        int[] iArr = (int[]) m.get(invoke);
        if (iArr.length > 0) {
            stringBuilder.append(str).append(" color formats:");
            i = 0;
            while (i < iArr.length) {
                stringBuilder.append((String) q.get(iArr[i]));
                if (i < iArr.length - 1) {
                    stringBuilder.append(',');
                }
                i++;
            }
            stringBuilder.append("\n");
        }
        Object[] objArr = (Object[]) n.get(invoke);
        if (objArr.length > 0) {
            stringBuilder.append(str).append(" profile levels:");
            while (i2 < objArr.length) {
                m a = a(obj);
                i = o.getInt(objArr[i2]);
                int i3 = p.getInt(objArr[i2]);
                if (a == null) {
                    stringBuilder.append(i).append('-').append(i3);
                }
                switch (b()[a.ordinal()]) {
                    case o.MyAlertDialog_myAlertDialogAccentColor:
                        stringBuilder.append(i).append((String) s.get(i)).append('-').append((String) r.get(i3));
                        break;
                    case o.MyAlertDialog_myAlertDialogButtonDrawable:
                        stringBuilder.append((String) u.get(i)).append('-').append((String) t.get(i3));
                        break;
                    case o.MyAlertDialog_MAD_titleStyle:
                        stringBuilder.append((String) w.get(i)).append('-').append((String) v.get(i3));
                        break;
                    case o.MyAlertDialog_MAD_buttonBarStyle:
                        stringBuilder.append((String) x.get(i));
                        break;
                }
                if (i2 < objArr.length - 1) {
                    stringBuilder.append(',');
                }
                i2++;
            }
            stringBuilder.append("\n");
        }
        return stringBuilder.append("\n").toString();
    }

    private static m a(Object obj) {
        int i = 0;
        String str = (String) h.invoke(obj, new Object[0]);
        String[] strArr = b;
        int length = strArr.length;
        int i2 = 0;
        while (i2 < length) {
            if (str.contains(strArr[i2])) {
                return m.a;
            }
            i2++;
        }
        strArr = c;
        length = strArr.length;
        i2 = 0;
        while (i2 < length) {
            if (str.contains(strArr[i2])) {
                return m.b;
            }
            i2++;
        }
        strArr = a;
        length = strArr.length;
        i2 = 0;
        while (i2 < length) {
            if (str.contains(strArr[i2])) {
                return m.c;
            }
            i2++;
        }
        String[] strArr2 = d;
        int length2 = strArr2.length;
        while (i < length2) {
            if (str.contains(strArr2[i])) {
                return m.d;
            }
            i++;
        }
        return null;
    }

    static /* synthetic */ int[] b() {
        int[] iArr = y;
        if (iArr == null) {
            iArr = new int[m.values().length];
            try {
                iArr[m.d.ordinal()] = 4;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[m.a.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[m.b.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[m.c.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            y = iArr;
        }
        return iArr;
    }
}