package com.vungle.publisher;

import android.database.Cursor;
import android.database.SQLException;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class ai {
    public static Boolean a(Cursor cursor, String str) {
        Integer d = d(cursor, str);
        if (d == null) {
            return null;
        }
        switch (d.intValue()) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return Boolean.FALSE;
            case GoogleScorer.CLIENT_GAMES:
                return Boolean.TRUE;
            default:
                throw new SQLException(new StringBuilder("invalid boolean value ").append(d).append(" for column ").append(str).toString());
        }
    }

    private static Enum a(Cursor cursor, int i, Class cls) {
        String string = cursor.getString(i);
        try {
            return cursor.isNull(i) ? null : Enum.valueOf(cls, string);
        } catch (IllegalArgumentException e) {
            throw new SQLException(new StringBuilder("invalid enum: ").append(string).toString());
        }
    }

    public static Enum a(Cursor cursor, String str, Class cls) {
        try {
            return a(cursor, cursor.getColumnIndexOrThrow(str), cls);
        } catch (IllegalArgumentException e) {
            throw new SQLException(new StringBuilder("invalid column name: ").append(str).toString());
        }
    }

    private static Integer a(Cursor cursor, int i) {
        return cursor.isNull(i) ? null : Integer.valueOf(cursor.getInt(i));
    }

    public static String a(int i) {
        if (i <= 0) {
            return AdTrackerConstants.BLANK;
        }
        StringBuilder stringBuilder = new StringBuilder(i << 1 - 1);
        stringBuilder.append("?");
        int i2 = 1;
        while (i2 < i) {
            stringBuilder.append(",?");
            i2++;
        }
        return stringBuilder.toString();
    }

    public static Float b(Cursor cursor, String str) {
        try {
            int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
            return cursor.isNull(columnIndexOrThrow) ? null : Float.valueOf(cursor.getFloat(columnIndexOrThrow));
        } catch (IllegalArgumentException e) {
            throw new SQLException(new StringBuilder("invalid column name: ").append(str).toString());
        }
    }

    public static int c(Cursor cursor, String str) {
        try {
            Integer a = a(cursor, cursor.getColumnIndexOrThrow(str));
            return a == null ? 0 : a.intValue();
        } catch (IllegalArgumentException e) {
            throw new SQLException(new StringBuilder("invalid column name: ").append(str).toString());
        }
    }

    public static Integer d(Cursor cursor, String str) {
        try {
            return a(cursor, cursor.getColumnIndexOrThrow(str));
        } catch (IllegalArgumentException e) {
            throw new SQLException(new StringBuilder("invalid column name: ").append(str).toString());
        }
    }

    public static Long e(Cursor cursor, String str) {
        try {
            int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
            return cursor.isNull(columnIndexOrThrow) ? null : Long.valueOf(cursor.getLong(columnIndexOrThrow));
        } catch (IllegalArgumentException e) {
            throw new SQLException(new StringBuilder("invalid column name: ").append(str).toString());
        }
    }

    public static String f(Cursor cursor, String str) {
        try {
            return cursor.getString(cursor.getColumnIndexOrThrow(str));
        } catch (IllegalArgumentException e) {
            throw new SQLException(new StringBuilder("invalid column name: ").append(str).toString());
        }
    }
}