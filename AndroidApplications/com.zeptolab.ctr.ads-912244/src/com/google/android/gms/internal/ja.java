package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ir.g;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashSet;
import java.util.Set;

public class ja implements Creator {
    static void a(g gVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        Set hB = gVar.hB();
        if (hB.contains(Integer.valueOf(1))) {
            b.c(parcel, 1, gVar.getVersionCode());
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, gVar.isPrimary());
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, gVar.getValue(), true);
        }
        b.D(parcel, p);
    }

    public g aQ(Parcel parcel) {
        boolean z = false;
        int o = a.o(parcel);
        Set hashSet = new HashSet();
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(1));
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    z = a.c(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new g(hashSet, i, z, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public g[] bN(int i) {
        return new g[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aQ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bN(i);
    }
}