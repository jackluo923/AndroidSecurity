package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class ad implements Creator {
    static void a(OnListEntriesResponse onListEntriesResponse, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, onListEntriesResponse.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, onListEntriesResponse.Ed, i, false);
        b.D(parcel, p);
    }

    public OnListEntriesResponse R(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        DataHolder dataHolder = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    dataHolder = (DataHolder) a.a(parcel, n, DataHolder.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new OnListEntriesResponse(i, dataHolder);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public OnListEntriesResponse[] aw(int i) {
        return new OnListEntriesResponse[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return R(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aw(i);
    }
}