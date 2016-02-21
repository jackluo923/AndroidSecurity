package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.c.a;
import com.google.ads.interactivemedia.v3.a.d.b;
import com.google.ads.interactivemedia.v3.a.d.c;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class j extends w {
    public static final x a;
    private final DateFormat b;

    static {
        a = new x() {
            public final w a(f fVar, a aVar) {
                return aVar.a() == Time.class ? new j() : null;
            }
        };
    }

    public j() {
        this.b = new SimpleDateFormat("hh:mm:ss a");
    }

    private synchronized void a(c cVar, Time time) {
        cVar.b(time == null ? null : this.b.format(time));
    }

    private synchronized Time b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
        Time time;
        try {
            if (aVar.f() == b.i) {
                aVar.j();
                time = null;
            } else {
                time = new Time(this.b.parse(aVar.h()).getTime());
            }
        } catch (ParseException e) {
            throw new t(e);
        } catch (Throwable th) {
        }
        return time;
    }

    public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
        return b(aVar);
    }
}