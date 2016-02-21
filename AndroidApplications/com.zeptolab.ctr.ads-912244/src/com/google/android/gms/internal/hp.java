package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class hp implements SafeParcelable {
    public static final hq CREATOR;
    private final String LE;
    private final String mTag;
    final int wj;

    static {
        CREATOR = new hq();
    }

    hp(int i, String str, String str2) {
        this.wj = i;
        this.LE = str;
        this.mTag = str2;
    }

    public int describeContents() {
        hq hqVar = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof hp)) {
            return false;
        }
        hp hpVar = (hp) obj;
        return ep.equal(this.LE, hpVar.LE) && ep.equal(this.mTag, hpVar.mTag);
    }

    public String getTag() {
        return this.mTag;
    }

    public String gt() {
        return this.LE;
    }

    public int hashCode() {
        return ep.hashCode(new Object[]{this.LE, this.mTag});
    }

    public String toString() {
        return ep.e(this).a("mPlaceId", this.LE).a("mTag", this.mTag).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        hq hqVar = CREATOR;
        hq.a(this, parcel, i);
    }
}