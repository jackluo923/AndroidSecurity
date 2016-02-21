package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.b.t;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class k extends ak {
    public static final am a;
    private final com.millennialmedia.a.a.k b;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[d.values().length];
            try {
                a[d.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[d.c.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[d.f.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[d.g.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[d.h.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            a[d.i.ordinal()] = 6;
        }
    }

    static {
        a = new l();
    }

    private k(com.millennialmedia.a.a.k kVar) {
        this.b = kVar;
    }

    public void a(e eVar, Object obj) {
        if (obj == null) {
            eVar.f();
        } else {
            ak a = this.b.a(obj.getClass());
            if (a instanceof k) {
                eVar.d();
                eVar.e();
            } else {
                a.a(eVar, obj);
            }
        }
    }

    public Object b(a aVar) {
        switch (AnonymousClass_1.a[aVar.f().ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                List arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(b(aVar));
                }
                aVar.b();
                return arrayList;
            case GoogleScorer.CLIENT_PLUS:
                Map tVar = new t();
                aVar.c();
                while (aVar.e()) {
                    tVar.put(aVar.g(), b(aVar));
                }
                aVar.d();
                return tVar;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return aVar.h();
            case GoogleScorer.CLIENT_APPSTATE:
                return Double.valueOf(aVar.k());
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return Boolean.valueOf(aVar.i());
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                aVar.j();
                return null;
            default:
                throw new IllegalStateException();
        }
    }
}