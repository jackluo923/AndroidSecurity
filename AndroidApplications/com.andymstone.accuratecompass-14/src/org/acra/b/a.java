package org.acra.b;

import android.content.Context;
import android.os.Build.VERSION;
import java.lang.reflect.Field;

public final class a {
    public static int a_() {
        try {
            return VERSION.class.getField("SDK_INT").getInt(null);
        } catch (SecurityException e) {
            return Integer.parseInt(VERSION.SDK);
        } catch (NoSuchFieldException e2) {
            return Integer.parseInt(VERSION.SDK);
        } catch (IllegalArgumentException e3) {
            return Integer.parseInt(VERSION.SDK);
        } catch (IllegalAccessException e4) {
            return Integer.parseInt(VERSION.SDK);
        }
    }

    public static String b() {
        Field field = Context.class.getField("DROPBOX_SERVICE");
        return field != null ? (String) field.get(null) : null;
    }
}