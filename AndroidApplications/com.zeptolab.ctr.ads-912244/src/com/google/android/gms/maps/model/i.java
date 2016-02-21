package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class i {
    static void a(Tile tile, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, tile.getVersionCode());
        b.c(parcel, GoogleScorer.CLIENT_PLUS, tile.width);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, tile.height);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, tile.data, false);
        b.D(parcel, p);
    }
}