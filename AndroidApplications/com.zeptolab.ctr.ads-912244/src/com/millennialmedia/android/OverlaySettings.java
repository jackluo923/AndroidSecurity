package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.a.a.a.b;
import com.millennialmedia.a.a.k;

class OverlaySettings implements Parcelable {
    private static final String A = "OverlaySettings";
    public static final Creator CREATOR;
    static final String a = "transparent";
    static final String b = "transition";
    static final String c = "transitionDuration";
    static final String d = "useCustomClose";
    static final String e = "orientation";
    static final String f = "height";
    static final String g = "width";
    static final String h = "modal";
    static final String i = "allowOrientationChange";
    static final String j = "forceOrientation";
    static final String k = "enableHardwareAccel";
    static final String l = "acid";
    private boolean B;
    @b(a = "transparent")
    private boolean C;
    @b(a = "transitionDuration")
    private long D;
    private String E;
    boolean m;
    int n;
    String o;
    String p;
    int q;
    int r;
    boolean s;
    boolean t;
    String u;
    String v;
    HttpMMHeaders w;
    boolean x;
    boolean y;
    long z;

    static {
        CREATOR = new Creator() {
            public OverlaySettings createFromParcel(Parcel parcel) {
                return new OverlaySettings(parcel);
            }

            public OverlaySettings[] newArray(int i) {
                return new OverlaySettings[i];
            }
        };
    }

    OverlaySettings() {
        this.E = AdTrackerConstants.BLANK;
        this.o = AdTrackerConstants.BLANK;
        this.p = AdTrackerConstants.BLANK;
        this.t = true;
        this.u = AdTrackerConstants.BLANK;
        this.v = AdTrackerConstants.BLANK;
        this.x = false;
    }

    OverlaySettings(Parcel parcel) {
        long j = 0;
        this.E = AdTrackerConstants.BLANK;
        this.o = AdTrackerConstants.BLANK;
        this.p = AdTrackerConstants.BLANK;
        this.t = true;
        this.u = AdTrackerConstants.BLANK;
        this.v = AdTrackerConstants.BLANK;
        this.x = false;
        try {
            boolean[] zArr = new boolean[6];
            parcel.readBooleanArray(zArr);
            this.m = zArr[0];
            this.C = zArr[1];
            this.B = zArr[2];
            this.s = zArr[3];
            this.y = zArr[4];
            this.t = zArr[5];
            this.n = parcel.readInt();
            this.E = parcel.readString();
            this.D = parcel.readLong();
            if (this.D >= 0) {
                j = this.D;
            }
            this.D = j;
            this.o = parcel.readString();
            this.z = parcel.readLong();
            this.p = parcel.readString();
            this.q = parcel.readInt();
            this.r = parcel.readInt();
            this.u = parcel.readString();
            this.v = parcel.readString();
            this.w = (HttpMMHeaders) parcel.readParcelable(HttpMMHeaders.class.getClassLoader());
        } catch (Exception e) {
            MMLog.e(A, "Exception Overlaysettings creationg from parcel: ", e);
        }
    }

    static final OverlaySettings a(String str) {
        return (OverlaySettings) new k().a(str, OverlaySettings.class);
    }

    void a() {
        MMLog.a(A, toString());
    }

    void a(long j) {
        this.D = j;
    }

    void a(HttpMMHeaders httpMMHeaders) {
        this.w = httpMMHeaders;
    }

    void a(boolean z) {
        this.B = z;
    }

    void b(String str) {
        this.E = str;
    }

    void b(boolean z) {
        this.C = z;
    }

    boolean b() {
        return !this.y && this.z != 0;
    }

    boolean c() {
        return this.y && this.z != 0;
    }

    boolean d() {
        return this.p != null && !this.p.equals(AdTrackerConstants.BLANK);
    }

    public int describeContents() {
        return 0;
    }

    boolean e() {
        if (this.x) {
            return true;
        }
        this.x = true;
        return false;
    }

    long f() {
        if (this.D > 0) {
            return this.D;
        }
        return this.w != null ? this.w.c : 0;
    }

    String g() {
        if (!TextUtils.isEmpty(this.E)) {
            return this.E;
        }
        return (this.w == null || TextUtils.isEmpty(this.w.d)) ? "none" : this.w.d;
    }

    String h() {
        return (this.w == null || TextUtils.isEmpty(this.w.g)) ? AdTrackerConstants.BLANK : this.w.g;
    }

    boolean i() {
        return this.B || (this.w != null && this.w.e);
    }

    boolean j() {
        return this.C || (this.w != null && this.w.b);
    }

    boolean k() {
        return this.w != null && this.w.f;
    }

    public String toString() {
        return String.format("height %d width %d modal %b urlToLoad %s creatorAdImplId %s shouldResizeOverlay: %d transitionTime: %d overlayTransition: %s shouldMakeOverlayTransparent: %b shouldShowCustomClose: %b Orientation: %s", new Object[]{Integer.valueOf(this.q), Integer.valueOf(this.r), Boolean.valueOf(this.s), this.p, Long.valueOf(this.z), Integer.valueOf(this.n), Long.valueOf(this.D), this.E, Boolean.valueOf(this.C), Boolean.valueOf(this.B), this.o});
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBooleanArray(new boolean[]{this.m, this.C, this.B, this.s, this.y, this.t});
        parcel.writeInt(this.n);
        parcel.writeString(this.E);
        parcel.writeLong(this.D);
        parcel.writeString(this.o);
        parcel.writeLong(this.z);
        parcel.writeString(this.p);
        parcel.writeInt(this.q);
        parcel.writeInt(this.r);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
        parcel.writeParcelable(this.w, i);
    }
}