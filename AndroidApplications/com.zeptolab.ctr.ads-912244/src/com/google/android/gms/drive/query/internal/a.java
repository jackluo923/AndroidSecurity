package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class a implements Creator {
    static void a_(ComparisonFilter comparisonFilter, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, comparisonFilter.wj);
        b.a(parcel, 1, comparisonFilter.EO, i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, comparisonFilter.EP, i, false);
        b.D(parcel, p);
    }

    public ComparisonFilter[] aH(int i) {
        return new ComparisonFilter[i];
    }

    public ComparisonFilter ac(Parcel parcel) {
        MetadataBundle metadataBundle = null;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        Operator operator = null;
        while (parcel.dataPosition() < o) {
            int i2;
            MetadataBundle metadataBundle2;
            Operator operator2;
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i2 = i;
                    Operator operator3 = (Operator) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, Operator.CREATOR);
                    metadataBundle2 = metadataBundle;
                    operator2 = operator3;
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    metadataBundle2 = (MetadataBundle) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, MetadataBundle.CREATOR);
                    operator2 = operator;
                    i2 = i;
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    MetadataBundle metadataBundle3 = metadataBundle;
                    operator2 = operator;
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    metadataBundle2 = metadataBundle3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    metadataBundle2 = metadataBundle;
                    operator2 = operator;
                    i2 = i;
                    break;
            }
            i = i2;
            operator = operator2;
            metadataBundle = metadataBundle2;
        }
        if (parcel.dataPosition() == o) {
            return new ComparisonFilter(i, operator, metadataBundle);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ac(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aH(i);
    }
}