package a.a;

import a.a.a.a;
import a.a.a.b;
import a.a.a.c;

public final class f extends n {
    private final q a;

    public f() {
        this.a = new g(this);
    }

    public b a(String str, String str2, ClassLoader classLoader, boolean z) {
        b bVar = (b) a(str2.concat(a.a), classLoader);
        if (bVar != null) {
            return bVar;
        }
        Class a = a(classLoader, str2);
        if (a.equals(Void.class)) {
            throw new IllegalStateException(String.format("Could not load class %s needed for binding %s", new Object[]{str2, str}));
        } else if (a.isInterface()) {
            return null;
        } else {
            return b.a(a, z);
        }
    }

    public r a(Class cls) {
        return (r) this.a.b(cls);
    }

    public w b(Class cls) {
        w wVar = (w) a(cls.getName().concat(a.c), cls.getClassLoader());
        return wVar != null ? wVar : c.a(cls);
    }
}