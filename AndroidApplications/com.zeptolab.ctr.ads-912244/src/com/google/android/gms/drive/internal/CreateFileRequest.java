package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.er;

public class CreateFileRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final Contents Dq;
    final MetadataBundle Ds;
    final DriveId Dt;
    final int wj;

    static {
        CREATOR = new h();
    }

    CreateFileRequest(int i, DriveId driveId, MetadataBundle metadataBundle, Contents contents) {
        this.wj = i;
        this.Dt = (DriveId) er.f(driveId);
        this.Ds = (MetadataBundle) er.f(metadataBundle);
        this.Dq = (Contents) er.f(contents);
    }

    public CreateFileRequest(DriveId driveId, MetadataBundle metadataBundle, Contents contents) {
        this(1, driveId, metadataBundle, contents);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        h.a(this, parcel, i);
    }
}