package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.af;
import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class o extends ak {
    public static final am a;
    private final DateFormat b;

    static {
        a = new p();
    }

    public o() {
        this.b = new SimpleDateFormat("MMM d, yyyy");
    }

    public synchronized Date a(a aVar) {
        Date date;
        try {
            if (aVar.f() == d.i) {
                aVar.j();
                date = null;
            } else {
                date = new Date(this.b.parse(aVar.h()).getTime());
            }
        } catch (ParseException e) {
            throw new af(e);
        } catch (Throwable th) {
        }
        return date;
    }

    public synchronized void a(e eVar, Date date) {
        eVar.b(date == null ? null : this.b.format(date));
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}