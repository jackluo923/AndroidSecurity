package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class c implements Creator {
    static void a(b bVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, bVar.Lh);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, bVar.getVersionCode());
        b.c(parcel, GoogleScorer.CLIENT_PLUS, bVar.Li);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, bVar.Lj);
        b.D(parcel, p);
    }

    public b au(Parcel parcel) {
        int i = 1;
        int o = a.o(parcel);
        int i2 = 0;
        long j = 0;
        int i3 = 1;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i3 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    j = a.h(parcel, n);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i2 = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new b(i2, i3, i, j);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public b[] bm(int i) {
        return new b[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return au(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bm(i);
    }
}