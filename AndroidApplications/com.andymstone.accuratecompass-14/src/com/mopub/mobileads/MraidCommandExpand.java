package com.mopub.mobileads;

import java.util.Map;

class MraidCommandExpand extends MraidCommand {
    MraidCommandExpand(Map map, MraidView mraidView) {
        super(map, mraidView);
    }

    void a() {
        int a = a("w");
        int a2 = a("h");
        String b = b("url");
        boolean c = c("shouldUseCustomClose");
        boolean c2 = c("lockOrientation");
        if (a <= 0) {
            a = this.b.getDisplayController().b;
        }
        if (a2 <= 0) {
            a2 = this.b.getDisplayController().c;
        }
        this.b.getDisplayController().a(b, a, a2, c, c2);
    }
}