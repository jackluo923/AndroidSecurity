package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Query;

public class QueryRequest implements SafeParcelable {
    public static final Creator CREATOR;
    final Query Ef;
    final int wj;

    static {
        CREATOR = new ai();
    }

    QueryRequest(int i, Query query) {
        this.wj = i;
        this.Ef = query;
    }

    public QueryRequest(Query query) {
        this(1, query);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ai.a(this, parcel, i);
    }
}