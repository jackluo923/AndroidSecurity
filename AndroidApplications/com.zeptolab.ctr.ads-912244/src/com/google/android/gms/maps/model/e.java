package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class e {
    static void a(LatLng latLng, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, latLng.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, latLng.latitude);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, latLng.longitude);
        b.D(parcel, p);
    }
}