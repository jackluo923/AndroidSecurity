package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class StatusCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(Status status, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, status.getStatusCode());
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, status.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, status.dF(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, status.dE(), i, false);
        b.D(parcel, p);
    }

    public Status createFromParcel(Parcel parcel) {
        PendingIntent pendingIntent = null;
        int i = 0;
        int o = a.o(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    pendingIntent = (PendingIntent) a.a(parcel, n, PendingIntent.CREATOR);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i2 = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new Status(i2, i, str, pendingIntent);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public Status[] newArray(int i) {
        return new Status[i];
    }
}