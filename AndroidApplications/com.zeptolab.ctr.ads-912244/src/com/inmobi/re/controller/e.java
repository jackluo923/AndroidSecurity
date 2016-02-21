package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.inmobi.re.controller.JSController.Properties;

final class e implements Creator {
    e() {
    }

    public Properties a(Parcel parcel) {
        return new Properties(parcel);
    }

    public Properties[] a(int i) {
        return new Properties[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}