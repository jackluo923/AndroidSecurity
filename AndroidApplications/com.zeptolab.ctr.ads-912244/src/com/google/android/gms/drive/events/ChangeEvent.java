package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public final class ChangeEvent implements SafeParcelable, ResourceEvent {
    public static final Creator CREATOR;
    final DriveId CS;
    final int Dl;
    final int wj;

    static {
        CREATOR = new a();
    }

    ChangeEvent(int i, DriveId driveId, int i2) {
        this.wj = i;
        this.CS = driveId;
        this.Dl = i2;
    }

    public int describeContents() {
        return 0;
    }

    public DriveId getDriveId() {
        return this.CS;
    }

    public int getType() {
        return 1;
    }

    public boolean hasContentChanged() {
        return (this.Dl & 2) != 0;
    }

    public boolean hasMetadataChanged() {
        return (this.Dl & 1) != 0;
    }

    public String toString() {
        return String.format("ChangeEvent [id=%s,changeFlags=%x]", new Object[]{this.CS, Integer.valueOf(this.Dl)});
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}