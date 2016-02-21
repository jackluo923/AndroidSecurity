package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.ir.b.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashSet;
import java.util.Set;

public class iw implements Creator {
    static void a(b bVar, Parcel parcel, int i) {
        int p = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        Set hB = bVar.hB();
        if (hB.contains(Integer.valueOf(1))) {
            com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, bVar.getVersionCode());
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS))) {
            com.google.android.gms.common.internal.safeparcel.b.c(parcel, GoogleScorer.CLIENT_PLUS, bVar.getHeight());
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE))) {
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, bVar.getUrl(), true);
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE))) {
            com.google.android.gms.common.internal.safeparcel.b.c(parcel, GoogleScorer.CLIENT_APPSTATE, bVar.getWidth());
        }
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, p);
    }

    public b aM(Parcel parcel) {
        int i = 0;
        int o = a.o(parcel);
        Set hashSet = new HashSet();
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i3 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(1));
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i2 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new b(hashSet, i3, i2, str, i);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public b[] bJ(int i) {
        return new b[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aM(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bJ(i);
    }
}