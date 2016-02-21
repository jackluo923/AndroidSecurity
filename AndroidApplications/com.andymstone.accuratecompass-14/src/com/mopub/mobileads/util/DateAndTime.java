package com.mopub.mobileads.util;

import java.util.Date;
import java.util.TimeZone;

public class DateAndTime {
    protected static DateAndTime a;

    static {
        a = new DateAndTime();
    }

    public static TimeZone a() {
        return a.c();
    }

    public static Date b() {
        return a.d();
    }

    public TimeZone c() {
        return TimeZone.getDefault();
    }

    public Date d() {
        return new Date();
    }
}