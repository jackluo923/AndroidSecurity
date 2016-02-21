package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.inmobi.re.controller.JSController.PlayerProperties;

final class b implements Creator {
    b() {
    }

    public PlayerProperties a(Parcel parcel) {
        return new PlayerProperties(parcel);
    }

    public PlayerProperties[] a(int i) {
        return new PlayerProperties[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}