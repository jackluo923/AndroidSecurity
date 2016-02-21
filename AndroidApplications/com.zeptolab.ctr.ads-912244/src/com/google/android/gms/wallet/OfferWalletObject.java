package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class OfferWalletObject implements SafeParcelable {
    public static final Creator CREATOR;
    String Zm;
    String eN;
    private final int wj;

    static {
        CREATOR = new n();
    }

    OfferWalletObject() {
        this.wj = 2;
    }

    OfferWalletObject(int i, String str, String str2) {
        this.wj = i;
        this.eN = str;
        this.Zm = str2;
    }

    public int describeContents() {
        return 0;
    }

    public String getId() {
        return this.eN;
    }

    public String getRedemptionCode() {
        return this.Zm;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        n.a(this, parcel, i);
    }
}