package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.inmobi.re.controller.JSController.ResizeProperties;

final class a implements Creator {
    a() {
    }

    public ResizeProperties a_(Parcel parcel) {
        return new ResizeProperties(parcel);
    }

    public ResizeProperties[] a_(int i) {
        return new ResizeProperties[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}