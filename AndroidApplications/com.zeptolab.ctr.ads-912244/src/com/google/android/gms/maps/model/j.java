package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class j {
    static void a(TileOverlayOptions tileOverlayOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, tileOverlayOptions.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, tileOverlayOptions.hh(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, tileOverlayOptions.isVisible());
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, tileOverlayOptions.getZIndex());
        b.D(parcel, p);
    }
}