package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;

public class CloseContentsRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final Contents Dq;
    final Boolean Dr;
    final int wj;

    static {
        CREATOR = new e();
    }

    CloseContentsRequest(int i, Contents contents, Boolean bool) {
        this.wj = i;
        this.Dq = contents;
        this.Dr = bool;
    }

    public CloseContentsRequest(Contents contents, boolean z) {
        this(1, contents, Boolean.valueOf(z));
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}