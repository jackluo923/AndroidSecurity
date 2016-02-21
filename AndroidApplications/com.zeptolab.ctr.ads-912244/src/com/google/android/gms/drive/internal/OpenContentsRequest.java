package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class OpenContentsRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final int CR;
    final DriveId Do;
    final int wj;

    static {
        CREATOR = new ag();
    }

    OpenContentsRequest(int i, DriveId driveId, int i2) {
        this.wj = i;
        this.Do = driveId;
        this.CR = i2;
    }

    public OpenContentsRequest(DriveId driveId, int i) {
        this(1, driveId, i);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ag.a(this, parcel, i);
    }
}