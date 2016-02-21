package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ConflictEvent;

public class OnEventResponse implements SafeParcelable {
    public static final Creator CREATOR;
    final int Dm;
    final ChangeEvent Eb;
    final ConflictEvent Ec;
    final int wj;

    static {
        CREATOR = new ac();
    }

    OnEventResponse(int i, int i2, ChangeEvent changeEvent, ConflictEvent conflictEvent) {
        this.wj = i;
        this.Dm = i2;
        this.Eb = changeEvent;
        this.Ec = conflictEvent;
    }

    public int describeContents() {
        return 0;
    }

    public ChangeEvent fa() {
        return this.Eb;
    }

    public ConflictEvent fb() {
        return this.Ec;
    }

    public int getEventType() {
        return this.Dm;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ac.a(this, parcel, i);
    }
}