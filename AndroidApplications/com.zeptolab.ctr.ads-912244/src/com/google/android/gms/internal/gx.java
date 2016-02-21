package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;

public class gx implements Creator {
    static void a(gy gyVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.b(parcel, 1, gyVar.fS(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, gyVar.getVersionCode());
        b.D(parcel, p);
    }

    public gy[] aX(int i) {
        return new gy[i];
    }

    public gy al(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    arrayList = a.c(parcel, n, InvitationEntity.CREATOR);
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
            return new gy(i, arrayList);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return al(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aX(i);
    }
}