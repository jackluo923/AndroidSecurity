package com.IQzone.postitial.obfuscated;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class df implements Serializable {
    private static final long a = 7823735927107912282L;
    private final List b;
    private final int c;
    private final String d;
    private final int e;

    public df(List list, int i, String str, int i2) {
        this.b = new ArrayList();
        this.c = i;
        this.d = str;
        this.e = i2;
        if (list == null) {
            throw new NullPointerException("<LogEventRequest><3>, Events cannot be null");
        } else if (list.contains(null)) {
            throw new NullPointerException("<LogEventRequest><4>, Events cannot contain null");
        } else {
            this.b.addAll(list);
        }
    }

    public final int a() {
        return this.c;
    }

    public final String b() {
        return this.d;
    }

    public final int c() {
        return this.e;
    }

    public final List d() {
        return new ArrayList(this.b);
    }
}