package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.BitSet;

final class af extends ak {
    af() {
    }

    public BitSet a(a aVar) {
        if (aVar.f() == d.i) {
            aVar.j();
            return null;
        } else {
            BitSet bitSet = new BitSet();
            aVar.a();
            d f = aVar.f();
            int i = 0;
            while (f != d.b) {
                boolean z;
                switch (AnonymousClass_1.a[f.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        z = aVar.m() != 0;
                        break;
                    case GoogleScorer.CLIENT_PLUS:
                        z = aVar.i();
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        String h = aVar.h();
                        try {
                            z = Integer.parseInt(h) != 0;
                        } catch (NumberFormatException e) {
                            throw new com.millennialmedia.a.a.af("Error: Expecting: bitset number value (1, 0), Found: " + h);
                        }
                        break;
                    default:
                        throw new com.millennialmedia.a.a.af("Invalid bitset value type: " + f);
                }
                if (z) {
                    bitSet.set(i);
                }
                i++;
                f = aVar.f();
            }
            aVar.b();
            return bitSet;
        }
    }

    public void a(e eVar, BitSet bitSet) {
        if (bitSet == null) {
            eVar.f();
        } else {
            eVar.b();
            int i = 0;
            while (i < bitSet.length()) {
                eVar.a((long) (bitSet.get(i) ? 1 : 0));
                i++;
            }
            eVar.c();
        }
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}