package me.kiip.internal.k;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class d {
    public static void a(Context context, DisplayMetrics displayMetrics) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        defaultDisplay.getMetrics(displayMetrics);
        try {
            Method method = Display.class.getMethod("getRawWidth", new Class[0]);
            Method method2 = Display.class.getMethod("getRawHeight", new Class[0]);
            displayMetrics.widthPixels = ((Integer) method.invoke(defaultDisplay, new Object[0])).intValue();
            displayMetrics.heightPixels = ((Integer) method2.invoke(defaultDisplay, new Object[0])).intValue();
        } catch (NoSuchMethodException e) {
        } catch (IllegalArgumentException e2) {
        } catch (IllegalAccessException e3) {
        } catch (InvocationTargetException e4) {
        }
    }
}