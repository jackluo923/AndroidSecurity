package com.vungle.publisher;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public enum Orientation implements Parcelable {
    autoRotate,
    matchVideo;
    public static final Creator CREATOR;

    static {
        autoRotate = new Orientation("autoRotate", 0);
        matchVideo = new Orientation("matchVideo", 1);
        a = new Orientation[]{autoRotate, matchVideo};
        CREATOR = new Creator() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return Orientation.values()[parcel.readInt()];
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new Orientation[i];
            }
        };
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(ordinal());
    }
}