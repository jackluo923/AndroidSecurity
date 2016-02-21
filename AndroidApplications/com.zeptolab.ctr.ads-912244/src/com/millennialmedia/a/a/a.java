package com.millennialmedia.a.a;

import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

final class a implements ad, u {
    private final DateFormat a;
    private final DateFormat b;
    private final DateFormat c;

    a() {
        this(DateFormat.getDateTimeInstance(GoogleScorer.CLIENT_PLUS, GoogleScorer.CLIENT_PLUS, Locale.US), DateFormat.getDateTimeInstance(GoogleScorer.CLIENT_PLUS, GoogleScorer.CLIENT_PLUS));
    }

    a(int i) {
        this(DateFormat.getDateInstance(i, Locale.US), DateFormat.getDateInstance(i));
    }

    public a(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    a(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    a(DateFormat dateFormat, DateFormat dateFormat2) {
        this.a = dateFormat;
        this.b = dateFormat2;
        this.c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.c.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private Date a_(v vVar) {
        Date parse;
        synchronized (this.b) {
            try {
                parse = this.b.parse(vVar.d());
            } catch (ParseException e) {
                try {
                    parse = this.a.parse(vVar.d());
                } catch (ParseException e2) {
                    parse = this.c.parse(vVar.d());
                }
            }
        }
        return parse;
    }

    public v a_(Date date, Type type, ac acVar) {
        v abVar;
        synchronized (this.b) {
            abVar = new ab(this.a.format(date));
        }
        return abVar;
    }

    public Date a_(v vVar, Type type, t tVar) {
        if (vVar instanceof ab) {
            Date a = a(vVar);
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
            throw new z("The date should be a string value");
        }
    }

    public /* synthetic */ Object b(v vVar, Type type, t tVar) {
        return a(vVar, type, tVar);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(a.class.getSimpleName());
        stringBuilder.append('(').append(this.b.getClass().getSimpleName()).append(')');
        return stringBuilder.toString();
    }
}