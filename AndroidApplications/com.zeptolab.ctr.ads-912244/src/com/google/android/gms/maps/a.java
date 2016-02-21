package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class a {
    static void a_(GoogleMapOptions googleMapOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, googleMapOptions.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, googleMapOptions.gN());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, googleMapOptions.gO());
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, googleMapOptions.getMapType());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, googleMapOptions.getCamera(), i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, googleMapOptions.gP());
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, googleMapOptions.gQ());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, googleMapOptions.gR());
        b.a(parcel, (int)ZBuildConfig.$minsdk, googleMapOptions.gS());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, googleMapOptions.gT());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, googleMapOptions.gU());
        b.D(parcel, p);
    }
}