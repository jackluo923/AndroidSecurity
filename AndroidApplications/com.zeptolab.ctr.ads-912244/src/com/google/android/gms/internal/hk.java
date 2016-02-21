package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class hk implements Creator {
    static void a(hj hjVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, hjVar.getRequestId(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, hjVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, hjVar.getExpirationTime());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, hjVar.gn());
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, hjVar.getLatitude());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, hjVar.getLongitude());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, hjVar.go());
        b.c(parcel, GoogleScorer.CLIENT_ALL, hjVar.gp());
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, hjVar.getNotificationResponsiveness());
        b.c(parcel, ZBuildConfig.$minsdk, hjVar.gq());
        b.D(parcel, p);
    }

    public hj av(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        short s = (short) 0;
        double d = 0.0d;
        double d2 = 0.0d;
        float f = BitmapDescriptorFactory.HUE_RED;
        long j = 0;
        int i3 = 0;
        int i4 = -1;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    j = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    s = a.f(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    d = a.k(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    d2 = a.k(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    f = a.j(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    i2 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    i3 = a.g(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    i4 = a.g(parcel, n);
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
            return new hj(i, str, i2, s, d, d2, f, j, i3, i4);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public hj[] bp(int i) {
        return new hj[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return av(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bp(i);
    }
}