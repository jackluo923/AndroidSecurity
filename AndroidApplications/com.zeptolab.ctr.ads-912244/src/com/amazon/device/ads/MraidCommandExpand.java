package com.amazon.device.ads;

import com.google.android.gms.plus.PlusShare;
import java.util.Map;

class MraidCommandExpand extends MraidCommand {
    MraidCommandExpand(Map map, MraidView mraidView) {
        super(map, mraidView);
    }

    void a() {
        int a = a("w");
        int a2 = a("h");
        String b = b(PlusShare.KEY_CALL_TO_ACTION_URL);
        boolean d = d("shouldUseCustomClose");
        boolean d2 = d("lockOrientation");
        if (a <= 0) {
            a = this.b.i().b;
        }
        if (a2 <= 0) {
            a2 = this.b.i().c;
        }
        this.b.i().a(b, a, a2, d, d2);
    }
}