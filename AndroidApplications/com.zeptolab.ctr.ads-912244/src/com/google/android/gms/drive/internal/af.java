package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class af implements Creator {
    static void a(OnMetadataResponse onMetadataResponse, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, onMetadataResponse.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, onMetadataResponse.Ds, i, false);
        b.D(parcel, p);
    }

    public OnMetadataResponse T(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        MetadataBundle metadataBundle = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    metadataBundle = (MetadataBundle) a.a(parcel, n, MetadataBundle.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new OnMetadataResponse(i, metadataBundle);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public OnMetadataResponse[] ay(int i) {
        return new OnMetadataResponse[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return T(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return ay(i);
    }
}