package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;
import java.util.Map;
import org.apache.http.Header;

class HttpMMHeaders implements Parcelable, Serializable {
    public static final Creator CREATOR;
    static final long a = 3168621112125974L;
    private static final String h = "X-MM-TRANSPARENT";
    private static final String i = "X-MM-TRANSITION";
    private static final String j = "X-MM-TRANSITION-DURATION";
    private static final String k = "X-MM-USE-CUSTOM-CLOSE";
    private static final String l = "X-MM-ENABLE-HARDWARE-ACCELERATION";
    private static final String m = "X-MM-ACID";
    private static final String n;
    boolean b;
    long c;
    String d;
    boolean e;
    boolean f;
    String g;

    static {
        n = HttpMMHeaders.class.getName();
        CREATOR = new Creator() {
            public HttpMMHeaders createFromParcel(Parcel parcel) {
                return new HttpMMHeaders(parcel);
            }

            public HttpMMHeaders[] newArray(int i) {
                return new HttpMMHeaders[i];
            }
        };
    }

    public HttpMMHeaders(Parcel parcel) {
        try {
            boolean[] zArr = new boolean[3];
            parcel.readBooleanArray(zArr);
            this.b = zArr[0];
            this.e = zArr[1];
            this.f = zArr[2];
            this.d = parcel.readString();
            this.g = parcel.readString();
            this.c = parcel.readLong();
        } catch (Exception e) {
            MMLog.e(n, "Header serializing failed", e);
        }
    }

    public HttpMMHeaders(Header[] headerArr) {
        int length = headerArr.length;
        int i = 0;
        while (i < length) {
            Header header = headerArr[i];
            a(header);
            b(header);
            c(header);
            d(header);
            e(header);
            f(header);
            i++;
        }
    }

    private void a(Header header) {
        if (h.equalsIgnoreCase(header.getName())) {
            String value = header.getValue();
            if (value != null) {
                this.b = Boolean.parseBoolean(value);
            }
        }
    }

    private void b(Header header) {
        if (i.equalsIgnoreCase(header.getName())) {
            this.d = header.getValue();
        }
    }

    private void c(Header header) {
        if (j.equalsIgnoreCase(header.getName())) {
            String value = header.getValue();
            if (value != null) {
                this.c = (long) (Float.parseFloat(value) * 1000.0f);
            }
        }
    }

    private void d(Header header) {
        if (k.equalsIgnoreCase(header.getName())) {
            this.e = Boolean.parseBoolean(header.getValue());
        }
    }

    private void e(Header header) {
        if (l.equalsIgnoreCase(header.getName())) {
            this.f = Boolean.parseBoolean(header.getValue());
        }
    }

    private void f(Header header) {
        if (m.equalsIgnoreCase(header.getName())) {
            this.g = header.getValue();
        }
    }

    void a(Map map) {
        map.put("transparent", String.valueOf(this.b));
        map.put("transition", String.valueOf(this.d));
        map.put("acid", String.valueOf(this.g));
        map.put("transitionDuration", String.valueOf(this.c));
        map.put("useCustomClose", String.valueOf(this.e));
        map.put("enableHardwareAccel", String.valueOf(this.f));
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBooleanArray(new boolean[]{this.b, this.e, this.f});
        parcel.writeString(this.d);
        parcel.writeString(this.g);
        parcel.writeLong(this.c);
    }
}