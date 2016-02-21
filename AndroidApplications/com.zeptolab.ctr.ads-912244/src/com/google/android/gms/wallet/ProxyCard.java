package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class ProxyCard implements SafeParcelable {
    public static final Creator CREATOR;
    String Zn;
    String Zo;
    int Zp;
    int Zq;
    private final int wj;

    static {
        CREATOR = new o();
    }

    ProxyCard(int i, String str, String str2, int i2, int i3) {
        this.wj = i;
        this.Zn = str;
        this.Zo = str2;
        this.Zp = i2;
        this.Zq = i3;
    }

    public int describeContents() {
        return 0;
    }

    public String getCvn() {
        return this.Zo;
    }

    public int getExpirationMonth() {
        return this.Zp;
    }

    public int getExpirationYear() {
        return this.Zq;
    }

    public String getPan() {
        return this.Zn;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        o.a(this, parcel, i);
    }
}