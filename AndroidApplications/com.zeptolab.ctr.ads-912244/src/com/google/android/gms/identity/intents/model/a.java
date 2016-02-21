package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class a implements Creator {
    static void a_(CountrySpecification countrySpecification, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, countrySpecification.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, countrySpecification.oQ, false);
        b.D(parcel, p);
    }

    public CountrySpecification as(Parcel parcel) {
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new CountrySpecification(i, str);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public CountrySpecification[] bf(int i) {
        return new CountrySpecification[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return as(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bf(i);
    }
}