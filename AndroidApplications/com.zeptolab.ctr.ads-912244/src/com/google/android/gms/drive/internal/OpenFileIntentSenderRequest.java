package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class OpenFileIntentSenderRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final String CX;
    final DriveId CY;
    final String[] Dk;
    final int wj;

    static {
        CREATOR = new ah();
    }

    OpenFileIntentSenderRequest(int i, String str, String[] strArr, DriveId driveId) {
        this.wj = i;
        this.CX = str;
        this.Dk = strArr;
        this.CY = driveId;
    }

    public OpenFileIntentSenderRequest(String str, String[] strArr, DriveId driveId) {
        this(1, str, strArr, driveId);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ah.a(this, parcel, i);
    }
}