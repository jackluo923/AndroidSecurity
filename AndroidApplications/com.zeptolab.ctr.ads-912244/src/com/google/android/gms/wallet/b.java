package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;

public class b implements Creator {
    static void a(Cart cart, Parcel parcel, int i) {
        int p = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, cart.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, cart.Yf, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, cart.Yg, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, GoogleScorer.CLIENT_APPSTATE, cart.Yh, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, p);
    }

    public Cart aT(Parcel parcel) {
        String str = null;
        int o = a.o(parcel);
        int i = 0;
        ArrayList arrayList = new ArrayList();
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
                    arrayList = a.c(parcel, n, LineItem.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new Cart(i, str2, str, arrayList);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public Cart[] bZ(int i) {
        return new Cart[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aT(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bZ(i);
    }
}