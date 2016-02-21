package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.er;

public class CreateFolderRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final MetadataBundle Ds;
    final DriveId Dt;
    final int wj;

    static {
        CREATOR = new i();
    }

    CreateFolderRequest(int i, DriveId driveId, MetadataBundle metadataBundle) {
        this.wj = i;
        this.Dt = (DriveId) er.f(driveId);
        this.Ds = (MetadataBundle) er.f(metadataBundle);
    }

    public CreateFolderRequest(DriveId driveId, MetadataBundle metadataBundle) {
        this(1, driveId, metadataBundle);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i.a(this, parcel, i);
    }
}