package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class jn implements Creator {
    static void a(jm jmVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, jmVar.getVersionCode());
        b.c(parcel, GoogleScorer.CLIENT_PLUS, jmVar.ZE);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, jmVar.ZF, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, jmVar.ZG);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, jmVar.ZH, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, jmVar.ZI);
        b.c(parcel, GoogleScorer.CLIENT_ALL, jmVar.ZJ);
        b.D(parcel, p);
    }

    public jm bi(Parcel parcel) {
        String str = null;
        int i = 0;
        int o = a.o(parcel);
        double d = 0.0d;
        long j = 0;
        int i2 = -1;
        String str2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i3 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str2 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    d = a.k(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    j = a.h(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    i2 = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new jm(i3, i, str2, d, str, j, i2);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public jm[] co(int i) {
        return new jm[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bi(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return co(i);
    }
}