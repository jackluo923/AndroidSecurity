package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.inmobi.re.controller.JSController.Dimensions;

final class c implements Creator {
    c() {
    }

    public Dimensions a(Parcel parcel) {
        return new Dimensions(parcel);
    }

    public Dimensions[] a(int i) {
        return new Dimensions[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}