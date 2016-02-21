package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@Deprecated
public class CountrySpecification implements SafeParcelable {
    public static final Creator CREATOR;
    String oQ;
    private final int wj;

    static {
        CREATOR = new c();
    }

    CountrySpecification(int i, String str) {
        this.wj = i;
        this.oQ = str;
    }

    public CountrySpecification(String str) {
        this.wj = 1;
        this.oQ = str;
    }

    public int describeContents() {
        return 0;
    }

    public String getCountryCode() {
        return this.oQ;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        c.a(this, parcel, i);
    }
}