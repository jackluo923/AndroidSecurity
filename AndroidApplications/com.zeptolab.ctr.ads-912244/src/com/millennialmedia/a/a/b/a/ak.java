package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Calendar;
import java.util.GregorianCalendar;

final class ak extends com.millennialmedia.a.a.ak {
    private static final String a = "year";
    private static final String b = "month";
    private static final String c = "dayOfMonth";
    private static final String d = "hourOfDay";
    private static final String e = "minute";
    private static final String f = "second";

    ak() {
    }

    public Calendar a(a aVar) {
        int i = 0;
        if (aVar.f() == d.i) {
            aVar.j();
            return null;
        } else {
            aVar.c();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (aVar.f() != d.d) {
                String g = aVar.g();
                int m = aVar.m();
                if (a.equals(g)) {
                    i6 = m;
                } else if (b.equals(g)) {
                    i5 = m;
                } else if (c.equals(g)) {
                    i4 = m;
                } else if (d.equals(g)) {
                    i3 = m;
                } else if (e.equals(g)) {
                    i2 = m;
                } else if (f.equals(g)) {
                    i = m;
                }
            }
            aVar.d();
            return new GregorianCalendar(i6, i5, i4, i3, i2, i);
        }
    }

    public void a(e eVar, Calendar calendar) {
        if (calendar == null) {
            eVar.f();
        } else {
            eVar.d();
            eVar.a(a);
            eVar.a((long) calendar.get(1));
            eVar.a(b);
            eVar.a((long) calendar.get(GoogleScorer.CLIENT_PLUS));
            eVar.a(c);
            eVar.a((long) calendar.get(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
            eVar.a(d);
            eVar.a((long) calendar.get(R.styleable.MapAttrs_uiZoomGestures));
            eVar.a(e);
            eVar.a((long) calendar.get(R.styleable.MapAttrs_useViewLifecycle));
            eVar.a(f);
            eVar.a((long) calendar.get(R.styleable.MapAttrs_zOrderOnTop));
            eVar.e();
        }
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}