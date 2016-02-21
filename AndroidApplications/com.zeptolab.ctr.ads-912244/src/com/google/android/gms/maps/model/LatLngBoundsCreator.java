package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class LatLngBoundsCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(LatLngBounds latLngBounds, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, latLngBounds.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, latLngBounds.southwest, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, latLngBounds.northeast, i, false);
        b.D(parcel, p);
    }

    public LatLngBounds createFromParcel(Parcel parcel) {
        LatLng latLng = null;
        int o = a.o(parcel);
        int i = 0;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < o) {
            int i2;
            LatLng latLng3;
            int n = a.n(parcel);
            LatLng latLng4;
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    latLng4 = latLng;
                    latLng = latLng2;
                    i2 = a.g(parcel, n);
                    latLng3 = latLng4;
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i2 = i;
                    latLng4 = (LatLng) a.a(parcel, n, CREATOR);
                    latLng3 = latLng;
                    latLng = latLng4;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    latLng3 = (LatLng) a.a(parcel, n, CREATOR);
                    latLng = latLng2;
                    i2 = i;
                    break;
                default:
                    a.b(parcel, n);
                    latLng3 = latLng;
                    latLng = latLng2;
                    i2 = i;
                    break;
            }
            i = i2;
            latLng2 = latLng;
            latLng = latLng3;
        }
        if (parcel.dataPosition() == o) {
            return new LatLngBounds(i, latLng2, latLng);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public LatLngBounds[] newArray(int i) {
        return new LatLngBounds[i];
    }
}