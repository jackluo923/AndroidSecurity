package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class f implements Creator {
    static void a(MetadataBundle metadataBundle, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, metadataBundle.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, metadataBundle.Ek, false);
        b.D(parcel, p);
    }

    public MetadataBundle[] aF(int i) {
        return new MetadataBundle[i];
    }

    public MetadataBundle aa(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        Bundle bundle = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    bundle = a.o(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new MetadataBundle(i, bundle);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aa(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aF(i);
    }
}