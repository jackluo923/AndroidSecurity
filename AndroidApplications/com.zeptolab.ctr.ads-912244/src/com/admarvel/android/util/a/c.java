package com.admarvel.android.util.a;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class c {

    public static class a {
        private final Object a;
        private final String b;
        private Class c;
        private List d;
        private List e;
        private boolean f;
        private boolean g;

        public a(Object obj, String str) {
            this.a = obj;
            this.b = str;
            this.d = new ArrayList();
            this.e = new ArrayList();
            this.c = obj != null ? obj.getClass() : null;
        }

        public com.admarvel.android.util.a.c.a a_(Class cls) {
            this.g = true;
            this.c = cls;
            return this;
        }

        public com.admarvel.android.util.a.c.a a_(Class cls, Object obj) {
            this.d.add(cls);
            this.e.add(obj);
            return this;
        }

        public Object a_() {
            Method a = c.a(this.c, this.b, (Class[]) this.d.toArray(new Class[this.d.size()]));
            if (this.f) {
                a.setAccessible(true);
            }
            Object[] toArray = this.e.toArray();
            return this.g ? a.invoke(null, toArray) : a.invoke(this.a, toArray);
        }
    }

    public static Method a(Class cls, String str, Class... clsArr) {
        while (i != 0) {
            try {
                return i.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
                cls = i.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }
}