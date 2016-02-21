package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class MarkerOptionsCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

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
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, markerOptions.isFlat());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, markerOptions.getRotation());
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, markerOptions.getInfoWindowAnchorU());
        b.a(parcel, (int)R.styleable.MapAttrs_zOrderOnTop, markerOptions.getInfoWindowAnchorV());
        b.a(parcel, (int)MMException.REQUEST_NOT_FILLED, markerOptions.getAlpha());
        b.D(parcel, p);
    }

    public MarkerOptions createFromParcel(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = 0.5f;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        float f6 = 1.0f;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    latLng = (LatLng) a.a(parcel, n, LatLng.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str2 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    iBinder = a.n(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    f = a.j(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    f2 = a.j(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    z = a.c(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    z2 = a.c(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    z3 = a.c(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    f3 = a.j(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    f4 = a.j(parcel, n);
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    f5 = a.j(parcel, n);
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    f6 = a.j(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new MarkerOptions(i, latLng, str, str2, iBinder, f, f2, z, z2, z3, f3, f4, f5, f6);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public MarkerOptions[] newArray(int i) {
        return new MarkerOptions[i];
    }
}