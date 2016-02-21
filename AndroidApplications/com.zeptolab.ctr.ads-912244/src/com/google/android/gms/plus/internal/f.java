package com.google.android.gms.plus.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class f implements Creator {
    static void a(PlusCommonExtras plusCommonExtras, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, plusCommonExtras.ho(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, plusCommonExtras.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, plusCommonExtras.hp(), false);
        b.D(parcel, p);
    }

    public PlusCommonExtras aE(Parcel parcel) {
        String str = null;
        int o = a.o(parcel);
        int i = 0;
        String str2 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str2 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = a.m(parcel, n);
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
            return new PlusCommonExtras(i, str2, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public PlusCommonExtras[] bB(int i) {
        return new PlusCommonExtras[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aE(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bB(i);
    }
}