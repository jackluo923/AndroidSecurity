package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.drive.DriveId;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class b implements Creator {
    static void a(AuthorizeAccessRequest authorizeAccessRequest, Parcel parcel, int i) {
        int p = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, authorizeAccessRequest.wj);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, authorizeAccessRequest.Dn);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, authorizeAccessRequest.CS, i, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, p);
    }

    public AuthorizeAccessRequest D(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        long j = 0;
        DriveId driveId = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    j = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    driveId = (DriveId) a.a(parcel, n, DriveId.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new AuthorizeAccessRequest(i, j, driveId);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public AuthorizeAccessRequest[] ai(int i) {
        return new AuthorizeAccessRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return D(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return ai(i);
    }
}