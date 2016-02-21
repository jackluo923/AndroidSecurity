package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.fb.a;
import com.google.android.gms.internal.fe.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class fd implements Creator {
    static void a(b bVar, Parcel parcel, int i) {
        int p = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, bVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, bVar.eX, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, bVar.CI, i, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, p);
    }

    public b[] X(int i) {
        return new b[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return u(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return X(i);
    }

    public b u(Parcel parcel) {
        a aVar = null;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    aVar = (a) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, a.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new b(i, str, aVar);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }
}