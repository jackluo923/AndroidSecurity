package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class CreateFileIntentSenderRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final int CQ;
    final String CX;
    final DriveId CY;
    final MetadataBundle Ds;
    final int wj;

    static {
        CREATOR = new g();
    }

    CreateFileIntentSenderRequest(int i, MetadataBundle metadataBundle, int i2, String str, DriveId driveId) {
        this.wj = i;
        this.Ds = metadataBundle;
        this.CQ = i2;
        this.CX = str;
        this.CY = driveId;
    }

    public CreateFileIntentSenderRequest(MetadataBundle metadataBundle, int i, String str, DriveId driveId) {
        this(1, metadataBundle, i, str, driveId);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        g.a(this, parcel, i);
    }
}