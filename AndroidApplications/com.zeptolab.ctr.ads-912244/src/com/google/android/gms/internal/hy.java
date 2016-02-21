package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.List;

public class hy implements Creator {
    static void a(hx hxVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, hxVar.getId(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, hxVar.gE(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, hxVar.gF(), i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, hxVar.gx(), i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, hxVar.gy());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, hxVar.gz(), i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, hxVar.gG(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, hxVar.gA(), i, false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, hxVar.gB());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, hxVar.getRating());
        b.c(parcel, R.styleable.MapAttrs_uiZoomGestures, hxVar.gC());
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, hxVar.gD());
        b.b(parcel, R.styleable.MapAttrs_zOrderOnTop, hxVar.gw(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, hxVar.wj);
        b.D(parcel, p);
    }

    public hx aB(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        List list = null;
        Bundle bundle = null;
        hz hzVar = null;
        LatLng latLng = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        LatLngBounds latLngBounds = null;
        String str2 = null;
        Uri uri = null;
        boolean z = false;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        int i2 = 0;
        long j = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    bundle = a.o(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    hzVar = (hz) a.a(parcel, n, hz.CREATOR);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    latLng = (LatLng) a.a(parcel, n, LatLng.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    f = a.j(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    latLngBounds = (LatLngBounds) a.a(parcel, n, LatLngBounds.CREATOR);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str2 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    uri = (Uri) a.a(parcel, n, Uri.CREATOR);
                    break;
                case ZBuildConfig.$minsdk:
                    z = a.c(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    f2 = a.j(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    i2 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    j = a.h(parcel, n);
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    list = a.c(parcel, n, ht.CREATOR);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new hx(i, str, list, bundle, hzVar, latLng, f, latLngBounds, str2, uri, z, f2, i2, j);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public hx[] bw(int i) {
        return new hx[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aB(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bw(i);
    }
}