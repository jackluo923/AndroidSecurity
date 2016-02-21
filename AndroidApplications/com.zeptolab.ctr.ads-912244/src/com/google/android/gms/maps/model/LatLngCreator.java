package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class LatLngCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(LatLng latLng, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, latLng.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, latLng.latitude);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, latLng.longitude);
        b.D(parcel, p);
    }

    public LatLng createFromParcel(Parcel parcel) {
        double d = 0.0d;
        int o = a.o(parcel);
        int i = 0;
        double d2 = 0.0d;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    d2 = a.k(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    d = a.k(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new LatLng(i, d2, d);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public LatLng[] newArray(int i) {
        return new LatLng[i];
    }
}