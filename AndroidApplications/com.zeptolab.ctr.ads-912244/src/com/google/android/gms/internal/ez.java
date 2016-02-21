package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;

public class ez implements Creator {
    static void a(ey eyVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, eyVar.getVersionCode());
        b.b(parcel, GoogleScorer.CLIENT_PLUS, eyVar.ek(), false);
        b.D(parcel, p);
    }

    public ey[] U(int i) {
        return new ey[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return r(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return U(i);
    }

    public ey r(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    arrayList = a.c(parcel, n, ey.a.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new ey(i, arrayList);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }
}