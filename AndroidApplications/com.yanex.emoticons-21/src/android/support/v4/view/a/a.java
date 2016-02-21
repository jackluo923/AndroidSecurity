package android.support.v4.view.a;

import android.os.Build.VERSION;

public final class a {
    private static final c a;
    private final Object b;

    static {
        if (VERSION.SDK_INT >= 16) {
            a = new d();
        } else if (VERSION.SDK_INT >= 14) {
            a = new b();
        } else {
            a = new e();
        }
    }

    public a(Object obj) {
        this.b = obj;
    }

    public final Object a_() {
        return this.b;
    }

    public final void a_(int i) {
        a.a(this.b, i);
    }

    public final void a_(CharSequence charSequence) {
        a.a(this.b, charSequence);
    }

    public final void a_(boolean z) {
        a.a(this.b, z);
    }

    public final boolean equals(a aVar) {
        if (this == aVar) {
            return true;
        }
        if (aVar == null) {
            return false;
        }
        if (getClass() != aVar.getClass()) {
            return false;
        }
        aVar = aVar;
        if (this.b == null) {
            return aVar.b == null;
        } else if (this.b.equals(aVar.b)) {
            return true;
        } else {
            return false;
        }
    }

    public final int hashCode() {
        return this.b == null ? 0 : this.b.hashCode();
    }
}