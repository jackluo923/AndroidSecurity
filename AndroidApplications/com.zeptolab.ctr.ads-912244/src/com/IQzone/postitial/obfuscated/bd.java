package com.IQzone.postitial.obfuscated;

import java.util.ArrayList;
import java.util.List;

public final class bd extends a {
    public final String e;
    private final List f;

    public bd(String str, List list, String str2, int i, String str3, String str4) {
        super(str2, i, str3, str4);
        this.f = new ArrayList();
        if (list == null) {
            throw new NullPointerException("<LogEventRequest><1>, Events cannot be null");
        } else if (list.contains(null)) {
            throw new NullPointerException("<LogEventRequest><2>, Events cannot contain null");
        } else {
            this.e = str;
            this.f.addAll(list);
        }
    }

    public final List a() {
        return new ArrayList(this.f);
    }
}