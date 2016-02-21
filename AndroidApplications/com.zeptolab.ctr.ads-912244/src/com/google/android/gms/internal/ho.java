package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;

public class ho implements Creator {
    static void a(hn hnVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.b(parcel, 1, hnVar.LA, false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, hnVar.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, hnVar.gr(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, hnVar.gs());
        b.D(parcel, p);
    }

    public hn aw(Parcel parcel) {
        String str = null;
        boolean z = false;
        int o = a.o(parcel);
        List list = null;
        int i = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    list = a.c(parcel, n, ht.CREATOR);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    z = a.c(parcel, n);
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
            return new hn(i, list, str, z);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public hn[] bq(int i) {
        return new hn[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aw(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bq(i);
    }
}