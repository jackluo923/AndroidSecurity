package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class c implements Creator {
    static void a(CountrySpecification countrySpecification, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, countrySpecification.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, countrySpecification.oQ, false);
        b.D(parcel, p);
    }

    public CountrySpecification aU(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = a.m(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new CountrySpecification(i, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public CountrySpecification[] ca(int i) {
        return new CountrySpecification[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aU(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return ca(i);
    }
}