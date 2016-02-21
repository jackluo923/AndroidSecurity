package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class o implements Creator {
    static void a(ProxyCard proxyCard, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, proxyCard.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, proxyCard.Zn, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, proxyCard.Zo, false);
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, proxyCard.Zp);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, proxyCard.Zq);
        b.D(parcel, p);
    }

    public ProxyCard bf(Parcel parcel) {
        String str = null;
        int i = 0;
        int o = a.o(parcel);
        int i2 = 0;
        String str2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i3 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str2 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i2 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    i = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new ProxyCard(i3, str2, str, i2, i);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public ProxyCard[] cl(int i) {
        return new ProxyCard[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bf(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cl(i);
    }
}