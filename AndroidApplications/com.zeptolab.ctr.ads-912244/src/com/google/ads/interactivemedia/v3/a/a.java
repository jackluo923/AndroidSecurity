package com.google.ads.interactivemedia.v3.a;

import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

final class a implements k, s {
    private final DateFormat a;
    private final DateFormat b;
    private final DateFormat c;

    a() {
        this(DateFormat.getDateTimeInstance(GoogleScorer.CLIENT_PLUS, GoogleScorer.CLIENT_PLUS, Locale.US), DateFormat.getDateTimeInstance(GoogleScorer.CLIENT_PLUS, GoogleScorer.CLIENT_PLUS));
    }

    public a(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    a(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    private a(DateFormat dateFormat, DateFormat dateFormat2) {
        this.a = dateFormat;
        this.b = dateFormat2;
        this.c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.c.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private l a_(Date date) {
        l qVar;
        synchronized (this.b) {
            qVar = new q(this.a.format(date));
        }
        return qVar;
    }

    private Date a_(l lVar) {
        Date parse;
        synchronized (this.b) {
            try {
                parse = this.b.parse(lVar.b());
            } catch (ParseException e) {
                try {
                    parse = this.a.parse(lVar.b());
                } catch (ParseException e2) {
                    parse = this.c.parse(lVar.b());
                }
            }
        }
        return parse;
    }

    public final /* synthetic */ Object a_(l lVar, Type type) {
        if (lVar instanceof q) {
            Date a = a(lVar);
            if (type == Date.class) {
                return a;
            }
            if (type == Timestamp.class) {
                return new Timestamp(a.getTime());
            }
            if (type == java.sql.Date.class) {
                return new java.sql.Date(a.getTime());
            }
            throw new IllegalArgumentException(getClass() + " cannot deserialize to " + type);
        } else {
            throw new p("The date should be a string value");
        }
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(a.class.getSimpleName());
        stringBuilder.append('(').append(this.b.getClass().getSimpleName()).append(')');
        return stringBuilder.toString();
    }
}