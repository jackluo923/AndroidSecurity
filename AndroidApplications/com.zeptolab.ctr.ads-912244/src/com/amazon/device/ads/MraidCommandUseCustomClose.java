package com.amazon.device.ads;

import java.util.Map;

class MraidCommandUseCustomClose extends MraidCommand {
    MraidCommandUseCustomClose(Map map, MraidView mraidView) {
        super(map, mraidView);
    }

    void a() {
        this.b.i().b(d("shouldUseCustomClose"));
    }
}