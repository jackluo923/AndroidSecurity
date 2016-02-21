package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class b {
    static void a(CircleOptions circleOptions, Parcel parcel, int i) {
        int p = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, circleOptions.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, circleOptions.getCenter(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, circleOptions.getRadius());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, circleOptions.getStrokeWidth());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, circleOptions.getStrokeColor());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, circleOptions.getFillColor());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_ALL, circleOptions.getZIndex());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, circleOptions.isVisible());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, p);
    }
}