package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@Deprecated
public final class Address implements SafeParcelable {
    public static final Creator CREATOR;
    String KB;
    String KC;
    String KD;
    String KI;
    String KK;
    boolean KL;
    String KM;
    String Yd;
    String Ye;
    String name;
    String oQ;
    private final int wj;

    static {
        CREATOR = new a();
    }

    Address() {
        this.wj = 1;
    }

    Address(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, boolean z, String str10) {
        this.wj = i;
        this.name = str;
        this.KB = str2;
        this.KC = str3;
        this.KD = str4;
        this.oQ = str5;
        this.Yd = str6;
        this.Ye = str7;
        this.KI = str8;
        this.KK = str9;
        this.KL = z;
        this.KM = str10;
    }

    public int describeContents() {
        return 0;
    }

    public String getAddress1() {
        return this.KB;
    }

    public String getAddress2() {
        return this.KC;
    }

    public String getAddress3() {
        return this.KD;
    }

    public String getCity() {
        return this.Yd;
    }

    public String getCompanyName() {
        return this.KM;
    }

    public String getCountryCode() {
        return this.oQ;
    }

    public String getName() {
        return this.name;
    }

    public String getPhoneNumber() {
        return this.KK;
    }

    public String getPostalCode() {
        return this.KI;
    }

    public String getState() {
        return this.Ye;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public boolean isPostBox() {
        return this.KL;
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}