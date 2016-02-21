package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class d {
    static void a(LatLngBounds latLngBounds, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, latLngBounds.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, latLngBounds.southwest, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, latLngBounds.northeast, i, false);
        b.D(parcel, p);
    }
}