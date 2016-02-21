package com.admarvel.android.util;

import android.content.Context;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.lang.reflect.InvocationTargetException;

public class OptionalUtils {
    public static String getId(Context context) {
        Class cls = null;
        int i = 1;
        int i2 = 0;
        Class[] clsArr = new Class[i];
        clsArr[0] = Context.class;
        String str = AdTrackerConstants.BLANK;
        try {
            Class forName = Class.forName("com.admarvel.androidid.FetchAndroidId");
            try {
                Object newInstance = forName.newInstance();
                i2 = i;
            } catch (ClassNotFoundException e) {
            } catch (InstantiationException e2) {
            } catch (IllegalAccessException e3) {
                cls = forName;
                illegalAccessException = e3;
                illegalAccessException.printStackTrace();
                forName = cls;
                i2 = i;
            }
        } catch (ClassNotFoundException e4) {
            forName = cls;
        } catch (InstantiationException e5) {
            forName = cls;
        } catch (IllegalAccessException e6) {
            IllegalAccessException illegalAccessException2 = e6;
            Class cls2 = cls;
            illegalAccessException2.printStackTrace();
            forName = cls2;
            i2 = i;
        }
        if (i2 != 0) {
            try {
                return (String) forName.getDeclaredMethod("getId", clsArr).invoke(newInstance, new Object[]{context});
            } catch (NoSuchMethodException e7) {
                e7.printStackTrace();
                return str;
            } catch (IllegalArgumentException e8) {
                e8.printStackTrace();
                return str;
            } catch (IllegalAccessException e9) {
                e9.printStackTrace();
                return str;
            } catch (InvocationTargetException e10) {
                e10.printStackTrace();
            }
        }
        return str;
    }
}