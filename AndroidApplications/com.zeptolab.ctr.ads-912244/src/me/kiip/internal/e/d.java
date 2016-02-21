package me.kiip.internal.e;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

final class d {
    private static final ThreadLocal a;
    private static final String[] b;
    private static final DateFormat[] c;

    static {
        a = new ThreadLocal() {
            protected DateFormat a() {
                DateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                return simpleDateFormat;
            }

            protected /* synthetic */ Object initialValue() {
                return a();
            }
        };
        b = new String[]{"EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        c = new DateFormat[b.length];
    }

    public static String a(Date date) {
        return ((DateFormat) a.get()).format(date);
    }

    public static Date a(String str) {
        try {
            return ((DateFormat) a.get()).parse(str);
        } catch (ParseException e) {
            synchronized (b) {
            }
            int length = b.length;
            int i = 0;
            while (i < length) {
                DateFormat dateFormat = c[i];
                if (dateFormat == null) {
                    dateFormat = new SimpleDateFormat(b[i], Locale.US);
                    c[i] = dateFormat;
                }
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e2) {
                    i++;
                }
            }
            return null;
        }
    }
}