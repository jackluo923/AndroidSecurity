package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.fe.a;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;

public class fg implements Creator {
    static void a(a aVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, aVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, aVar.className, false);
        b.b(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, aVar.CH, false);
        b.D(parcel, p);
    }

    public a[] Z(int i) {
        return new a[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return w(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return Z(i);
    }

    public a w(Parcel parcel) {
        ArrayList arrayList = null;
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
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n, fe.b.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new a(i, str, arrayList);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }
}