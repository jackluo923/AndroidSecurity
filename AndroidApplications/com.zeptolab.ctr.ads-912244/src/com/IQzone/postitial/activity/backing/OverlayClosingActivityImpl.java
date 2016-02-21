package com.IQzone.postitial.activity.backing;

import com.IQzone.postitial.b;
import com.IQzone.postitial.obfuscated.mu;
import com.IQzone.postitial.obfuscated.om;
import com.IQzone.postitial.obfuscated.pq;
import com.IQzone.postitial.obfuscated.ql;
import com.IQzone.postitial.obfuscated.qr;
import com.IQzone.postitial.obfuscated.t;
import java.util.Iterator;
import java.util.Set;

public class OverlayClosingActivityImpl extends t {
    private static final ql a;

    static {
        a = new ql();
    }

    protected final qr d() {
        b a = b.a(this);
        return a != null ? a.a().a() : null;
    }

    protected final Set e() {
        b a = b.a(this);
        return a != null ? a.a().c() : null;
    }

    protected final Set f() {
        b a = b.a(this);
        Set muVar = new mu();
        if (a != null) {
            Set b = a.a().b();
            if (b != null) {
                Iterator it = b.iterator();
                while (it.hasNext()) {
                    try {
                        muVar.add(((pq) it.next()).a(this));
                    } catch (om e) {
                        ql qlVar = a;
                    }
                }
            }
        }
        return muVar;
    }
}