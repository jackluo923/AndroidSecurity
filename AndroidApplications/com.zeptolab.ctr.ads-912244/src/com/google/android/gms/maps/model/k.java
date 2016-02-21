package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class k {
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
}