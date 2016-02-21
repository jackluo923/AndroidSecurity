package com.vungle.publisher;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class bp implements Parcelable {
    public static final Creator CREATOR;
    public long a;
    public int b;
    public int c;

    static {
        CREATOR = new Creator() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                bp bpVar = new bp();
                bpVar.a = parcel.readLong();
                bpVar.b = parcel.readInt();
                bpVar.c = parcel.readInt();
                return bpVar;
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new bp[i];
            }
        };
    }

    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return new StringBuilder("{firstAttemptMillis: ").append(this.a).append(", hardRetryCount: ").append(this.b).append(", softRetryCount: ").append(this.c).append("}").toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
    }
}