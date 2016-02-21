package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class hq implements Creator {
    static void a(hp hpVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, hpVar.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, hpVar.gt(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, hpVar.getTag(), false);
        b.D(parcel, p);
    }

    public hp ax(Parcel parcel) {
        String str = null;
        int o = a.o(parcel);
        int i = 0;
        String str2 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str2 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str = a.m(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new hp(i, str2, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public hp[] br(int i) {
        return new hp[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ax(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return br(i);
    }
}