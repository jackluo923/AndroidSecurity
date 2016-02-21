package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.CollectionMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.Filter;
import java.util.Collections;

public class InFilter implements SafeParcelable, Filter {
    public static final e CREATOR;
    final MetadataBundle EP;
    private final CollectionMetadataField EX;
    final int wj;

    static {
        CREATOR = new e();
    }

    InFilter(int i, MetadataBundle metadataBundle) {
        this.wj = i;
        this.EP = metadataBundle;
        this.EX = (CollectionMetadataField) d.b(metadataBundle);
    }

    public InFilter(CollectionMetadataField collectionMetadataField, Object obj) {
        this(1, MetadataBundle.a(collectionMetadataField, Collections.singleton(obj)));
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}