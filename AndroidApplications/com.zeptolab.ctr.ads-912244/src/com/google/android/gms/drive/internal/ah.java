package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class ah implements Creator {
    static void a(OpenFileIntentSenderRequest openFileIntentSenderRequest, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, openFileIntentSenderRequest.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, openFileIntentSenderRequest.CX, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, openFileIntentSenderRequest.Dk, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, openFileIntentSenderRequest.CY, i, false);
        b.D(parcel, p);
    }

    public OpenFileIntentSenderRequest V(Parcel parcel) {
        DriveId driveId = null;
        int o = a.o(parcel);
        int i = 0;
        String[] strArr = null;
        String str = null;
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
                    strArr = a.x(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    driveId = (DriveId) a.a(parcel, n, DriveId.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new OpenFileIntentSenderRequest(i, str, strArr, driveId);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public OpenFileIntentSenderRequest[] aA(int i) {
        return new OpenFileIntentSenderRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return V(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aA(i);
    }
}