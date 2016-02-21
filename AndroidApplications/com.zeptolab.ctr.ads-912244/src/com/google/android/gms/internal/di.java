package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class di implements Parcelable {
    @Deprecated
    public static final Creator CREATOR;
    private String mValue;
    private String uS;
    private String uT;

    static {
        CREATOR = new Creator() {
            public /* synthetic */ Object createFromParcel(Parcel parcel) {
                return i(parcel);
            }

            @Deprecated
            public di i(Parcel parcel) {
                return new di(parcel);
            }

            public /* synthetic */ Object[] newArray(int i) {
                return u(i);
            }

            @Deprecated
            public di[] u(int i) {
                return new di[i];
            }
        };
    }

    @Deprecated
    di(Parcel parcel) {
        readFromParcel(parcel);
    }

    public di(String str, String str2, String str3) {
        this.uS = str;
        this.uT = str2;
        this.mValue = str3;
    }

    @Deprecated
    private void readFromParcel(Parcel parcel) {
        this.uS = parcel.readString();
        this.uT = parcel.readString();
        this.mValue = parcel.readString();
    }

    @Deprecated
    public int describeContents() {
        return 0;
    }

    public String getId() {
        return this.uS;
    }

    public String getValue() {
        return this.mValue;
    }

    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.uS);
        parcel.writeString(this.uT);
        parcel.writeString(this.mValue);
    }
}