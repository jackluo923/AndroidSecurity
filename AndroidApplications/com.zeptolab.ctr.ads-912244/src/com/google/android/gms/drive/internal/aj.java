package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class aj implements Creator {
    static void a(RemoveEventListenerRequest removeEventListenerRequest, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, removeEventListenerRequest.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, removeEventListenerRequest.CS, i, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, removeEventListenerRequest.Dm);
        b.D(parcel, p);
    }

    public RemoveEventListenerRequest X(Parcel parcel) {
        int i = 0;
        int o = a.o(parcel);
        DriveId driveId = null;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            DriveId driveId2;
            int i3;
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    int i4 = i;
                    driveId2 = driveId;
                    i3 = a.g(parcel, n);
                    n = i4;
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i3 = i2;
                    DriveId driveId3 = (DriveId) a.a(parcel, n, DriveId.CREATOR);
                    n = i;
                    driveId2 = driveId3;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    n = a.g(parcel, n);
                    driveId2 = driveId;
                    i3 = i2;
                    break;
                default:
                    a.b(parcel, n);
                    n = i;
                    driveId2 = driveId;
                    i3 = i2;
                    break;
            }
            i2 = i3;
            driveId = driveId2;
            i = n;
        }
        if (parcel.dataPosition() == o) {
            return new RemoveEventListenerRequest(i2, driveId, i);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public RemoveEventListenerRequest[] aC(int i) {
        return new RemoveEventListenerRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return X(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aC(i);
    }
}