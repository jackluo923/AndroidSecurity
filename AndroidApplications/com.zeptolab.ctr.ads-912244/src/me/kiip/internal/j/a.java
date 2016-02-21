package me.kiip.internal.j;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class a extends SimpleDateFormat {
    private SimpleDateFormat a;

    public a() {
        super("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.ENGLISH);
        setTimeZone(TimeZone.getTimeZone("UTC"));
        this.a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH);
        this.a.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public Date parse(String str) {
        try {
            return super.parse(str);
        } catch (ParseException e) {
            return this.a.parse(str);
        }
    }
}