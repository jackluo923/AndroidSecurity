package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.c.a;
import com.google.ads.interactivemedia.v3.a.d.b;
import com.google.ads.interactivemedia.v3.a.d.c;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class g extends w {
    public static final x a;
    private final f b;

    static /* synthetic */ class AnonymousClass_2 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[b.values().length];
            try {
                a[b.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[b.c.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[b.f.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[b.g.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[b.h.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            a[b.i.ordinal()] = 6;
        }
    }

    static {
        a = new x() {
            public final w a(f fVar, a aVar) {
                return aVar.a() == Object.class ? new g((byte) 0) : null;
            }
        };
    }

    private g(f fVar) {
        this.b = fVar;
    }

    public final Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
        switch (AnonymousClass_2.a[aVar.f().ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                List arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(a(aVar));
                }
                aVar.b();
                return arrayList;
            case GoogleScorer.CLIENT_PLUS:
                Map gVar = new com.google.ads.interactivemedia.v3.a.b.g();
                aVar.c();
                while (aVar.e()) {
                    gVar.put(aVar.g(), a(aVar));
                }
                aVar.d();
                return gVar;
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

    public final void a(c cVar, Object obj) {
        if (obj == null) {
            cVar.f();
        } else {
            w a = this.b.a(obj.getClass());
            if (a instanceof g) {
                cVar.d();
                cVar.e();
            } else {
                a.a(cVar, obj);
            }
        }
    }
}