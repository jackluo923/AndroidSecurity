package com.admarvel.android.ads;

import android.content.Context;
import com.admarvel.android.util.Logging;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public abstract class AdMarvelAnalyticsAdapter {
    protected AdMarvelAnalyticsAdapter(Context context) {
    }

    protected static AdMarvelAnalyticsAdapter createInstance(String str, Context context) {
        return (AdMarvelAnalyticsAdapter) createObject(str, context);
    }

    private static Object createObject(String str, Context context) {
        Object obj = null;
        try {
            Constructor declaredConstructor = Class.forName(str).getDeclaredConstructor(new Class[]{Context.class});
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(new Object[]{context});
        } catch (InstantiationException e) {
            Logging.log(e.getMessage());
            return obj;
        } catch (IllegalAccessException e2) {
            Logging.log(e2.getMessage());
            return obj;
        } catch (ClassNotFoundException e3) {
            Logging.log(e3.getMessage());
            return obj;
        } catch (NoSuchMethodException e4) {
            Logging.log(e4.getMessage());
            return obj;
        } catch (IllegalArgumentException e5) {
            Logging.log(e5.getMessage());
            return obj;
        } catch (InvocationTargetException e6) {
            Logging.log(e6.getMessage());
            return obj;
        }
    }

    public abstract String getAdapterAnalyticsVersion();

    public abstract Map getEnhancedTargetParams(String str, Map map);

    public abstract void onAdClick(String str, int i, Map map, String str2, String str3);

    public abstract void onFailedToReceiveAd(String str, int i, Map map, String str2);

    public abstract void onReceiveAd(String str, int i, Map map, String str2);

    public abstract void pause();

    public abstract void resume();

    public abstract void start();

    public abstract void stop();
}