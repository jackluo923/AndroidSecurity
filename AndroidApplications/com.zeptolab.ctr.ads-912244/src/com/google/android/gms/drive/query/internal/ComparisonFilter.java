package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.Filter;

public class ComparisonFilter implements SafeParcelable, Filter {
    public static final a CREATOR;
    final Operator EO;
    final MetadataBundle EP;
    final MetadataField EQ;
    final int wj;

    static {
        CREATOR = new a();
    }

    ComparisonFilter(int i, Operator operator, MetadataBundle metadataBundle) {
        this.wj = i;
        this.EO = operator;
        this.EP = metadataBundle;
        this.EQ = d.b(metadataBundle);
    }

    public ComparisonFilter(Operator operator, MetadataField metadataField, Object obj) {
        this(1, operator, MetadataBundle.a(metadataField, obj));
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}