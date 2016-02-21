package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class CircleOptionsCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(CircleOptions circleOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, circleOptions.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, circleOptions.getCenter(), i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, circleOptions.getRadius());
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, circleOptions.getStrokeWidth());
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, circleOptions.getStrokeColor());
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, circleOptions.getFillColor());
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, circleOptions.getZIndex());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, circleOptions.isVisible());
        b.D(parcel, p);
    }

    public CircleOptions createFromParcel(Parcel parcel) {
        float f = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        int o = a.o(parcel);
        LatLng latLng = null;
        double d = 0.0d;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i3 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    latLng = (LatLng) a.a(parcel, n, LatLng.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    d = a.k(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    f2 = a.j(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    i2 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    f = a.j(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    z = a.c(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new CircleOptions(i3, latLng, d, f2, i2, i, f, z);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public CircleOptions[] newArray(int i) {
        return new CircleOptions[i];
    }
}