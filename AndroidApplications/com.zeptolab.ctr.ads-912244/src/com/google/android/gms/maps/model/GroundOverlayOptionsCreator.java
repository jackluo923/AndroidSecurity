package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class GroundOverlayOptionsCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

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

    public GroundOverlayOptions createFromParcel(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        IBinder iBinder = null;
        LatLng latLng = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        LatLngBounds latLngBounds = null;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    iBinder = a.n(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    latLng = (LatLng) a.a(parcel, n, LatLng.CREATOR);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    f = a.j(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    f2 = a.j(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    latLngBounds = (LatLngBounds) a.a(parcel, n, LatLngBounds.CREATOR);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    f3 = a.j(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    f4 = a.j(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    z = a.c(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    f5 = a.j(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    f6 = a.j(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    f7 = a.j(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new GroundOverlayOptions(i, iBinder, latLng, f, f2, latLngBounds, f3, f4, z, f5, f6, f7);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public GroundOverlayOptions[] newArray(int i) {
        return new GroundOverlayOptions[i];
    }
}