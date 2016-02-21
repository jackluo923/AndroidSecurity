package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class CloseContentsAndUpdateMetadataRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final DriveId Do;
    final MetadataBundle Dp;
    final Contents Dq;
    final int wj;

    static {
        CREATOR = new d();
    }

    CloseContentsAndUpdateMetadataRequest(int i, DriveId driveId, MetadataBundle metadataBundle, Contents contents) {
        this.wj = i;
        this.Do = driveId;
        this.Dp = metadataBundle;
        this.Dq = contents;
    }

    public CloseContentsAndUpdateMetadataRequest(DriveId driveId, MetadataBundle metadataBundle, Contents contents) {
        this(1, driveId, metadataBundle, contents);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        d.a(this, parcel, i);
    }
}