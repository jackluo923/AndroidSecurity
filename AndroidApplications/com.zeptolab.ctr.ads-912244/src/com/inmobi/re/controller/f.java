package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.inmobi.re.controller.JSController.ExpandProperties;

final class f implements Creator {
    f() {
    }

    public ExpandProperties a(Parcel parcel) {
        return new ExpandProperties(parcel);
    }

    public ExpandProperties[] a(int i) {
        return new ExpandProperties[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}