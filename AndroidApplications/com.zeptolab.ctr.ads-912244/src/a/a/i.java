package a.a;

import javax.inject.Qualifier;

final class i extends q {
    i() {
    }

    protected Boolean a(Class cls) {
        return Boolean.valueOf(cls.isAnnotationPresent(Qualifier.class));
    }
}