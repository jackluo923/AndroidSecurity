package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class g {
    static void a(PolygonOptions polygonOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, polygonOptions.getVersionCode());
        b.b(parcel, GoogleScorer.CLIENT_PLUS, polygonOptions.getPoints(), false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, polygonOptions.hg(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, polygonOptions.getStrokeWidth());
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, polygonOptions.getStrokeColor());
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, polygonOptions.getFillColor());
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, polygonOptions.getZIndex());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, polygonOptions.isVisible());
        b.a(parcel, (int)ZBuildConfig.$minsdk, polygonOptions.isGeodesic());
        b.D(parcel, p);
    }
}