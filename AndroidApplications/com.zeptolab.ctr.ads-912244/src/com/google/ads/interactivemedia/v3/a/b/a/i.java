package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.c.a;
import com.google.ads.interactivemedia.v3.a.d.b;
import com.google.ads.interactivemedia.v3.a.d.c;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class i extends w {
    public static final x a;
    private final DateFormat b;

    static {
        a = new x() {
            public final w a(f fVar, a aVar) {
                return aVar.a() == Date.class ? new i() : null;
            }
        };
    }

    public i() {
        this.b = new SimpleDateFormat("MMM d, yyyy");
    }

    private synchronized void a(c cVar, Date date) {
        cVar.b(date == null ? null : this.b.format(date));
    }

    private synchronized Date b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
        Date date;
        try {
            if (aVar.f() == b.i) {
                aVar.j();
                date = null;
            } else {
                date = new Date(this.b.parse(aVar.h()).getTime());
            }
        } catch (ParseException e) {
            throw new t(e);
        } catch (Throwable th) {
        }
        return date;
    }

    public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
        return b(aVar);
    }
}