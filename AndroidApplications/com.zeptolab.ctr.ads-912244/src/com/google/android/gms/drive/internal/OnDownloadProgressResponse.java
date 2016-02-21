package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class OnDownloadProgressResponse implements SafeParcelable {
    public static final Creator CREATOR;
    final long DZ;
    final long Ea;
    final int wj;

    static {
        CREATOR = new aa();
    }

    OnDownloadProgressResponse(int i, long j, long j2) {
        this.wj = i;
        this.DZ = j;
        this.Ea = j2;
    }

    public int describeContents() {
        return 0;
    }

    public long eY() {
        return this.DZ;
    }

    public long eZ() {
        return this.Ea;
    }

    public void writeToParcel(Parcel parcel, int i) {
        aa.a(this, parcel, i);
    }
}