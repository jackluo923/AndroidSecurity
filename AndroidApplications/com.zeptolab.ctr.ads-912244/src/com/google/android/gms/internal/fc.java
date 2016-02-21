package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.fb.a;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class fc implements Creator {
    static void a(a aVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, aVar.getVersionCode());
        b.c(parcel, GoogleScorer.CLIENT_PLUS, aVar.el());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, aVar.er());
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, aVar.em());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, aVar.es());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, aVar.et(), false);
        b.c(parcel, GoogleScorer.CLIENT_ALL, aVar.eu());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, aVar.ew(), false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, aVar.ey(), i, false);
        b.D(parcel, p);
    }

    public a[] W(int i) {
        return new a[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return t(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return W(i);
    }

    public a t(Parcel parcel) {
        ew ewVar = null;
        int i = 0;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        String str = null;
        String str2 = null;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    z = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    str = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    ewVar = (ew) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, ew.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new a(i4, i3, z2, i2, z, str2, i, str, ewVar);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }
}