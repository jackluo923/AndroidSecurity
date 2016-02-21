package a.a.a;

import a.a.b.a;
import a.a.h;
import a.a.l;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class b extends a.a.b {
    private final Field[] a;
    private final ClassLoader b;
    private final Constructor c;
    private final Class d;
    private final String[] e;
    private final a.a.b[] f;
    private final a.a.b[] g;
    private a.a.b h;

    private b(String str, String str2, boolean z, Class cls, Field[] fieldArr, Constructor constructor, int i, Class cls2, String[] strArr) {
        super(str, str2, z, cls);
        this.c = constructor;
        this.a = fieldArr;
        this.d = cls2;
        this.e = strArr;
        this.g = new a.a.b[i];
        this.f = new a.a.b[fieldArr.length];
        this.b = cls.getClassLoader();
    }

    public static a.a.b a(Class cls, boolean z) {
        Constructor constructor;
        String a;
        boolean isAnnotationPresent = cls.isAnnotationPresent(Singleton.class);
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        Class cls2 = cls;
        while (cls2 != Object.class) {
            Field[] declaredFields = cls2.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (i < length) {
                Field field = declaredFields[i];
                if (!field.isAnnotationPresent(Inject.class) || Modifier.isStatic(field.getModifiers()) || (field.getModifiers() & 2) == 0) {
                    field.setAccessible(true);
                    arrayList2.add(field);
                    arrayList.add(h.b(field.getGenericType(), field.getAnnotations(), field));
                } else {
                    throw new IllegalStateException("Can't inject private field: " + field);
                }
                i++;
            }
            cls2 = cls2.getSuperclass();
        }
        Constructor[] a2 = a(cls);
        int length2 = a2.length;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < length2) {
            Constructor constructor2 = a2[i2];
            if (constructor2.isAnnotationPresent(Inject.class) && constructor == null) {
                Constructor constructor3 = constructor2;
            } else {
                throw new a(cls.getName(), "has too many injectable constructors");
            }
            i2++;
        }
        if (constructor3 != null || arrayList2.isEmpty()) {
            if (z) {
                throw new a(cls.getName(), "has no injectable members. Do you want to add an injectable constructor?");
            }
            constructor = constructor3;
        } else {
            try {
                constructor = cls.getDeclaredConstructor(new Class[0]);
            } catch (NoSuchMethodException e) {
                constructor = constructor3;
            }
        }
        if (constructor != null) {
            if ((constructor.getModifiers() & 2) != 0) {
                throw new IllegalStateException("Can't inject private constructor: " + constructor);
            }
            a = h.a((Type)cls);
            constructor.setAccessible(true);
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            length2 = genericParameterTypes.length;
            if (length2 != 0) {
                Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
                int i3 = 0;
                while (i3 < genericParameterTypes.length) {
                    arrayList.add(h.b(genericParameterTypes[i3], parameterAnnotations[i3], constructor));
                    i3++;
                }
            }
        } else if (isAnnotationPresent) {
            throw new IllegalArgumentException("No injectable constructor on @Singleton " + cls.getName());
        } else {
            a = null;
            length2 = 0;
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null) {
            if (h.e(superclass.getName())) {
                superclass = null;
            } else {
                arrayList.add(h.a(superclass));
            }
        }
        return new b(a, h.a(cls), isAnnotationPresent, cls, (Field[]) arrayList2.toArray(new Field[arrayList2.size()]), constructor, length2, superclass, (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    private static Constructor[] a(Class cls) {
        return cls.getDeclaredConstructors();
    }

    public void attach(l lVar) {
        int i = 0;
        int i2 = 0;
        while (i < this.a.length) {
            if (this.f[i] == null) {
                this.f[i] = lVar.a(this.e[i2], this.a[i], this.b);
            }
            i2++;
            i++;
        }
        if (this.c != null) {
            i = 0;
            while (i < this.g.length) {
                if (this.g[i] == null) {
                    this.g[i] = lVar.a(this.e[i2], this.c, this.b);
                }
                i2++;
                i++;
            }
        }
        if (this.d != null && this.h == null) {
            this.h = lVar.a(this.e[i2], this.membersKey, this.b, false, true);
        }
    }

    public Object get() {
        if (this.c == null) {
            throw new UnsupportedOperationException();
        }
        Object[] objArr = new Object[this.g.length];
        int i = 0;
        while (i < this.g.length) {
            objArr[i] = this.g[i].get();
            i++;
        }
        try {
            Object newInstance = this.c.newInstance(objArr);
            injectMembers(newInstance);
            return newInstance;
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            throw (cause instanceof RuntimeException ? (RuntimeException) cause : new RuntimeException(cause));
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException(e3);
        }
    }

    public void getDependencies(Set set, Set set2) {
        if (this.g != null) {
            Collections.addAll(set, this.g);
        }
        Collections.addAll(set2, this.f);
        if (this.h != null) {
            set2.add(this.h);
        }
    }

    public void injectMembers(Object obj) {
        int i = 0;
        while (i < this.a.length) {
            try {
                this.a[i].set(obj, this.f[i].get());
                i++;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
        if (this.h != null) {
            this.h.injectMembers(obj);
        }
    }

    public String toString() {
        return this.provideKey != null ? this.provideKey : this.membersKey;
    }
}