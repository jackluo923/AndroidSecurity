package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;

public class OnContentsResponse implements SafeParcelable {
    public static final Creator CREATOR;
    final Contents CW;
    final int wj;

    static {
        CREATOR = new z();
    }

    OnContentsResponse(int i, Contents contents) {
        this.wj = i;
        this.CW = contents;
    }

    public int describeContents() {
        return 0;
    }

    public Contents eX() {
        return this.CW;
    }

    public void writeToParcel(Parcel parcel, int i) {
        z.a(this, parcel, i);
    }
}