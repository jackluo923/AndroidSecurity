package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.af;
import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class q extends ak {
    public static final am a;
    private final DateFormat b;

    static {
        a = new r();
    }

    public q() {
        this.b = new SimpleDateFormat("hh:mm:ss a");
    }

    public synchronized Time a(a aVar) {
        Time time;
        try {
            if (aVar.f() == d.i) {
                aVar.j();
                time = null;
            } else {
                time = new Time(this.b.parse(aVar.h()).getTime());
            }
        } catch (ParseException e) {
            throw new af(e);
        } catch (Throwable th) {
        }
        return time;
    }

    public synchronized void a(e eVar, Time time) {
        eVar.b(time == null ? null : this.b.format(time));
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}