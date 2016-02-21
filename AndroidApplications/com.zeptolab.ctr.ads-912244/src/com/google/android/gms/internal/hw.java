package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.hx.a;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class hw implements Creator {
    static void a(a aVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, aVar.gt(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, aVar.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, aVar.getTag(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, aVar.gH(), false);
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, aVar.gI());
        b.D(parcel, p);
    }

    public a aA(Parcel parcel) {
        int i = 0;
        String str = null;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new a(i2, str3, str2, str, i);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public a[] bu(int i) {
        return new a[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aA(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bu(i);
    }
}