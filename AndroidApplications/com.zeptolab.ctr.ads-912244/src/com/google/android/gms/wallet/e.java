package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class e implements Creator {
    static void a(d dVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, dVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, dVar.Yj, i, false);
        b.D(parcel, p);
    }

    public d aV(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        LoyaltyWalletObject loyaltyWalletObject = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    loyaltyWalletObject = (LoyaltyWalletObject) a.a(parcel, n, LoyaltyWalletObject.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new d(i, loyaltyWalletObject);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public d[] cb(int i) {
        return new d[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aV(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cb(i);
    }
}