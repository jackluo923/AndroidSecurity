package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class h {
    static void a(PolylineOptions polylineOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, polylineOptions.getVersionCode());
        b.b(parcel, GoogleScorer.CLIENT_PLUS, polylineOptions.getPoints(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, polylineOptions.getWidth());
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, polylineOptions.getColor());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, polylineOptions.getZIndex());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, polylineOptions.isVisible());
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, polylineOptions.isGeodesic());
        b.D(parcel, p);
    }
}