package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;

public final class MaskedWalletRequest implements SafeParcelable {
    public static final Creator CREATOR;
    boolean YY;
    boolean YZ;
    String Yg;
    String Yl;
    Cart Yu;
    boolean Za;
    String Zb;
    String Zc;
    boolean Zd;
    boolean Ze;
    CountrySpecification[] Zf;
    boolean Zg;
    boolean Zh;
    ArrayList Zi;
    private final int wj;

    public final class Builder {
        private Builder() {
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder addAllowedCountrySpecificationForShipping(CountrySpecification countrySpecification) {
            if (MaskedWalletRequest.this.Zi == null) {
                MaskedWalletRequest.this.Zi = new ArrayList();
            }
            MaskedWalletRequest.this.Zi.add(countrySpecification);
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder addAllowedCountrySpecificationsForShipping(Collection collection) {
            if (collection != null) {
                if (MaskedWalletRequest.this.Zi == null) {
                    MaskedWalletRequest.this.Zi = new ArrayList();
                }
                MaskedWalletRequest.this.Zi.addAll(collection);
            }
            return this;
        }

        public MaskedWalletRequest build() {
            return MaskedWalletRequest.this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setAllowDebitCard(boolean z) {
            MaskedWalletRequest.this.Zh = z;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setAllowPrepaidCard(boolean z) {
            MaskedWalletRequest.this.Zg = z;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setCart(Cart cart) {
            MaskedWalletRequest.this.Yu = cart;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setCurrencyCode(String str) {
            MaskedWalletRequest.this.Yg = str;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setEstimatedTotalPrice(String str) {
            MaskedWalletRequest.this.Zb = str;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setIsBillingAgreement(boolean z) {
            MaskedWalletRequest.this.Ze = z;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setMerchantName(String str) {
            MaskedWalletRequest.this.Zc = str;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setMerchantTransactionId(String str) {
            MaskedWalletRequest.this.Yl = str;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setPhoneNumberRequired(boolean z) {
            MaskedWalletRequest.this.YY = z;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setShippingAddressRequired(boolean z) {
            MaskedWalletRequest.this.YZ = z;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setShouldRetrieveWalletObjects(boolean z) {
            MaskedWalletRequest.this.Zd = z;
            return this;
        }

        public com.google.android.gms.wallet.MaskedWalletRequest.Builder setUseMinimalBillingAddress(boolean z) {
            MaskedWalletRequest.this.Za = z;
            return this;
        }
    }

    static {
        CREATOR = new l();
    }

    MaskedWalletRequest() {
        this.wj = 3;
        this.Zg = true;
        this.Zh = true;
    }

    MaskedWalletRequest(int i, String str, boolean z, boolean z2, boolean z3, String str2, String str3, String str4, Cart cart, boolean z4, boolean z5, CountrySpecification[] countrySpecificationArr, boolean z6, boolean z7, ArrayList arrayList) {
        this.wj = i;
        this.Yl = str;
        this.YY = z;
        this.YZ = z2;
        this.Za = z3;
        this.Zb = str2;
        this.Yg = str3;
        this.Zc = str4;
        this.Yu = cart;
        this.Zd = z4;
        this.Ze = z5;
        this.Zf = countrySpecificationArr;
        this.Zg = z6;
        this.Zh = z7;
        this.Zi = arrayList;
    }

    public static Builder newBuilder() {
        MaskedWalletRequest maskedWalletRequest = new MaskedWalletRequest();
        maskedWalletRequest.getClass();
        return new Builder(null);
    }

    public boolean allowDebitCard() {
        return this.Zh;
    }

    public boolean allowPrepaidCard() {
        return this.Zg;
    }

    public int describeContents() {
        return 0;
    }

    public ArrayList getAllowedCountrySpecificationsForShipping() {
        return this.Zi;
    }

    public CountrySpecification[] getAllowedShippingCountrySpecifications() {
        return this.Zf;
    }

    public Cart getCart() {
        return this.Yu;
    }

    public String getCurrencyCode() {
        return this.Yg;
    }

    public String getEstimatedTotalPrice() {
        return this.Zb;
    }

    public String getMerchantName() {
        return this.Zc;
    }

    public String getMerchantTransactionId() {
        return this.Yl;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public boolean isBillingAgreement() {
        return this.Ze;
    }

    public boolean isPhoneNumberRequired() {
        return this.YY;
    }

    public boolean isShippingAddressRequired() {
        return this.YZ;
    }

    public boolean shouldRetrieveWalletObjects() {
        return this.Zd;
    }

    public boolean useMinimalBillingAddress() {
        return this.Za;
    }

    public void writeToParcel(Parcel parcel, int i) {
        l.a(this, parcel, i);
    }
}