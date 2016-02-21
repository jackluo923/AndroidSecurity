package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class f {
    static void a(MarkerOptions markerOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, markerOptions.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, markerOptions.getPosition(), i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, markerOptions.getTitle(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, markerOptions.getSnippet(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, markerOptions.hf(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, markerOptions.getAnchorU());
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, markerOptions.getAnchorV());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, markerOptions.isDraggable());
        b.a(parcel, (int)ZBuildConfig.$minsdk, markerOptions.isVisible());
        b.D(parcel, p);
    }
}