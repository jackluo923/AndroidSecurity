package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class d implements Creator {
    static void a(DriveId driveId, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, driveId.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, driveId.Dc, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, driveId.Dd);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, driveId.De);
        b.D(parcel, p);
    }

    public DriveId[] ae(int i) {
        return new DriveId[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return z(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return ae(i);
    }

    public DriveId z(Parcel parcel) {
        long j = 0;
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        long j2 = 0;
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
                    j2 = a.h(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    j = a.h(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new DriveId(i, str, j2, j);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }
}