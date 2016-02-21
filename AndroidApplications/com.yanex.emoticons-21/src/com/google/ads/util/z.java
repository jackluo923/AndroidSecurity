package com.google.ads.util;

import java.util.ArrayList;
import java.util.HashMap;

public abstract class z {
    private static final Object a;
    private static int b;
    private static HashMap c;
    private final ArrayList d;
    public final int u;

    static {
        a = new Object();
        b = 0;
        c = new HashMap();
    }

    public z() {
        this.d = new ArrayList();
        synchronized (a) {
            int i = b;
            b = i + 1;
            this.u = i;
            Integer num = (Integer) c.get(getClass());
            if (num == null) {
                c.put(getClass(), Integer.valueOf(1));
            } else {
                c.put(getClass(), Integer.valueOf(num.intValue() + 1));
            }
        }
        g.d(new StringBuilder("State created: ").append(toString()).toString());
    }

    protected void finalize() {
        synchronized (a) {
            c.put(getClass(), Integer.valueOf(((Integer) c.get(getClass())).intValue() - 1));
        }
        super.finalize();
    }

    public String toString() {
        return getClass().getSimpleName() + "[" + this.u + "]";
    }
}