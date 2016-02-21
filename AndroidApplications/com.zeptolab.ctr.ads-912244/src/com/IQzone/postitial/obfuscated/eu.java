package com.IQzone.postitial.obfuscated;

import java.util.HashMap;
import java.util.Map;

public class eu {
    private static final ql a;
    private static final dy b;
    private final Map c;

    static {
        a = new ql();
        b = new ev();
    }

    public eu() {
        this.c = new HashMap();
    }

    public final dy a(dz dzVar) {
        dy dyVar = (dy) this.c.get(dzVar);
        ql qlVar = a;
        new StringBuilder("launcher for ").append(dzVar).append(" ").append(dyVar == b).toString();
        return dyVar != null ? dyVar : b;
    }

    public final void a(dz dzVar, Object obj) {
        if (dzVar == null) {
            throw new NullPointerException("<LauncherFactory><1>, Parameters cannot be null");
        }
        if (obj == null) {
            obj = b;
        }
        ql qlVar = a;
        new StringBuilder("putting for type ").append(dzVar).append(" ").append(dyVar == b).toString();
        this.c.put(dzVar, dyVar);
    }
}