package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class CreateContentsRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final int wj;

    static {
        CREATOR = new f();
    }

    public CreateContentsRequest() {
        this(1);
    }

    CreateContentsRequest(int i) {
        this.wj = i;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}