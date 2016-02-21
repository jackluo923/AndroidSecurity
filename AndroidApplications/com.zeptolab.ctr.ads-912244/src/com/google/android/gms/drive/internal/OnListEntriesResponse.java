package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class OnListEntriesResponse implements SafeParcelable {
    public static final Creator CREATOR;
    final DataHolder Ed;
    final int wj;

    static {
        CREATOR = new ad();
    }

    OnListEntriesResponse(int i, DataHolder dataHolder) {
        this.wj = i;
        this.Ed = dataHolder;
    }

    public int describeContents() {
        return 0;
    }

    public DataHolder fc() {
        return this.Ed;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ad.a(this, parcel, i);
    }
}