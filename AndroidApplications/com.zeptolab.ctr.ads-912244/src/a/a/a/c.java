package a.a.a;

import a.a.b;
import a.a.h;
import a.a.l;
import a.a.w;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

public final class c extends w {
    private final ClassLoader a;
    private final Field[] b;
    private b[] c;

    private c(ClassLoader classLoader, Field[] fieldArr) {
        this.b = fieldArr;
        this.a = classLoader;
    }

    public static w a(Class cls) {
        List arrayList = new ArrayList();
        Field[] declaredFields = cls.getDeclaredFields();
        int length = declaredFields.length;
        int i = 0;
        while (i < length) {
            Field field = declaredFields[i];
            if (Modifier.isStatic(field.getModifiers()) && field.isAnnotationPresent(Inject.class)) {
                field.setAccessible(true);
                arrayList.add(field);
            }
            i++;
        }
        if (!arrayList.isEmpty()) {
            return new c(cls.getClassLoader(), (Field[]) arrayList.toArray(new Field[arrayList.size()]));
        }
        throw new IllegalArgumentException("No static injections: " + cls.getName());
    }

    public void a() {
        int i = 0;
        while (i < this.b.length) {
            try {
                this.b[i].set(null, this.c[i].get());
                i++;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    public void a(l lVar) {
        this.c = new b[this.b.length];
        int i = 0;
        while (i < this.b.length) {
            Object obj = this.b[i];
            this.c[i] = lVar.a(h.b(obj.getGenericType(), obj.getAnnotations(), obj), obj, this.a);
            i++;
        }
    }
}