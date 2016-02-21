package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class g implements Creator {
    static void a(FullWalletRequest fullWalletRequest, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, fullWalletRequest.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, fullWalletRequest.Yk, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, fullWalletRequest.Yl, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, fullWalletRequest.Yu, i, false);
        b.D(parcel, p);
    }

    public FullWalletRequest aX(Parcel parcel) {
        Cart cart = null;
        int o = a.o(parcel);
        int i = 0;
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
                    cart = (Cart) a.a(parcel, n, Cart.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new FullWalletRequest(i, str2, str, cart);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public FullWalletRequest[] cd(int i) {
        return new FullWalletRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aX(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cd(i);
    }
}