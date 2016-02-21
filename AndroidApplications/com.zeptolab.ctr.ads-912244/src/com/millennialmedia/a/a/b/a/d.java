package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.af;
import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.e;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class d extends ak {
    public static final am a;
    private final DateFormat b;
    private final DateFormat c;
    private final DateFormat d;

    static {
        a = new e();
    }

    public d() {
        this.b = DateFormat.getDateTimeInstance(GoogleScorer.CLIENT_PLUS, GoogleScorer.CLIENT_PLUS, Locale.US);
        this.c = DateFormat.getDateTimeInstance(GoogleScorer.CLIENT_PLUS, GoogleScorer.CLIENT_PLUS);
        this.d = b();
    }

    private static DateFormat b() {
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    private synchronized Date b(String str) {
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
                    throw new af(str, e3);
                } catch (Throwable th) {
                }
            }
        }
        return parse;
    }

    public Date a(a aVar) {
        if (aVar.f() != com.millennialmedia.a.a.d.d.i) {
            return b(aVar.h());
        }
        aVar.j();
        return null;
    }

    public synchronized void a(e eVar, Date date) {
        if (date == null) {
            eVar.f();
        } else {
            eVar.b(this.b.format(date));
        }
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}