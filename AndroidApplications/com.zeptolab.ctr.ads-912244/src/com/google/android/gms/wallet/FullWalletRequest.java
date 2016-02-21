package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class FullWalletRequest implements SafeParcelable {
    public static final Creator CREATOR;
    String Yk;
    String Yl;
    Cart Yu;
    private final int wj;

    public final class Builder {
        private Builder() {
        }

        public FullWalletRequest build() {
            return FullWalletRequest.this;
        }

        public com.google.android.gms.wallet.FullWalletRequest.Builder setCart(Cart cart) {
            FullWalletRequest.this.Yu = cart;
            return this;
        }

        public com.google.android.gms.wallet.FullWalletRequest.Builder setGoogleTransactionId(String str) {
            FullWalletRequest.this.Yk = str;
            return this;
        }

        public com.google.android.gms.wallet.FullWalletRequest.Builder setMerchantTransactionId(String str) {
            FullWalletRequest.this.Yl = str;
            return this;
        }
    }

    static {
        CREATOR = new g();
    }

    FullWalletRequest() {
        this.wj = 1;
    }

    FullWalletRequest(int i, String str, String str2, Cart cart) {
        this.wj = i;
        this.Yk = str;
        this.Yl = str2;
        this.Yu = cart;
    }

    public static Builder newBuilder() {
        FullWalletRequest fullWalletRequest = new FullWalletRequest();
        fullWalletRequest.getClass();
        return new Builder(null);
    }

    public int describeContents() {
        return 0;
    }

    public Cart getCart() {
        return this.Yu;
    }

    public String getGoogleTransactionId() {
        return this.Yk;
    }

    public String getMerchantTransactionId() {
        return this.Yl;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        g.a(this, parcel, i);
    }
}