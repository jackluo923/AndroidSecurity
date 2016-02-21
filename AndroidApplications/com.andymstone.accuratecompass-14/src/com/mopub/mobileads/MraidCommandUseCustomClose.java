package com.mopub.mobileads;

import java.util.Map;

class MraidCommandUseCustomClose extends MraidCommand {
    MraidCommandUseCustomClose(Map map, MraidView mraidView) {
        super(map, mraidView);
    }

    void a() {
        this.b.getDisplayController().b(c("shouldUseCustomClose"));
    }
}