package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.jl;
import com.google.android.gms.internal.jr;
import java.util.ArrayList;

public final class LoyaltyWalletObject implements SafeParcelable {
    public static final Creator CREATOR;
    String YC;
    String YD;
    String YE;
    String YF;
    String YG;
    String YH;
    String YI;
    String YJ;
    String YK;
    ArrayList YL;
    jr YM;
    ArrayList YN;
    String YO;
    String YP;
    ArrayList YQ;
    boolean YR;
    ArrayList YS;
    ArrayList YT;
    ArrayList YU;
    jl YV;
    String eN;
    int state;
    private final int wj;

    static {
        CREATOR = new j();
    }

    LoyaltyWalletObject() {
        this.wj = 4;
        this.YL = fj.eH();
        this.YN = fj.eH();
        this.YQ = fj.eH();
        this.YS = fj.eH();
        this.YT = fj.eH();
        this.YU = fj.eH();
    }

    LoyaltyWalletObject(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, int i2, ArrayList arrayList, jr jrVar, ArrayList arrayList2, String str11, String str12, ArrayList arrayList3, boolean z, ArrayList arrayList4, ArrayList arrayList5, ArrayList arrayList6, jl jlVar) {
        this.wj = i;
        this.eN = str;
        this.YC = str2;
        this.YD = str3;
        this.YE = str4;
        this.YF = str5;
        this.YG = str6;
        this.YH = str7;
        this.YI = str8;
        this.YJ = str9;
        this.YK = str10;
        this.state = i2;
        this.YL = arrayList;
        this.YM = jrVar;
        this.YN = arrayList2;
        this.YO = str11;
        this.YP = str12;
        this.YQ = arrayList3;
        this.YR = z;
        this.YS = arrayList4;
        this.YT = arrayList5;
        this.YU = arrayList6;
        this.YV = jlVar;
    }

    public int describeContents() {
        return 0;
    }

    public String getAccountId() {
        return this.YC;
    }

    public String getAccountName() {
        return this.YF;
    }

    public String getBarcodeAlternateText() {
        return this.YG;
    }

    public String getBarcodeType() {
        return this.YH;
    }

    public String getBarcodeValue() {
        return this.YI;
    }

    public String getId() {
        return this.eN;
    }

    public String getIssuerName() {
        return this.YD;
    }

    public String getProgramName() {
        return this.YE;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        j.a(this, parcel, i);
    }
}