package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;

public final class FullWallet implements SafeParcelable {
    public static final Creator CREATOR;
    String Yk;
    String Yl;
    ProxyCard Ym;
    String Yn;
    Address Yo;
    Address Yp;
    String[] Yq;
    UserAddress Yr;
    UserAddress Ys;
    InstrumentInfo[] Yt;
    private final int wj;

    static {
        CREATOR = new f();
    }

    private FullWallet() {
        this.wj = 1;
    }

    FullWallet(int i, String str, String str2, ProxyCard proxyCard, String str3, Address address, Address address2, String[] strArr, UserAddress userAddress, UserAddress userAddress2, InstrumentInfo[] instrumentInfoArr) {
        this.wj = i;
        this.Yk = str;
        this.Yl = str2;
        this.Ym = proxyCard;
        this.Yn = str3;
        this.Yo = address;
        this.Yp = address2;
        this.Yq = strArr;
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

    public String getMerchantTransactionId() {
        return this.Yl;
    }

    public String[] getPaymentDescriptions() {
        return this.Yq;
    }

    public ProxyCard getProxyCard() {
        return this.Ym;
    }

    @Deprecated
    public Address getShippingAddress() {
        return this.Yp;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}