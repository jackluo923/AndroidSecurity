package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ir.a;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashSet;
import java.util.Set;

public class it implements Creator {
    static void a(a aVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        Set hB = aVar.hB();
        if (hB.contains(Integer.valueOf(1))) {
            b.c(parcel, 1, aVar.getVersionCode());
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS))) {
            b.c(parcel, GoogleScorer.CLIENT_PLUS, aVar.getMax());
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE))) {
            b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, aVar.getMin());
        }
        b.D(parcel, p);
    }

    public a aJ(Parcel parcel) {
        int i = 0;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        Set hashSet = new HashSet();
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    hashSet.add(Integer.valueOf(1));
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new a(hashSet, i3, i2, i);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public a[] bG(int i) {
        return new a[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aJ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bG(i);
    }
}