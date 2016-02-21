package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.request.GameRequestEntity;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;

public class ha implements Creator {
    static void a(gz gzVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.b(parcel, 1, gzVar.fT(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, gzVar.getVersionCode());
        b.D(parcel, p);
    }

    public gz[] aY(int i) {
        return new gz[i];
    }

    public gz am(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    arrayList = a.c(parcel, n, GameRequestEntity.CREATOR);
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
            return new gz(i, arrayList);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return am(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aY(i);
    }
}