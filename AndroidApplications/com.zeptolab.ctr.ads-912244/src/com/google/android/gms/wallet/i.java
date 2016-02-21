package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class i implements Creator {
    static void a(LineItem lineItem, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, lineItem.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, lineItem.description, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, lineItem.Yy, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, lineItem.Yz, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, lineItem.Yf, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, lineItem.YA);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, lineItem.Yg, false);
        b.D(parcel, p);
    }

    public LineItem aZ(Parcel parcel) {
        int i = 0;
        String str = null;
        int o = a.o(parcel);
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i2 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str5 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str4 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str3 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str2 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str = a.m(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new LineItem(i2, str5, str4, str3, str2, i, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public LineItem[] cf(int i) {
        return new LineItem[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aZ(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cf(i);
    }
}