package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class LocationRequestCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(LocationRequest locationRequest, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, locationRequest.mPriority);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, locationRequest.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, locationRequest.Lc);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, locationRequest.Ld);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, locationRequest.Le);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, locationRequest.KV);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, locationRequest.Lf);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, locationRequest.Lg);
        b.D(parcel, p);
    }

    public LocationRequest createFromParcel(Parcel parcel) {
        boolean z = false;
        int o = a.o(parcel);
        int i = IMBrowserActivity.EXPAND_ACTIVITY;
        long j = 3600000;
        long j2 = 600000;
        long j3 = Long.MAX_VALUE;
        int i2 = Integer.MAX_VALUE;
        float f = BitmapDescriptorFactory.HUE_RED;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    j = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    j2 = a.h(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    z = a.c(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    j3 = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    i2 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    f = a.j(parcel, n);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i3 = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new LocationRequest(i3, i, j, j2, z, j3, i2, f);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public LocationRequest[] newArray(int i) {
        return new LocationRequest[i];
    }
}