package android.support.v4.c;

import java.util.Map;

// compiled from: ProGuard
class b extends g {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    protected int a() {
        return this.a.h;
    }

    protected int a(Object obj) {
        return obj == null ? this.a.a() : this.a.a(obj, obj.hashCode());
    }

    protected Object a(int i, int i2) {
        return this.a.g[i << 1 + i2];
    }

    protected Object a(int i, Object obj) {
        return this.a.a(i, obj);
    }

    protected void a(int i) {
        this.a.d(i);
    }

    protected void a(Object obj, Object obj2) {
        this.a.put(obj, obj2);
    }

    protected int b_(Object obj) {
        return this.a.a(obj);
    }

    protected Map b_() {
        return this.a;
    }

    protected void c() {
        this.a.clear();
    }
}