package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class VisibleRegionCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(VisibleRegion visibleRegion, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, visibleRegion.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, visibleRegion.nearLeft, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, visibleRegion.nearRight, i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, visibleRegion.farLeft, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, visibleRegion.farRight, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, visibleRegion.latLngBounds, i, false);
        b.D(parcel, p);
    }

    public VisibleRegion createFromParcel(Parcel parcel) {
        LatLngBounds latLngBounds = null;
        int o = a.o(parcel);
        int i = 0;
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    latLng4 = (LatLng) a.a(parcel, n, LatLng.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    latLng3 = (LatLng) a.a(parcel, n, LatLng.CREATOR);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    latLng2 = (LatLng) a.a(parcel, n, LatLng.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    latLng = (LatLng) a.a(parcel, n, LatLng.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    latLngBounds = (LatLngBounds) a.a(parcel, n, LatLngBounds.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new VisibleRegion(i, latLng4, latLng3, latLng2, latLng, latLngBounds);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public VisibleRegion[] newArray(int i) {
        return new VisibleRegion[i];
    }
}