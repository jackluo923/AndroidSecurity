package com.mopub.mobileads;

import java.util.Map;

abstract class MraidCommand {
    protected Map a;
    protected MraidView b;

    MraidCommand(Map map, MraidView mraidView) {
        this.a = map;
        this.b = mraidView;
    }

    protected int a(String str) {
        String str2 = (String) this.a.get(str);
        if (str2 == null) {
            return -1;
        }
        try {
            return Integer.parseInt(str2, 10);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    abstract void a();

    protected String b(String str) {
        return (String) this.a.get(str);
    }

    protected boolean c(String str) {
        return "true".equals(this.a.get(str));
    }
}