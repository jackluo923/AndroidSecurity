package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class UpdateMetadataRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final DriveId Do;
    final MetadataBundle Dp;
    final int wj;

    static {
        CREATOR = new am();
    }

    UpdateMetadataRequest(int i, DriveId driveId, MetadataBundle metadataBundle) {
        this.wj = i;
        this.Do = driveId;
        this.Dp = metadataBundle;
    }

    public UpdateMetadataRequest(DriveId driveId, MetadataBundle metadataBundle) {
        this(1, driveId, metadataBundle);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        am.a(this, parcel, i);
    }
}