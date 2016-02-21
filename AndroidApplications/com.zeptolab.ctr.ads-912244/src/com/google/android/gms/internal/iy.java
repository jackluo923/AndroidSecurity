package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ir.d;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashSet;
import java.util.Set;

public class iy implements Creator {
    static void a(d dVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        Set hB = dVar.hB();
        if (hB.contains(Integer.valueOf(1))) {
            b.c(parcel, 1, dVar.getVersionCode());
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, dVar.getFamilyName(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, dVar.getFormatted(), true);
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, dVar.getGivenName(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, dVar.getHonorificPrefix(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, dVar.getHonorificSuffix(), true);
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_ALL))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_ALL, dVar.getMiddleName(), true);
        }
        b.D(parcel, p);
    }

    public d aO(Parcel parcel) {
        String str = null;
        int o = a.o(parcel);
        Set hashSet = new HashSet();
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(1));
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str6 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str5 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str4 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str3 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str2 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_ALL));
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new d(hashSet, i, str6, str5, str4, str3, str2, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public d[] bL(int i) {
        return new d[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aO(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bL(i);
    }
}