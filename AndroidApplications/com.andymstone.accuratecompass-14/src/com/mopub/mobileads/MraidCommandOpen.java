package com.mopub.mobileads;

import java.util.Map;

class MraidCommandOpen extends MraidCommand {
    MraidCommandOpen(Map map, MraidView mraidView) {
        super(map, mraidView);
    }

    void a() {
        this.b.getBrowserController().a(b("url"));
    }
}