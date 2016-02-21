package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.af;
import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.b.s;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import com.zeptolab.ctr.scorer.GoogleScorer;

final class w extends ak {
    w() {
    }

    public Number a(a aVar) {
        d f = aVar.f();
        switch (AnonymousClass_1.a[f.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return new s(aVar.h());
            case GoogleScorer.CLIENT_APPSTATE:
                aVar.j();
                return null;
            default:
                throw new af("Expecting number, got: " + f);
        }
    }

    public void a(e eVar, Number number) {
        eVar.a(number);
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}