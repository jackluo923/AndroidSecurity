package a.a;

import a.a;

final class j extends b {
    private static final Object a;
    private final String b;
    private final ClassLoader c;
    private b d;

    static {
        a = new Object();
    }

    public j(String str, Object obj, ClassLoader classLoader, String str2) {
        super(str, null, false, obj);
        this.c = classLoader;
        this.b = str2;
    }

    public a a() {
        return new k(this);
    }

    public void a(a aVar) {
        throw new UnsupportedOperationException();
    }

    public void attach(l lVar) {
        this.d = lVar.a(this.b, this.requiredBy, this.c);
    }

    public /* synthetic */ Object get() {
        return a();
    }

    public /* synthetic */ void injectMembers(Object obj) {
        a((a) obj);
    }
}