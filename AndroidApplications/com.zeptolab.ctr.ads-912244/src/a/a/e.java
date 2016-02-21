package a.a;

final class e extends b {
    private final String a;
    private final ClassLoader b;
    private b c;

    public e(String str, Object obj, ClassLoader classLoader, String str2) {
        super(str, null, false, obj);
        this.b = classLoader;
        this.a = str2;
    }

    public b a() {
        return this.c;
    }

    public void attach(l lVar) {
        this.c = lVar.a(this.a, this.requiredBy, this.b);
    }

    public Object get() {
        return this.c;
    }

    public void injectMembers(Object obj) {
        throw new UnsupportedOperationException();
    }
}