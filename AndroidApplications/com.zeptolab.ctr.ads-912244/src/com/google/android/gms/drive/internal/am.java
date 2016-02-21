package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class am implements Creator {
    static void a(UpdateMetadataRequest updateMetadataRequest, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, updateMetadataRequest.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, updateMetadataRequest.Do, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, updateMetadataRequest.Dp, i, false);
        b.D(parcel, p);
    }

    public UpdateMetadataRequest Z(Parcel parcel) {
        MetadataBundle metadataBundle = null;
        int o = a.o(parcel);
        int i = 0;
        DriveId driveId = null;
        while (parcel.dataPosition() < o) {
            DriveId driveId2;
            int i2;
            MetadataBundle metadataBundle2;
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    MetadataBundle metadataBundle3 = metadataBundle;
                    driveId2 = driveId;
                    i2 = a.g(parcel, n);
                    metadataBundle2 = metadataBundle3;
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i2 = i;
                    DriveId driveId3 = (DriveId) a.a(parcel, n, DriveId.CREATOR);
                    metadataBundle2 = metadataBundle;
                    driveId2 = driveId3;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    metadataBundle2 = (MetadataBundle) a.a(parcel, n, MetadataBundle.CREATOR);
                    driveId2 = driveId;
                    i2 = i;
                    break;
                default:
                    a.b(parcel, n);
                    metadataBundle2 = metadataBundle;
                    driveId2 = driveId;
                    i2 = i;
                    break;
            }
            i = i2;
            driveId = driveId2;
            metadataBundle = metadataBundle2;
        }
        if (parcel.dataPosition() == o) {
            return new UpdateMetadataRequest(i, driveId, metadataBundle);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public UpdateMetadataRequest[] aE(int i) {
        return new UpdateMetadataRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return Z(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aE(i);
    }
}