package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

public final class Cart implements SafeParcelable {
    public static final Creator CREATOR;
    String Yf;
    String Yg;
    ArrayList Yh;
    private final int wj;

    public final class Builder {
        private Builder() {
        }

        public com.google.android.gms.wallet.Cart.Builder addLineItem(LineItem lineItem) {
            Cart.this.Yh.add(lineItem);
            return this;
        }

        public Cart build() {
            return Cart.this;
        }

        public com.google.android.gms.wallet.Cart.Builder setCurrencyCode(String str) {
            Cart.this.Yg = str;
            return this;
        }

        public com.google.android.gms.wallet.Cart.Builder setLineItems(List list) {
            Cart.this.Yh.clear();
            Cart.this.Yh.addAll(list);
            return this;
        }

        public com.google.android.gms.wallet.Cart.Builder setTotalPrice(String str) {
            Cart.this.Yf = str;
            return this;
        }
    }

    static {
        CREATOR = new b();
    }

    Cart() {
        this.wj = 1;
        this.Yh = new ArrayList();
    }

    Cart(int i, String str, String str2, ArrayList arrayList) {
        this.wj = i;
        this.Yf = str;
        this.Yg = str2;
        this.Yh = arrayList;
    }

    public static Builder newBuilder() {
        Cart cart = new Cart();
        cart.getClass();
        return new Builder(null);
    }

    public int describeContents() {
        return 0;
    }

    public String getCurrencyCode() {
        return this.Yg;
    }

    public ArrayList getLineItems() {
        return this.Yh;
    }

    public String getTotalPrice() {
        return this.Yf;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}