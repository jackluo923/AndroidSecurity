package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.CameraPosition;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class GoogleMapOptionsCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(GoogleMapOptions googleMapOptions, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, googleMapOptions.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, googleMapOptions.gN());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, googleMapOptions.gO());
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, googleMapOptions.getMapType());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, googleMapOptions.getCamera(), i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, googleMapOptions.gP());
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, googleMapOptions.gQ());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, googleMapOptions.gR());
        b.a(parcel, (int)ZBuildConfig.$minsdk, googleMapOptions.gS());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, googleMapOptions.gT());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, googleMapOptions.gU());
        b.D(parcel, p);
    }

    public GoogleMapOptions createFromParcel(Parcel parcel) {
        byte b = (byte) 0;
        int o = a.o(parcel);
        CameraPosition cameraPosition = null;
        byte b2 = (byte) 0;
        byte b3 = (byte) 0;
        byte b4 = (byte) 0;
        byte b5 = (byte) 0;
        byte b6 = (byte) 0;
        int i = 0;
        byte b7 = (byte) 0;
        byte b8 = (byte) 0;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i2 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    b8 = a.e(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    b7 = a.e(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    cameraPosition = (CameraPosition) a.a(parcel, n, CameraPosition.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    b6 = a.e(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    b5 = a.e(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    b4 = a.e(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    b3 = a.e(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    b2 = a.e(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    b = a.e(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new GoogleMapOptions(i2, b8, b7, i, cameraPosition, b6, b5, b4, b3, b2, b);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public GoogleMapOptions[] newArray(int i) {
        return new GoogleMapOptions[i];
    }
}