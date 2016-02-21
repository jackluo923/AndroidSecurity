package org.acra.b;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.Display;
import android.view.WindowManager;
import com.andymstone.compasslib.v;
import com.andymstone.core.o;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.acra.ACRA;

final class f {
    static final SparseArray a;
    static final SparseArray b;

    static {
        a = new SparseArray();
        b = new SparseArray();
    }

    private static Object a(Display display) {
        display.getMetrics(new DisplayMetrics());
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(e(display));
        stringBuilder.append(f(display));
        stringBuilder.append(display.getDisplayId()).append(".height=").append(display.getHeight()).append('\n');
        stringBuilder.append(b(display, "getMetrics"));
        stringBuilder.append(g(display));
        stringBuilder.append(display.getDisplayId()).append(".orientation=").append(display.getOrientation()).append('\n');
        stringBuilder.append(display.getDisplayId()).append(".pixelFormat=").append(display.getPixelFormat()).append('\n');
        stringBuilder.append(b(display, "getRealMetrics"));
        stringBuilder.append(a(display, "getRealSize"));
        stringBuilder.append(d(display));
        stringBuilder.append(display.getDisplayId()).append(".refreshRate=").append(display.getRefreshRate()).append('\n');
        stringBuilder.append(c(display));
        stringBuilder.append(a(display, "getSize"));
        stringBuilder.append(display.getDisplayId()).append(".width=").append(display.getWidth()).append('\n');
        stringBuilder.append(b(display));
        return stringBuilder.toString();
    }

    private static Object a(Display display, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            Method method = display.getClass().getMethod(str, new Class[]{Point.class});
            Point point = new Point();
            method.invoke(display, new Object[]{point});
            stringBuilder.append(display.getDisplayId()).append('.').append(str).append("=[").append(point.x).append(',').append(point.y).append(']').append('\n');
        } catch (SecurityException e) {
        } catch (NoSuchMethodException e2) {
        } catch (IllegalArgumentException e3) {
        } catch (IllegalAccessException e4) {
        } catch (InvocationTargetException e5) {
        }
        return stringBuilder.toString();
    }

    public static String a(Context context) {
        ?[] Arr;
        StringBuilder stringBuilder = new StringBuilder();
        Display[] displayArr;
        if (a.a() < 17) {
            displayArr = new Display[]{((WindowManager) context.getSystemService("window")).getDefaultDisplay()};
        } else {
            try {
                Object systemService = context.getSystemService((String) context.getClass().getField("DISPLAY_SERVICE").get(null));
                displayArr = (Display[]) systemService.getClass().getMethod("getDisplays", new Class[0]).invoke(systemService, new Object[0]);
            } catch (IllegalArgumentException e) {
                ACRA.log.a(ACRA.LOG_TAG, "Error while collecting DisplayManager data: ", e);
                Arr = null;
            } catch (SecurityException e2) {
                ACRA.log.a(ACRA.LOG_TAG, "Error while collecting DisplayManager data: ", e2);
                Arr = null;
            } catch (IllegalAccessException e3) {
                ACRA.log.a(ACRA.LOG_TAG, "Error while collecting DisplayManager data: ", e3);
                Arr = null;
            } catch (NoSuchFieldException e4) {
                ACRA.log.a(ACRA.LOG_TAG, "Error while collecting DisplayManager data: ", e4);
                Arr = null;
            } catch (NoSuchMethodException e5) {
                ACRA.log.a(ACRA.LOG_TAG, "Error while collecting DisplayManager data: ", e5);
                Arr = null;
            } catch (InvocationTargetException e6) {
                ACRA.log.a(ACRA.LOG_TAG, "Error while collecting DisplayManager data: ", e6);
                Arr = null;
            }
        }
        int length = Arr.length;
        int i = 0;
        while (i < length) {
            stringBuilder.append(a(Arr[i]));
            i++;
        }
        return stringBuilder.toString();
    }

    private static String a(SparseArray sparseArray, int i) {
        StringBuilder stringBuilder = new StringBuilder();
        int i2 = 0;
        while (i2 < sparseArray.size()) {
            int keyAt = sparseArray.keyAt(i2) & i;
            if (keyAt > 0) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append('+');
                }
                stringBuilder.append((String) sparseArray.get(keyAt));
            }
            i2++;
        }
        return stringBuilder.toString();
    }

    private static Object b(Display display) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            stringBuilder.append(display.getDisplayId()).append(".isValid=").append((Boolean) display.getClass().getMethod("isValid", new Class[0]).invoke(display, new Object[0])).append('\n');
        } catch (SecurityException e) {
        } catch (NoSuchMethodException e2) {
        } catch (IllegalArgumentException e3) {
        } catch (IllegalAccessException e4) {
        } catch (InvocationTargetException e5) {
        }
        return stringBuilder.toString();
    }

    private static Object b(Display display, String str) {
        int i = 0;
        StringBuilder stringBuilder = new StringBuilder();
        try {
            DisplayMetrics displayMetrics = (DisplayMetrics) display.getClass().getMethod(str, new Class[0]).invoke(display, new Object[0]);
            Field[] fields = DisplayMetrics.class.getFields();
            int length = fields.length;
            while (i < length) {
                Field field = fields[i];
                if (field.getType().equals(Integer.class) && field.getName().startsWith("DENSITY_") && !field.getName().equals("DENSITY_DEFAULT")) {
                    b.put(field.getInt(null), field.getName());
                }
                i++;
            }
            stringBuilder.append(display.getDisplayId()).append('.').append(str).append(".density=").append(displayMetrics.density).append('\n');
            stringBuilder.append(display.getDisplayId()).append('.').append(str).append(".densityDpi=").append(displayMetrics.getClass().getField("densityDpi")).append('\n');
            stringBuilder.append(display.getDisplayId()).append('.').append(str).append("scaledDensity=x").append(displayMetrics.scaledDensity).append('\n');
            stringBuilder.append(display.getDisplayId()).append('.').append(str).append(".widthPixels=").append(displayMetrics.widthPixels).append('\n');
            stringBuilder.append(display.getDisplayId()).append('.').append(str).append(".heightPixels=").append(displayMetrics.heightPixels).append('\n');
            stringBuilder.append(display.getDisplayId()).append('.').append(str).append(".xdpi=").append(displayMetrics.xdpi).append('\n');
            stringBuilder.append(display.getDisplayId()).append('.').append(str).append(".ydpi=").append(displayMetrics.ydpi).append('\n');
        } catch (SecurityException e) {
        } catch (NoSuchMethodException e2) {
        } catch (IllegalArgumentException e3) {
        } catch (IllegalAccessException e4) {
        } catch (InvocationTargetException e5) {
        } catch (NoSuchFieldException e6) {
        }
        return stringBuilder.toString();
    }

    private static Object c(Display display) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            int intValue = ((Integer) display.getClass().getMethod("getRotation", new Class[0]).invoke(display, new Object[0])).intValue();
            stringBuilder.append(display.getDisplayId()).append(".rotation=");
            switch (intValue) {
                case v.DropShadowView_cornerRadius:
                    stringBuilder.append("ROTATION_0");
                    break;
                case o.MyAlertDialog_myAlertDialogAccentColor:
                    stringBuilder.append("ROTATION_90");
                    break;
                case o.MyAlertDialog_myAlertDialogButtonDrawable:
                    stringBuilder.append("ROTATION_180");
                    break;
                case o.MyAlertDialog_MAD_titleStyle:
                    stringBuilder.append("ROTATION_270");
                    break;
                default:
                    stringBuilder.append(intValue);
                    break;
            }
            stringBuilder.append('\n');
        } catch (SecurityException e) {
        } catch (NoSuchMethodException e2) {
        } catch (IllegalArgumentException e3) {
        } catch (IllegalAccessException e4) {
        } catch (InvocationTargetException e5) {
        }
        return stringBuilder.toString();
    }

    private static Object d(Display display) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            Method method = display.getClass().getMethod("getRectSize", new Class[]{Rect.class});
            Rect rect = new Rect();
            method.invoke(display, new Object[]{rect});
            stringBuilder.append(display.getDisplayId()).append(".rectSize=[").append(rect.top).append(',').append(rect.left).append(',').append(rect.width()).append(',').append(rect.height()).append(']').append('\n');
        } catch (SecurityException e) {
        } catch (NoSuchMethodException e2) {
        } catch (IllegalArgumentException e3) {
        } catch (IllegalAccessException e4) {
        } catch (InvocationTargetException e5) {
        }
        return stringBuilder.toString();
    }

    private static String e(Display display) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            Method method = display.getClass().getMethod("getCurrentSizeRange", new Class[]{Point.class, Point.class});
            Point point = new Point();
            Point point2 = new Point();
            method.invoke(display, new Object[]{point, point2});
            stringBuilder.append(display.getDisplayId()).append(".currentSizeRange.smallest=[").append(point.x).append(',').append(point.y).append(']').append('\n');
            stringBuilder.append(display.getDisplayId()).append(".currentSizeRange.largest=[").append(point2.x).append(',').append(point2.y).append(']').append('\n');
        } catch (SecurityException e) {
        } catch (NoSuchMethodException e2) {
        } catch (IllegalArgumentException e3) {
        } catch (IllegalAccessException e4) {
        } catch (InvocationTargetException e5) {
        }
        return stringBuilder.toString();
    }

    private static String f_(Display display) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            int intValue = ((Integer) display.getClass().getMethod("getFlags", new Class[0]).invoke(display, new Object[0])).intValue();
            Field[] fields = display.getClass().getFields();
            int length = fields.length;
            int i = 0;
            while (i < length) {
                Field field = fields[i];
                if (field.getName().startsWith("FLAG_")) {
                    a.put(field.getInt(null), field.getName());
                }
                i++;
            }
            stringBuilder.append(display.getDisplayId()).append(".flags=").append(a(a, intValue)).append('\n');
        } catch (SecurityException e) {
        } catch (NoSuchMethodException e2) {
        } catch (IllegalArgumentException e3) {
        } catch (IllegalAccessException e4) {
        } catch (InvocationTargetException e5) {
        }
        return stringBuilder.toString();
    }

    private static String g(Display display) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            stringBuilder.append(display.getDisplayId()).append(".name=").append((String) display.getClass().getMethod("getName", new Class[0]).invoke(display, new Object[0])).append('\n');
        } catch (SecurityException e) {
        } catch (NoSuchMethodException e2) {
        } catch (IllegalArgumentException e3) {
        } catch (IllegalAccessException e4) {
        } catch (InvocationTargetException e5) {
        }
        return stringBuilder.toString();
    }
}