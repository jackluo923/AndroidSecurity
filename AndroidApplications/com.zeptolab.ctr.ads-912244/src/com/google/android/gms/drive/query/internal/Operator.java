package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public class Operator implements SafeParcelable {
    public static final Creator CREATOR;
    public static final Operator Fa;
    public static final Operator Fb;
    public static final Operator Fc;
    public static final Operator Fd;
    public static final Operator Fe;
    public static final Operator Ff;
    public static final Operator Fg;
    public static final Operator Fh;
    public static final Operator Fi;
    final String mTag;
    final int wj;

    static {
        CREATOR = new h();
        Fa = new Operator("=");
        Fb = new Operator("<");
        Fc = new Operator("<=");
        Fd = new Operator(">");
        Fe = new Operator(">=");
        Ff = new Operator(AdTrackerConstants.ANDROID);
        Fg = new Operator("or");
        Fh = new Operator("not");
        Fi = new Operator("contains");
    }

    Operator(int i, String str) {
        this.wj = i;
        this.mTag = str;
    }

    private Operator(String str) {
        this(1, str);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Operator operator) {
        if (this == operator) {
            return true;
        }
        if (operator == null) {
            return false;
        }
        if (getClass() != operator.getClass()) {
            return false;
        }
        operator = operator;
        if (this.mTag == null) {
            return operator.mTag == null;
        } else if (this.mTag.equals(operator.mTag)) {
            return true;
        } else {
            return false;
        }
    }

    public int hashCode() {
        return (this.mTag == null ? 0 : this.mTag.hashCode()) + 31;
    }

    public void writeToParcel(Parcel parcel, int i) {
        h.a(this, parcel, i);
    }
}