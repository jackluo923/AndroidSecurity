package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;

public class ff implements Creator {
    static void a(fe feVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, feVar.getVersionCode());
        b.b(parcel, GoogleScorer.CLIENT_PLUS, feVar.eC(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, feVar.eD(), false);
        b.D(parcel, p);
    }

    public fe[] Y(int i) {
        return new fe[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return v(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return Y(i);
    }

    public fe v(Parcel parcel) {
        String str = null;
        int o = a.o(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    arrayList = a.c(parcel, n, fe.a.CREATOR);
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
            return new fe(i, arrayList, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }
}