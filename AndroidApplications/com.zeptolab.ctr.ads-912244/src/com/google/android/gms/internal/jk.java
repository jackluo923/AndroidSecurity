package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;

public class jk implements Creator {
    static void a(jj jjVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, jjVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, jjVar.ZA, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, jjVar.ZB, false);
        b.b(parcel, GoogleScorer.CLIENT_APPSTATE, jjVar.ZC, false);
        b.D(parcel, p);
    }

    public jj bh(Parcel parcel) {
        String str = null;
        int o = a.o(parcel);
        int i = 0;
        ArrayList eH = fj.eH();
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
                    eH = a.c(parcel, n, jh.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new jj(i, str2, str, eH);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public jj[] cn(int i) {
        return new jj[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bh(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cn(i);
    }
}