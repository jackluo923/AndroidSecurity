package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class h implements Creator {
    static void a(Operator operator, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, operator.wj);
        b.a(parcel, 1, operator.mTag, false);
        b.D(parcel, p);
    }

    public Operator[] aN(int i) {
        return new Operator[i];
    }

    public Operator ai(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
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
            return new Operator(i, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ai(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aN(i);
    }
}