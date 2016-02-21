package a.a;

import a.a.a.a;

class g extends q {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    protected r a(Class cls) {
        r rVar = (r) this.a.a(cls.getName().concat(a.b), cls.getClassLoader());
        if (rVar != null) {
            return rVar;
        }
        throw new IllegalStateException("Module adapter for " + cls + " could not be loaded. " + "Please ensure that code generation was run for this module.");
    }
}