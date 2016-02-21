package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class ie implements Creator {
    static void a(id idVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, idVar.OG, false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, idVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, idVar.OH, false);
        b.D(parcel, p);
    }

    public id aD(Parcel parcel) {
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
            return new id(i, str2, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public id[] by(int i) {
        return new id[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aD(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return by(i);
    }
}