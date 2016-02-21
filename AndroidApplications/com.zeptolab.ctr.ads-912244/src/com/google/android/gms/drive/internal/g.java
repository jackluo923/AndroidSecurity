package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class g implements Creator {
    static void a(CreateFileIntentSenderRequest createFileIntentSenderRequest, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, createFileIntentSenderRequest.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, createFileIntentSenderRequest.Ds, i, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, createFileIntentSenderRequest.CQ);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, createFileIntentSenderRequest.CX, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, createFileIntentSenderRequest.CY, i, false);
        b.D(parcel, p);
    }

    public CreateFileIntentSenderRequest H(Parcel parcel) {
        int i = 0;
        DriveId driveId = null;
        int o = a.o(parcel);
        String str = null;
        MetadataBundle metadataBundle = null;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i2 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    metadataBundle = (MetadataBundle) a.a(parcel, n, MetadataBundle.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    driveId = (DriveId) a.a(parcel, n, DriveId.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new CreateFileIntentSenderRequest(i2, metadataBundle, i, str, driveId);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public CreateFileIntentSenderRequest[] am(int i) {
        return new CreateFileIntentSenderRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return H(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return am(i);
    }
}