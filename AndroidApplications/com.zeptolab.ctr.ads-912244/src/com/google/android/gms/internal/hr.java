package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;

public final class hr implements SafeParcelable {
    public static final hs CREATOR;
    private final LocationRequest LF;
    private final hn LG;
    final int wj;

    static {
        CREATOR = new hs();
    }

    public hr(int i, LocationRequest locationRequest, hn hnVar) {
        this.wj = i;
        this.LF = locationRequest;
        this.LG = hnVar;
    }

    public int describeContents() {
        hs hsVar = CREATOR;
        return 0;
    }

    public boolean equals(hr hrVar) {
        if (this == hrVar) {
            return true;
        }
        if (!(hrVar instanceof hr)) {
            return false;
        }
        hrVar = hrVar;
        return this.LF.equals(hrVar.LF) && this.LG.equals(hrVar.LG);
    }

    public LocationRequest gu() {
        return this.LF;
    }

    public hn gv() {
        return this.LG;
    }

    public int hashCode() {
        return ep.hashCode(new Object[]{this.LF, this.LG});
    }

    public String toString() {
        return ep.e(this).a("locationRequest", this.LF).a("filter", this.LG).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        hs hsVar = CREATOR;
        hs.a(this, parcel, i);
    }
}