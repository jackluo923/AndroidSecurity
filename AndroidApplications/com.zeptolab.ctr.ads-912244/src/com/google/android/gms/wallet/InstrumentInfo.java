package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class InstrumentInfo implements SafeParcelable {
    public static final Creator CREATOR;
    private String Yw;
    private String Yx;
    private final int wj;

    static {
        CREATOR = new h();
    }

    InstrumentInfo(int i, String str, String str2) {
        this.wj = i;
        this.Yw = str;
        this.Yx = str2;
    }

    public int describeContents() {
        return 0;
    }

    public String getInstrumentDetails() {
        return this.Yx;
    }

    public String getInstrumentType() {
        return this.Yw;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        h.a(this, parcel, i);
    }
}