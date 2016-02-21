package a.a;

public abstract class r {
    public final boolean complete;
    public final Class[] includes;
    public final String[] injectableTypes;
    public final boolean library;
    public final Class moduleClass;
    public final boolean overrides;
    public final Class[] staticInjections;

    protected r(Class cls, String[] strArr, Class[] clsArr, boolean z, Class[] clsArr2, boolean z2, boolean z3) {
        this.moduleClass = cls;
        this.injectableTypes = strArr;
        this.staticInjections = clsArr;
        this.overrides = z;
        this.includes = clsArr2;
        this.complete = z2;
        this.library = z3;
    }

    public final boolean equals(r rVar) {
        if (rVar == this) {
            return true;
        }
        if (!(rVar instanceof r)) {
            return false;
        }
        return this.moduleClass.equals(rVar.moduleClass);
    }

    public void getBindings(d dVar, Object obj) {
    }

    public final int hashCode() {
        return this.moduleClass.hashCode();
    }

    protected Object newModule() {
        throw new UnsupportedOperationException("No no-args constructor on " + getClass().getName());
    }
}