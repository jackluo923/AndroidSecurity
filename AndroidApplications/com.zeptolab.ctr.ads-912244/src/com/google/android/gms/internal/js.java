package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class js implements Creator {
    static void a(jr jrVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, jrVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, jrVar.ZL);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, jrVar.ZM);
        b.D(parcel, p);
    }

    public jr bl(Parcel parcel) {
        long j = 0;
        int o = a.o(parcel);
        int i = 0;
        long j2 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    j2 = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    j = a.h(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new jr(i, j2, j);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public jr[] cr(int i) {
        return new jr[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bl(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cr(i);
    }
}