package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;

public class PolylineOptionsCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(PolylineOptions polylineOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, polylineOptions.getVersionCode());
        b.b(parcel, GoogleScorer.CLIENT_PLUS, polylineOptions.getPoints(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, polylineOptions.getWidth());
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, polylineOptions.getColor());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, polylineOptions.getZIndex());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, polylineOptions.isVisible());
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, polylineOptions.isGeodesic());
        b.D(parcel, p);
    }

    public PolylineOptions createFromParcel(Parcel parcel) {
        float f = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        int o = a.o(parcel);
        List list = null;
        boolean z2 = false;
        int i = 0;
        float f2 = 0.0f;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i2 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    list = a.c(parcel, n, LatLng.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    f2 = a.j(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    f = a.j(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    z2 = a.c(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    z = a.c(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new PolylineOptions(i2, list, f2, i, f, z2, z);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public PolylineOptions[] newArray(int i) {
        return new PolylineOptions[i];
    }
}