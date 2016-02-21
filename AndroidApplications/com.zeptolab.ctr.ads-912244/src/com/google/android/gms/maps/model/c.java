package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class c {
    static void a(GroundOverlayOptions groundOverlayOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, groundOverlayOptions.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, groundOverlayOptions.he(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, groundOverlayOptions.getLocation(), i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, groundOverlayOptions.getWidth());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, groundOverlayOptions.getHeight());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, groundOverlayOptions.getBounds(), i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, groundOverlayOptions.getBearing());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, groundOverlayOptions.getZIndex());
        b.a(parcel, (int)ZBuildConfig.$minsdk, groundOverlayOptions.isVisible());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, groundOverlayOptions.getTransparency());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, groundOverlayOptions.getAnchorU());
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, groundOverlayOptions.getAnchorV());
        b.D(parcel, p);
    }
}