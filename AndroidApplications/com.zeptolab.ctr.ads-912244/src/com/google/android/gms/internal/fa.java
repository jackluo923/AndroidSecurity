package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ey.a;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class fa implements Creator {
    static void a(a aVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, aVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, aVar.Cs, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, aVar.Ct);
        b.D(parcel, p);
    }

    public a[] V(int i) {
        return new a[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return s(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return V(i);
    }

    public a s(Parcel parcel) {
        int i = 0;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new a(i2, str, i);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }
}