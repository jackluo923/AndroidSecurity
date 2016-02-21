package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class UnsafeAllocator {

    final class AnonymousClass_1 extends UnsafeAllocator {
        final /* synthetic */ Method val$allocateInstance;
        final /* synthetic */ Object val$unsafe;

        AnonymousClass_1(Method method, Object obj) {
            this.val$allocateInstance = method;
            this.val$unsafe = obj;
        }

        public Object newInstance(Class cls) {
            return this.val$allocateInstance.invoke(this.val$unsafe, new Object[]{cls});
        }
    }

    final class AnonymousClass_2 extends UnsafeAllocator {
        final /* synthetic */ Method val$newInstance;

        AnonymousClass_2(Method method) {
            this.val$newInstance = method;
        }

        public Object newInstance(Class cls) {
            return this.val$newInstance.invoke(null, new Object[]{cls, Object.class});
        }
    }

    final class AnonymousClass_3 extends UnsafeAllocator {
        final /* synthetic */ int val$constructorId;
        final /* synthetic */ Method val$newInstance;

        AnonymousClass_3(Method method, int i) {
            this.val$newInstance = method;
            this.val$constructorId = i;
        }

        public Object newInstance(Class cls) {
            return this.val$newInstance.invoke(null, new Object[]{cls, Integer.valueOf(this.val$constructorId)});
        }
    }

    public static UnsafeAllocator create() {
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
                    return new UnsafeAllocator() {
                        public Object newInstance(Class cls) {
                            throw new UnsupportedOperationException("Cannot allocate " + cls);
                        }
                    };
                }
            }
        }
    }

    public abstract Object newInstance(Class cls);
}