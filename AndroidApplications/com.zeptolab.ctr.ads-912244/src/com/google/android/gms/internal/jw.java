package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class jw implements Creator {
    static void a(jv jvVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, jvVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, jvVar.ZK, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, jvVar.oi, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, jvVar.ZO, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, jvVar.ZP, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, jvVar.ZQ, i, false);
        b.D(parcel, p);
    }

    public jv bn(Parcel parcel) {
        jt jtVar = null;
        int o = a.o(parcel);
        int i = 0;
        jt jtVar2 = null;
        jr jrVar = null;
        String str = null;
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
                    str = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    jrVar = (jr) a.a(parcel, n, jr.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    jtVar2 = (jt) a.a(parcel, n, jt.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    jtVar = (jt) a.a(parcel, n, jt.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new jv(i, str2, str, jrVar, jtVar2, jtVar);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bn(parcel);
    }

    public jv[] ct(int i) {
        return new jv[i];
    }

    public /* synthetic */ Object[] newArray(int i) {
        return ct(i);
    }
}