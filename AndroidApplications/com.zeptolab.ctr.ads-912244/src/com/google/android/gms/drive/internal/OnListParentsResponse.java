package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class OnListParentsResponse implements SafeParcelable {
    public static final Creator CREATOR;
    final DataHolder Ee;
    final int wj;

    static {
        CREATOR = new ae();
    }

    OnListParentsResponse(int i, DataHolder dataHolder) {
        this.wj = i;
        this.Ee = dataHolder;
    }

    public int describeContents() {
        return 0;
    }

    public DataHolder fd() {
        return this.Ee;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ae.a(this, parcel, i);
    }
}