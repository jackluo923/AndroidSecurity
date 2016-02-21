package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;

public class ia implements Creator {
    static void a(hz hzVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, hzVar.name, false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, hzVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, hzVar.Ov, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, hzVar.Ow, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, hzVar.Ox, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, hzVar.Oy, false);
        b.D(parcel, p);
    }

    public hz aC(Parcel parcel) {
        List list = null;
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str4 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str3 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str2 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    list = a.y(parcel, n);
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
            return new hz(i, str4, str3, str2, str, list);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public hz[] bx(int i) {
        return new hz[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aC(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bx(i);
    }
}