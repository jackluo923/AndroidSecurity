package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ab;
import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.b.s;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.v;
import com.millennialmedia.a.a.x;
import com.millennialmedia.a.a.y;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Iterator;
import java.util.Map.Entry;

final class am extends ak {
    am() {
    }

    public v a(a aVar) {
        v sVar;
        switch (AnonymousClass_1.a[aVar.f().ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return new ab(new s(aVar.h()));
            case GoogleScorer.CLIENT_PLUS:
                return new ab(Boolean.valueOf(aVar.i()));
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return new ab(aVar.h());
            case GoogleScorer.CLIENT_APPSTATE:
                aVar.j();
                return x.a;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                sVar = new com.millennialmedia.a.a.s();
                aVar.a();
                while (aVar.e()) {
                    sVar.a(a(aVar));
                }
                aVar.b();
                return sVar;
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                sVar = new y();
                aVar.c();
                while (aVar.e()) {
                    sVar.a(aVar.g(), a(aVar));
                }
                aVar.d();
                return sVar;
            default:
                throw new IllegalArgumentException();
        }
    }

    public void a(e eVar, v vVar) {
        if (vVar == null || vVar.s()) {
            eVar.f();
        } else if (vVar.r()) {
            ab v = vVar.v();
            if (v.y()) {
                eVar.a(v.c());
            } else if (v.b()) {
                eVar.a(v.n());
            } else {
                eVar.b(v.d());
            }
        } else if (vVar.p()) {
            eVar.b();
            Iterator it = vVar.u().iterator();
            while (it.hasNext()) {
                a(eVar, (v) it.next());
            }
            eVar.c();
        } else if (vVar.q()) {
            eVar.d();
            Iterator it2 = vVar.t().b().iterator();
            while (it2.hasNext()) {
                Entry entry = (Entry) it2.next();
                eVar.a((String) entry.getKey());
                a(eVar, (v) entry.getValue());
            }
            eVar.e();
        } else {
            throw new IllegalArgumentException("Couldn't write " + vVar.getClass());
        }
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}