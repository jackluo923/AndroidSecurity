package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class e implements Creator {
    static void a(InFilter inFilter, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, inFilter.wj);
        b.a(parcel, 1, inFilter.EP, i, false);
        b.D(parcel, p);
    }

    public InFilter[] aK(int i) {
        return new InFilter[i];
    }

    public InFilter af(Parcel parcel) {
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
            return new InFilter(i, metadataBundle);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return af(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aK(i);
    }
}