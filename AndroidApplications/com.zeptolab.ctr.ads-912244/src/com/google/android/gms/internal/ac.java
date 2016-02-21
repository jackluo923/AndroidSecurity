package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class ac implements Creator {
    static void a(ab abVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, abVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, abVar.ln, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, abVar.height);
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, abVar.heightPixels);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, abVar.lo);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, abVar.width);
        b.c(parcel, GoogleScorer.CLIENT_ALL, abVar.widthPixels);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, abVar.lp, i, false);
        b.D(parcel, p);
    }

    public ab b(Parcel parcel) {
        ab[] abVarArr = null;
        int i = 0;
        int o = a.o(parcel);
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        String str = null;
        int i5 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i5 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i4 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i3 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    z = a.c(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    i2 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    i = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    abVarArr = (ab[]) a.b(parcel, n, ab.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new ab(i5, str, i4, i3, z, i2, i, abVarArr);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public ab[] c(int i) {
        return new ab[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return b(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return c(i);
    }
}