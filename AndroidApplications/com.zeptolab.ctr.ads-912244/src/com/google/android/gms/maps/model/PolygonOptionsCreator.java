package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;
import java.util.List;

public class PolygonOptionsCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(PolygonOptions polygonOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, polygonOptions.getVersionCode());
        b.b(parcel, GoogleScorer.CLIENT_PLUS, polygonOptions.getPoints(), false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, polygonOptions.hg(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, polygonOptions.getStrokeWidth());
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, polygonOptions.getStrokeColor());
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, polygonOptions.getFillColor());
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, polygonOptions.getZIndex());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, polygonOptions.isVisible());
        b.a(parcel, (int)ZBuildConfig.$minsdk, polygonOptions.isGeodesic());
        b.D(parcel, p);
    }

    public PolygonOptions createFromParcel(Parcel parcel) {
        float f = BitmapDescriptorFactory.HUE_RED;
        boolean z = false;
        int o = a.o(parcel);
        List list = null;
        List arrayList = new ArrayList();
        boolean z2 = false;
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
                    list = a.c(parcel, n, LatLng.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    a.a(parcel, n, arrayList, getClass().getClassLoader());
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
                    z2 = a.c(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    z = a.c(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new PolygonOptions(i3, list, arrayList, f2, i2, i, f, z2, z);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public PolygonOptions[] newArray(int i) {
        return new PolygonOptions[i];
    }
}