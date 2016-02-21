package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class OnDriveIdResponse implements SafeParcelable {
    public static final Creator CREATOR;
    DriveId Do;
    final int wj;

    static {
        CREATOR = new ab();
    }

    OnDriveIdResponse(int i, DriveId driveId) {
        this.wj = i;
        this.Do = driveId;
    }

    public int describeContents() {
        return 0;
    }

    public DriveId getDriveId() {
        return this.Do;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ab.a(this, parcel, i);
    }
}