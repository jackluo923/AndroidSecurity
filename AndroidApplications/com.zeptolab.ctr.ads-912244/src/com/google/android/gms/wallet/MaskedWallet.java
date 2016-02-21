package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;

public final class MaskedWallet implements SafeParcelable {
    public static final Creator CREATOR;
    LoyaltyWalletObject[] YW;
    OfferWalletObject[] YX;
    String Yk;
    String Yl;
    String Yn;
    Address Yo;
    Address Yp;
    String[] Yq;
    UserAddress Yr;
    UserAddress Ys;
    InstrumentInfo[] Yt;
    private final int wj;

    static {
        CREATOR = new k();
    }

    private MaskedWallet() {
        this.wj = 2;
    }

    MaskedWallet(int i, String str, String str2, String[] strArr, String str3, Address address, Address address2, LoyaltyWalletObject[] loyaltyWalletObjectArr, OfferWalletObject[] offerWalletObjectArr, UserAddress userAddress, UserAddress userAddress2, InstrumentInfo[] instrumentInfoArr) {
        this.wj = i;
        this.Yk = str;
        this.Yl = str2;
        this.Yq = strArr;
        this.Yn = str3;
        this.Yo = address;
        this.Yp = address2;
        this.YW = loyaltyWalletObjectArr;
        this.YX = offerWalletObjectArr;
        this.Yr = userAddress;
        this.Ys = userAddress2;
        this.Yt = instrumentInfoArr;
    }

    public int describeContents() {
        return 0;
    }

    @Deprecated
    public Address getBillingAddress() {
        return this.Yo;
    }

    public UserAddress getBuyerBillingAddress() {
        return this.Yr;
    }

    public UserAddress getBuyerShippingAddress() {
        return this.Ys;
    }

    public String getEmail() {
        return this.Yn;
    }

    public String getGoogleTransactionId() {
        return this.Yk;
    }

    public InstrumentInfo[] getInstrumentInfos() {
        return this.Yt;
    }

    public LoyaltyWalletObject[] getLoyaltyWalletObjects() {
        return this.YW;
    }

    public String getMerchantTransactionId() {
        return this.Yl;
    }

    public OfferWalletObject[] getOfferWalletObjects() {
        return this.YX;
    }

    public String[] getPaymentDescriptions() {
        return this.Yq;
    }

    @Deprecated
    public Address getShippingAddress() {
        return this.Yp;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        k.a(this, parcel, i);
    }
}