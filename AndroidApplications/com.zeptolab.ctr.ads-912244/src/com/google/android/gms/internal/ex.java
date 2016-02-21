package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class ex implements Creator {
    static void a(ew ewVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, ewVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, ewVar.ei(), i, false);
        b.D(parcel, p);
    }

    public ew[] T(int i) {
        return new ew[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return q(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return T(i);
    }

    public ew q(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        ey eyVar = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    eyVar = (ey) a.a(parcel, n, ey.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new ew(i, eyVar);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }
}