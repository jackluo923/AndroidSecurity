package com.google.android.gms.plus.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class j implements Creator {
    static void a(h hVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, hVar.getAccountName(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, hVar.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, hVar.hq(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, hVar.hr(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, hVar.hs(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, hVar.ht(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, hVar.hu(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, hVar.hv(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, hVar.hw(), false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, hVar.hx(), i, false);
        b.D(parcel, p);
    }

    public h aF(Parcel parcel) {
        PlusCommonExtras plusCommonExtras = null;
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String[] strArr = null;
        String[] strArr2 = null;
        String[] strArr3 = null;
        String str5 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str5 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    strArr3 = a.x(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    strArr2 = a.x(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    strArr = a.x(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str4 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str3 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str2 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    str = a.m(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    plusCommonExtras = (PlusCommonExtras) a.a(parcel, n, PlusCommonExtras.CREATOR);
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
            return new h(i, str5, strArr3, strArr2, strArr, str4, str3, str2, str, plusCommonExtras);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public h[] bC(int i) {
        return new h[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aF(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bC(i);
    }
}