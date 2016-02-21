package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.c.a;
import com.google.ads.interactivemedia.v3.a.d.b;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class c extends w {
    public static final x a;
    private final DateFormat b;
    private final DateFormat c;
    private final DateFormat d;

    static {
        a = new x() {
            public final w a(f fVar, a aVar) {
                return aVar.a() == Date.class ? new c() : null;
            }
        };
    }

    public c() {
        this.b = DateFormat.getDateTimeInstance(GoogleScorer.CLIENT_PLUS, GoogleScorer.CLIENT_PLUS, Locale.US);
        this.c = DateFormat.getDateTimeInstance(GoogleScorer.CLIENT_PLUS, GoogleScorer.CLIENT_PLUS);
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.d = simpleDateFormat;
    }

    private synchronized Date a(String str) {
        Date parse;
        try {
            parse = this.c.parse(str);
        } catch (ParseException e) {
            try {
                parse = this.b.parse(str);
            } catch (ParseException e2) {
                try {
                    parse = this.d.parse(str);
                } catch (ParseException e3) {
                    throw new t(str, e3);
                } catch (Throwable th) {
                }
            }
        }
        return parse;
    }

    private synchronized void a(com.google.ads.interactivemedia.v3.a.d.c cVar, Date date) {
        if (date == null) {
            cVar.f();
        } else {
            cVar.b(this.b.format(date));
        }
    }

    public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
        if (aVar.f() != b.i) {
            return a(aVar.h());
        }
        aVar.j();
        return null;
    }
}