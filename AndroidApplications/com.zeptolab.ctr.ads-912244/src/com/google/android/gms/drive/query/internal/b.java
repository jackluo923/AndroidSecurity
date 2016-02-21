package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class b implements Creator {
    static void a(FieldOnlyFilter fieldOnlyFilter, Parcel parcel, int i) {
        int p = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, fieldOnlyFilter.wj);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, fieldOnlyFilter.EP, i, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, p);
    }

    public FieldOnlyFilter[] aI(int i) {
        return new FieldOnlyFilter[i];
    }

    public FieldOnlyFilter ad(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        MetadataBundle metadataBundle = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    metadataBundle = (MetadataBundle) a.a(parcel, n, MetadataBundle.CREATOR);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new FieldOnlyFilter(i, metadataBundle);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ad(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aI(i);
    }
}