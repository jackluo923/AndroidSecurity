package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class TileOverlayOptionsCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(TileOverlayOptions tileOverlayOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, tileOverlayOptions.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, tileOverlayOptions.hh(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, tileOverlayOptions.isVisible());
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, tileOverlayOptions.getZIndex());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, tileOverlayOptions.getFadeIn());
        b.D(parcel, p);
    }

    public TileOverlayOptions createFromParcel(Parcel parcel) {
        boolean z = false;
        int o = a.o(parcel);
        IBinder iBinder = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        boolean z2 = true;
        int i = 0;
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
                    z = a.c(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    f = a.j(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    z2 = a.c(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new TileOverlayOptions(i, iBinder, z, f, z2);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public TileOverlayOptions[] newArray(int i) {
        return new TileOverlayOptions[i];
    }
}