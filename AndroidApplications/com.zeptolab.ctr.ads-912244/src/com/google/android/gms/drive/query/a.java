package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class a implements Creator {
    static void a_(Query query, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, query.wj);
        b.a(parcel, 1, query.EL, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, query.EM, false);
        b.D(parcel, p);
    }

    public Query[] aG(int i) {
        return new Query[i];
    }

    public Query ab(Parcel parcel) {
        String str = null;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        LogicalFilter logicalFilter = null;
        while (parcel.dataPosition() < o) {
            int i2;
            String str2;
            LogicalFilter logicalFilter2;
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i2 = i;
                    LogicalFilter logicalFilter3 = (LogicalFilter) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, LogicalFilter.CREATOR);
                    str2 = str;
                    logicalFilter2 = logicalFilter3;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    logicalFilter2 = logicalFilter;
                    i2 = i;
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    String str3 = str;
                    logicalFilter2 = logicalFilter;
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    str2 = str3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    str2 = str;
                    logicalFilter2 = logicalFilter;
                    i2 = i;
                    break;
            }
            i = i2;
            logicalFilter = logicalFilter2;
            str = str2;
        }
        if (parcel.dataPosition() == o) {
            return new Query(i, logicalFilter, str);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ab(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aG(i);
    }
}