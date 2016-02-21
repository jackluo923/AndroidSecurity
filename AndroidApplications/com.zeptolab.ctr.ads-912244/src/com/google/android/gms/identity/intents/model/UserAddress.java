package com.google.android.gms.identity.intents.model;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.AddressConstants.Extras;

public final class UserAddress implements SafeParcelable {
    public static final Creator CREATOR;
    String KB;
    String KC;
    String KD;
    String KE;
    String KF;
    String KG;
    String KH;
    String KI;
    String KJ;
    String KK;
    boolean KL;
    String KM;
    String KN;
    String name;
    String oQ;
    private final int wj;

    static {
        CREATOR = new b();
    }

    UserAddress() {
        this.wj = 1;
    }

    UserAddress(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, boolean z, String str13, String str14) {
        this.wj = i;
        this.name = str;
        this.KB = str2;
        this.KC = str3;
        this.KD = str4;
        this.KE = str5;
        this.KF = str6;
        this.KG = str7;
        this.KH = str8;
        this.oQ = str9;
        this.KI = str10;
        this.KJ = str11;
        this.KK = str12;
        this.KL = z;
        this.KM = str13;
        this.KN = str14;
    }

    public static UserAddress fromIntent(Intent intent) {
        return (intent == null || !intent.hasExtra(Extras.EXTRA_ADDRESS)) ? null : (UserAddress) intent.getParcelableExtra(Extras.EXTRA_ADDRESS);
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

    public String getAddress4() {
        return this.KE;
    }

    public String getAddress5() {
        return this.KF;
    }

    public String getAdministrativeArea() {
        return this.KG;
    }

    public String getCompanyName() {
        return this.KM;
    }

    public String getCountryCode() {
        return this.oQ;
    }

    public String getEmailAddress() {
        return this.KN;
    }

    public String getLocality() {
        return this.KH;
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

    public String getSortingCode() {
        return this.KJ;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public boolean isPostBox() {
        return this.KL;
    }

    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}