package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class bm implements Creator {
    static void a(bn bnVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, bnVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, bnVar.mY, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, bnVar.mZ, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, bnVar.mimeType, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, bnVar.packageName, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, bnVar.na, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, bnVar.nb, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, bnVar.nc, false);
        b.D(parcel, p);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return d(parcel);
    }

    public bn d(Parcel parcel) {
        String str = null;
        int o = a.o(parcel);
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str7 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str6 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str5 = a.m(parcel, n);
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
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new bn(i, str7, str6, str5, str4, str3, str2, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public bn[] i(int i) {
        return new bn[i];
    }

    public /* synthetic */ Object[] newArray(int i) {
        return i(i);
    }
}