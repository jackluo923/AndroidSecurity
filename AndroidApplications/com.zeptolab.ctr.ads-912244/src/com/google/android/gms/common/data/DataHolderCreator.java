package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class DataHolderCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(DataHolder dataHolder, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, dataHolder.dH(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, dataHolder.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, dataHolder.dI(), i, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, dataHolder.getStatusCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, dataHolder.getMetadata(), false);
        b.D(parcel, p);
    }

    public DataHolder createFromParcel(Parcel parcel) {
        int i = 0;
        Bundle bundle = null;
        int o = a.o(parcel);
        CursorWindow[] cursorWindowArr = null;
        String[] strArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    strArr = a.x(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    cursorWindowArr = (CursorWindow[]) a.b(parcel, n, CursorWindow.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    bundle = a.o(parcel, n);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i2 = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() != o) {
            throw new a.a("Overread allowed size end=" + o, parcel);
        }
        DataHolder dataHolder = new DataHolder(i2, strArr, cursorWindowArr, i, bundle);
        dataHolder.validateContents();
        return dataHolder;
    }

    public DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}