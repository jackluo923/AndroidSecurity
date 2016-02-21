package com.a.b;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class e extends d {
    private static final String a = "get";
    private static final String b = "is";
    private static final String c = "set";
    private Method d;
    private Method e;
    private Field f;

    public e(Class cls, Class cls2, String str) {
        super(cls2, str);
        char toUpperCase = Character.toUpperCase(str.charAt(0));
        String str2 = toUpperCase + str.substring(1);
        String str3 = a + str2;
        try {
            this.e = cls.getMethod(str3, (Class[]) 0);
        } catch (NoSuchMethodException e) {
            try {
                this.e = cls.getDeclaredMethod(str3, (Class[]) 0);
                this.e.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                str3 = b + str2;
                try {
                    this.e = cls.getMethod(str3, (Class[]) 0);
                } catch (NoSuchMethodException e3) {
                    try {
                        this.e = cls.getDeclaredMethod(str3, (Class[]) 0);
                        this.e.setAccessible(true);
                    } catch (NoSuchMethodException e4) {
                        this.f = cls.getField(str);
                        returnType = this.f.getType();
                        if (!a(cls2, returnType)) {
                            throw new c("Underlying type (" + returnType + ") " + "does not match Property type (" + cls2 + ")");
                        }
                    } catch (NoSuchFieldException e5) {
                        throw new c("No accessor method or field found for property with name " + str);
                    }
                }
            }
        }
        Class returnType2 = this.e.getReturnType();
        if (a(cls2, returnType2)) {
            str2 = c + str2;
            try {
                this.d = cls.getDeclaredMethod(str2, new Class[]{returnType2});
                this.d.setAccessible(true);
            } catch (NoSuchMethodException e6) {
            }
        } else {
            throw new c("Underlying type (" + returnType2 + ") " + "does not match Property type (" + cls2 + ")");
        }
    }

    private boolean a(Class cls, Class cls2) {
        if (cls2 == cls) {
            return true;
        }
        if (!cls2.isPrimitive()) {
            return false;
        }
        if (!(cls2 == Float.TYPE && cls == Float.class)) {
            if (!(cls2 == Integer.TYPE && cls == Integer.class)) {
                if (!(cls2 == Boolean.TYPE && cls == Boolean.class)) {
                    if (!(cls2 == Long.TYPE && cls == Long.class)) {
                        if (!(cls2 == Double.TYPE && cls == Double.class)) {
                            if (!(cls2 == Short.TYPE && cls == Short.class)) {
                                if (!((cls2 == Byte.TYPE && cls == Byte.class) || (cls2 == Character.TYPE && cls == Character.class))) {
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    public Object a(Object obj) {
        if (this.e != null) {
            try {
                return this.e.invoke(obj, (Object[]) 0);
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        } else if (this.f != null) {
            try {
                return this.f.get(obj);
            } catch (IllegalAccessException e3) {
                throw new AssertionError();
            }
        } else {
            throw new AssertionError();
        }
    }

    public void a(Object obj, Object obj2) {
        if (this.d != null) {
            try {
                this.d.invoke(obj, new Object[]{obj2});
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        } else if (this.f != null) {
            try {
                this.f.set(obj, obj2);
            } catch (IllegalAccessException e3) {
                throw new AssertionError();
            }
        } else {
            throw new UnsupportedOperationException("Property " + b() + " is read-only");
        }
    }

    public boolean a() {
        return this.d == null && this.f == null;
    }
}