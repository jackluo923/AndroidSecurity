package me.kiip.internal.a;

public class n {
    public final Object a;
    public final me.kiip.internal.a.b.a b;
    public final s c;
    public boolean d;

    public static interface a {
        void a_(s sVar);
    }

    public static interface b {
        void a(Object obj);
    }

    private n(Object obj, me.kiip.internal.a.b.a aVar) {
        this.d = false;
        this.a = obj;
        this.b = aVar;
        this.c = null;
    }

    private n(s sVar) {
        this.d = false;
        this.a = null;
        this.b = null;
        this.c = sVar;
    }

    public static n a(Object obj, me.kiip.internal.a.b.a aVar) {
        return new n(obj, aVar);
    }

    public static n a(s sVar) {
        return new n(sVar);
    }

    public boolean a() {
        return this.c == null;
    }
}