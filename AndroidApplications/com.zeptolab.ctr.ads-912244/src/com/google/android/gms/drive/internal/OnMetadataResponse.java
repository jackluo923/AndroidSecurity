package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class OnMetadataResponse implements SafeParcelable {
    public static final Creator CREATOR;
    final MetadataBundle Ds;
    final int wj;

    static {
        CREATOR = new af();
    }

    OnMetadataResponse(int i, MetadataBundle metadataBundle) {
        this.wj = i;
        this.Ds = metadataBundle;
    }

    public int describeContents() {
        return 0;
    }

    public MetadataBundle fe() {
        return this.Ds;
    }

    public void writeToParcel(Parcel parcel, int i) {
        af.a(this, parcel, i);
    }
}