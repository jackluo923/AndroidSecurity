package com.millennialmedia.a.a.b;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class aa {
    public static aa a() {
        try {
            Class forName = Class.forName("sun.misc.Unsafe");
            Field declaredField = forName.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new ab(forName.getMethod("allocateInstance", new Class[]{Class.class}), declaredField.get(null));
        } catch (Exception e) {
            try {
                Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newInstance", new Class[]{Class.class, Class.class});
                declaredMethod.setAccessible(true);
                return new ac(declaredMethod);
            } catch (Exception e2) {
                try {
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", new Class[]{Class.class});
                    declaredMethod2.setAccessible(true);
                    int intValue = ((Integer) declaredMethod2.invoke(null, new Object[]{Object.class})).intValue();
                    Method declaredMethod3 = ObjectStreamClass.class.getDeclaredMethod("newInstance", new Class[]{Class.class, Integer.TYPE});
                    declaredMethod3.setAccessible(true);
                    return new ad(declaredMethod3, intValue);
                } catch (Exception e3) {
                    return new ae();
                }
            }
        }
    }

    public abstract Object a(Class cls);
}