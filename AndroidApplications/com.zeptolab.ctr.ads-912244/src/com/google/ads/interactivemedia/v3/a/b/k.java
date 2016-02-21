package com.google.ads.interactivemedia.v3.a.b;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class k {

    final class AnonymousClass_1 extends k {
        final /* synthetic */ Method a;
        final /* synthetic */ Object b;

        AnonymousClass_1(Method method, Object obj) {
            this.a = method;
            this.b = obj;
        }

        public final Object a(Class cls) {
            return this.a.invoke(this.b, new Object[]{cls});
        }
    }

    final class AnonymousClass_2 extends k {
        final /* synthetic */ Method a;

        AnonymousClass_2(Method method) {
            this.a = method;
        }

        public final Object a(Class cls) {
            return this.a.invoke(null, new Object[]{cls, Object.class});
        }
    }

    final class AnonymousClass_3 extends k {
        final /* synthetic */ Method a;
        final /* synthetic */ int b;

        AnonymousClass_3(Method method, int i) {
            this.a = method;
            this.b = i;
        }

        public final Object a(Class cls) {
            return this.a.invoke(null, new Object[]{cls, Integer.valueOf(this.b)});
        }
    }

    public static k a() {
        try {
            Class forName = Class.forName("sun.misc.Unsafe");
            Field declaredField = forName.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new AnonymousClass_1(forName.getMethod("allocateInstance", new Class[]{Class.class}), declaredField.get(null));
        } catch (Exception e) {
            try {
                Method declaredMethod = ObjectInputStream.class.getDeclaredMethod("newInstance", new Class[]{Class.class, Class.class});
                declaredMethod.setAccessible(true);
                return new AnonymousClass_2(declaredMethod);
            } catch (Exception e2) {
                try {
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", new Class[]{Class.class});
                    declaredMethod2.setAccessible(true);
                    int intValue = ((Integer) declaredMethod2.invoke(null, new Object[]{Object.class})).intValue();
                    Method declaredMethod3 = ObjectStreamClass.class.getDeclaredMethod("newInstance", new Class[]{Class.class, Integer.TYPE});
                    declaredMethod3.setAccessible(true);
                    return new AnonymousClass_3(declaredMethod3, intValue);
                } catch (Exception e3) {
                    return new k() {
                        public final Object a(Class cls) {
                            throw new UnsupportedOperationException(new StringBuilder("Cannot allocate ").append(cls).toString());
                        }
                    };
                }
            }
        }
    }

    public abstract Object a(Class cls);
}