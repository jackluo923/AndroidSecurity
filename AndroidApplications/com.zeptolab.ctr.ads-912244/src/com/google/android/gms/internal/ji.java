package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class ji implements Creator {
    static void a(jh jhVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, jhVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, jhVar.label, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, jhVar.value, false);
        b.D(parcel, p);
    }

    public jh bg(Parcel parcel) {
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
            return new jh(i, str2, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public jh[] cm(int i) {
        return new jh[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bg(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cm(i);
    }
}