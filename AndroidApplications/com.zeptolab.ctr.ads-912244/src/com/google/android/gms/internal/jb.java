package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ir.h;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashSet;
import java.util.Set;

public class jb implements Creator {
    static void a(h hVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        Set hB = hVar.hB();
        if (hB.contains(Integer.valueOf(1))) {
            b.c(parcel, 1, hVar.getVersionCode());
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE))) {
            b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, hVar.io());
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, hVar.getValue(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, hVar.getLabel(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR))) {
            b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, hVar.getType());
        }
        b.D(parcel, p);
    }

    public h aR(Parcel parcel) {
        String str = null;
        int i = 0;
        int o = a.o(parcel);
        Set hashSet = new HashSet();
        int i2 = 0;
        String str2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i3 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(1));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str2 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    i2 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new h(hashSet, i3, str2, i2, str, i);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public h[] bO(int i) {
        return new h[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aR(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bO(i);
    }
}