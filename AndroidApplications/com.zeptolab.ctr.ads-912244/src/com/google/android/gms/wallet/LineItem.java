package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LineItem implements SafeParcelable {
    public static final Creator CREATOR;
    int YA;
    String Yf;
    String Yg;
    String Yy;
    String Yz;
    String description;
    private final int wj;

    public final class Builder {
        private Builder() {
        }

        public LineItem build() {
            return LineItem.this;
        }

        public com.google.android.gms.wallet.LineItem.Builder setCurrencyCode(String str) {
            LineItem.this.Yg = str;
            return this;
        }

        public com.google.android.gms.wallet.LineItem.Builder setDescription(String str) {
            LineItem.this.description = str;
            return this;
        }

        public com.google.android.gms.wallet.LineItem.Builder setQuantity(String str) {
            LineItem.this.Yy = str;
            return this;
        }

        public com.google.android.gms.wallet.LineItem.Builder setRole(int i) {
            LineItem.this.YA = i;
            return this;
        }

        public com.google.android.gms.wallet.LineItem.Builder setTotalPrice(String str) {
            LineItem.this.Yf = str;
            return this;
        }

        public com.google.android.gms.wallet.LineItem.Builder setUnitPrice(String str) {
            LineItem.this.Yz = str;
            return this;
        }
    }

    public static interface Role {
        public static final int REGULAR = 0;
        public static final int SHIPPING = 2;
        public static final int TAX = 1;
    }

    static {
        CREATOR = new i();
    }

    LineItem() {
        this.wj = 1;
        this.YA = 0;
    }

    LineItem(int i, String str, String str2, String str3, String str4, int i2, String str5) {
        this.wj = i;
        this.description = str;
        this.Yy = str2;
        this.Yz = str3;
        this.Yf = str4;
        this.YA = i2;
        this.Yg = str5;
    }

    public static Builder newBuilder() {
        LineItem lineItem = new LineItem();
        lineItem.getClass();
        return new Builder(null);
    }

    public int describeContents() {
        return 0;
    }

    public String getCurrencyCode() {
        return this.Yg;
    }

    public String getDescription() {
        return this.description;
    }

    public String getQuantity() {
        return this.Yy;
    }

    public int getRole() {
        return this.YA;
    }

    public String getTotalPrice() {
        return this.Yf;
    }

    public String getUnitPrice() {
        return this.Yz;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i.a(this, parcel, i);
    }
}