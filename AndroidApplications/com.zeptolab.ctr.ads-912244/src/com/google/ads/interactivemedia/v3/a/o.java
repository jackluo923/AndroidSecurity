package com.google.ads.interactivemedia.v3.a;

import com.google.ads.interactivemedia.v3.a.b.g;
import java.util.Set;

public final class o extends l {
    private final g a;

    public o() {
        this.a = new g();
    }

    public final void a(String str, Object obj) {
        if (obj == null) {
            obj = n.a;
        }
        this.a.put(str, obj);
    }

    public final boolean equals(o oVar) {
        return oVar == this || (oVar instanceof o && oVar.a.equals(this.a));
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final Set n() {
        return this.a.entrySet();
    }
}