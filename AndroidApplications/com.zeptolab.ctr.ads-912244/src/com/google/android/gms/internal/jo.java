package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class jo implements Creator {
    static void a(jl jlVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, jlVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, jlVar.label, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, jlVar.ZD, i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, jlVar.type, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, jlVar.YM, i, false);
        b.D(parcel, p);
    }

    public jl bj(Parcel parcel) {
        jr jrVar = null;
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        jm jmVar = null;
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
                    jmVar = (jm) a.a(parcel, n, jm.CREATOR);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    jrVar = (jr) a.a(parcel, n, jr.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new jl(i, str2, jmVar, str, jrVar);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public jl[] cp(int i) {
        return new jl[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bj(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cp(i);
    }
}