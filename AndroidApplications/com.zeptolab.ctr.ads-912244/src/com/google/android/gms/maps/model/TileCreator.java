package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class TileCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(Tile tile, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, tile.getVersionCode());
        b.c(parcel, GoogleScorer.CLIENT_PLUS, tile.width);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, tile.height);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, tile.data, false);
        b.D(parcel, p);
    }

    public Tile createFromParcel(Parcel parcel) {
        int i = 0;
        int o = a.o(parcel);
        byte[] bArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i3 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i2 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    bArr = a.p(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new Tile(i3, i2, i, bArr);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public Tile[] newArray(int i) {
        return new Tile[i];
    }
}