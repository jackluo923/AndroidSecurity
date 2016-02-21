package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class CameraPositionCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(CameraPosition cameraPosition, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, cameraPosition.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, cameraPosition.target, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, cameraPosition.zoom);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, cameraPosition.tilt);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, cameraPosition.bearing);
        b.D(parcel, p);
    }

    public CameraPosition createFromParcel(Parcel parcel) {
        float f = BitmapDescriptorFactory.HUE_RED;
        int o = a.o(parcel);
        int i = 0;
        LatLng latLng = null;
        float f2 = 0.0f;
        float f3 = 0.0f;
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
                    f3 = a.j(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    f2 = a.j(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    f = a.j(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new CameraPosition(i, latLng, f3, f2, f);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public CameraPosition[] newArray(int i) {
        return new CameraPosition[i];
    }
}