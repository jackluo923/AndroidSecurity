package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class GetMetadataRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final DriveId Do;
    final int wj;

    static {
        CREATOR = new t();
    }

    GetMetadataRequest(int i, DriveId driveId) {
        this.wj = i;
        this.Do = driveId;
    }

    public GetMetadataRequest(DriveId driveId) {
        this(1, driveId);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        t.a(this, parcel, i);
    }
}