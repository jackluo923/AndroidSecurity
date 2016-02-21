package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;

public class a implements Creator {
    static void a_(UserAddressRequest userAddressRequest, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, userAddressRequest.getVersionCode());
        b.b(parcel, GoogleScorer.CLIENT_PLUS, userAddressRequest.Ky, false);
        b.D(parcel, p);
    }

    public UserAddressRequest ar(Parcel parcel) {
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        List list = null;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    list = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n, CountrySpecification.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new UserAddressRequest(i, list);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public UserAddressRequest[] be(int i) {
        return new UserAddressRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ar(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return be(i);
    }
}