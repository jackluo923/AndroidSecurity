package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class AuthorizeAccessRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final DriveId CS;
    final long Dn;
    final int wj;

    static {
        CREATOR = new b();
    }

    AuthorizeAccessRequest(int i, long j, DriveId driveId) {
        this.wj = i;
        this.Dn = j;
        this.CS = driveId;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}