package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class a {
    static void a_(CameraPosition cameraPosition, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, cameraPosition.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, cameraPosition.target, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, cameraPosition.zoom);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, cameraPosition.tilt);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, cameraPosition.bearing);
        b.D(parcel, p);
    }
}