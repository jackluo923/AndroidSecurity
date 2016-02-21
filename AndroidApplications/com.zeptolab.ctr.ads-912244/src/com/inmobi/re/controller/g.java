package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.inmobi.re.controller.JSController.OrientationProperties;

final class g implements Creator {
    g() {
    }

    public OrientationProperties a(Parcel parcel) {
        return new OrientationProperties(parcel);
    }

    public OrientationProperties[] a(int i) {
        return new OrientationProperties[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}