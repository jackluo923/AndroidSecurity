package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class m implements Creator {
    static void a(NotifyTransactionStatusRequest notifyTransactionStatusRequest, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, notifyTransactionStatusRequest.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, notifyTransactionStatusRequest.Yk, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, notifyTransactionStatusRequest.status);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, notifyTransactionStatusRequest.Zk, false);
        b.D(parcel, p);
    }

    public NotifyTransactionStatusRequest bd(Parcel parcel) {
        String str = null;
        int i = 0;
        int o = a.o(parcel);
        String str2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i2 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str2 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str = a.m(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new NotifyTransactionStatusRequest(i2, str2, i, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public NotifyTransactionStatusRequest[] cj(int i) {
        return new NotifyTransactionStatusRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bd(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cj(i);
    }
}