package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ee.a;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;

public class eq implements Creator {
    static void a(a aVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, aVar.getAccountName(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, aVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, aVar.dT(), false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, aVar.dS());
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, aVar.dV(), false);
        b.D(parcel, p);
    }

    public a[] R(int i) {
        return new a[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return m(parcel);
    }

    public a m(Parcel parcel) {
        int i = 0;
        String str = null;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        List list = null;
        String str2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    list = com.google.android.gms.common.internal.safeparcel.a.y(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
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
            return new a(i2, str2, list, i, str);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return R(i);
    }
}