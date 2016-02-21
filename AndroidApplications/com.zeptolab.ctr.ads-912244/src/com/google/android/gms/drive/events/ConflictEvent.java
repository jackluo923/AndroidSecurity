package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public final class ConflictEvent implements SafeParcelable, DriveEvent {
    public static final Creator CREATOR;
    final DriveId CS;
    final int wj;

    static {
        CREATOR = new b();
    }

    ConflictEvent(int i, DriveId driveId) {
        this.wj = i;
        this.CS = driveId;
    }

    public int describeContents() {
        return 0;
    }

    public int getType() {
        return 1;
    }

    public String toString() {
        return String.format("ConflictEvent [id=%s]", new Object[]{this.CS});
    }

    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}