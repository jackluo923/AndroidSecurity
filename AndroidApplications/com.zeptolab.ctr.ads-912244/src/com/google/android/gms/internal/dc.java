package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class dc implements Creator {
    static void a(db dbVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, dbVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, dbVar.pU, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, dbVar.pV);
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, dbVar.pW);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, dbVar.pX);
        b.D(parcel, p);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return h(parcel);
    }

    public db h(Parcel parcel) {
        boolean z = false;
        int o = a.o(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i3 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i2 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    z = a.c(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new db(i3, str, i2, i, z);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return o(i);
    }

    public db[] o(int i) {
        return new db[i];
    }
}