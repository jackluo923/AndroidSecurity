package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class ListParentsRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final DriveId DT;
    final int wj;

    static {
        CREATOR = new x();
    }

    ListParentsRequest(int i, DriveId driveId) {
        this.wj = i;
        this.DT = driveId;
    }

    public ListParentsRequest(DriveId driveId) {
        this(1, driveId);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        x.a(this, parcel, i);
    }
}