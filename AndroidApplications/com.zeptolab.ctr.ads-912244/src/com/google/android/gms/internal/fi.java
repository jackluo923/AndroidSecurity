package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class fi implements Creator {
    static void a(fh fhVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, fhVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, fhVar.eF(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, fhVar.eG(), i, false);
        b.D(parcel, p);
    }

    public fh[] aa(int i) {
        return new fh[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return x(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aa(i);
    }

    public fh x(Parcel parcel) {
        fe feVar = null;
        int o = a.o(parcel);
        int i = 0;
        Parcel parcel2 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    parcel2 = a.z(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    feVar = (fe) a.a(parcel, n, fe.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new fh(i, parcel2, feVar);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }
}