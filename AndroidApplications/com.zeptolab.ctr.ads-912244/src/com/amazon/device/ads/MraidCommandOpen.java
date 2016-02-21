package com.amazon.device.ads;

import com.google.android.gms.plus.PlusShare;
import java.util.Map;

class MraidCommandOpen extends MraidCommand {
    MraidCommandOpen(Map map, MraidView mraidView) {
        super(map, mraidView);
    }

    void a() {
        this.b.h().a(b(PlusShare.KEY_CALL_TO_ACTION_URL));
    }
}