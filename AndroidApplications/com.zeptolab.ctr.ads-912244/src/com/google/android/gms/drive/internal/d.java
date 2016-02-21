package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class d implements Creator {
    static void a(CloseContentsAndUpdateMetadataRequest closeContentsAndUpdateMetadataRequest, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, closeContentsAndUpdateMetadataRequest.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, closeContentsAndUpdateMetadataRequest.Do, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, closeContentsAndUpdateMetadataRequest.Dp, i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, closeContentsAndUpdateMetadataRequest.Dq, i, false);
        b.D(parcel, p);
    }

    public CloseContentsAndUpdateMetadataRequest E(Parcel parcel) {
        Contents contents = null;
        int o = a.o(parcel);
        int i = 0;
        MetadataBundle metadataBundle = null;
        DriveId driveId = null;
        while (parcel.dataPosition() < o) {
            MetadataBundle metadataBundle2;
            DriveId driveId2;
            int i2;
            Contents contents2;
            int n = a.n(parcel);
            Contents contents3;
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    contents3 = contents;
                    metadataBundle2 = metadataBundle;
                    driveId2 = driveId;
                    i2 = a.g(parcel, n);
                    contents2 = contents3;
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i2 = i;
                    MetadataBundle metadataBundle3 = metadataBundle;
                    driveId2 = (DriveId) a.a(parcel, n, DriveId.CREATOR);
                    contents2 = contents;
                    metadataBundle2 = metadataBundle3;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    driveId2 = driveId;
                    i2 = i;
                    contents3 = contents;
                    metadataBundle2 = (MetadataBundle) a.a(parcel, n, MetadataBundle.CREATOR);
                    contents2 = contents3;
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    contents2 = (Contents) a.a(parcel, n, Contents.CREATOR);
                    metadataBundle2 = metadataBundle;
                    driveId2 = driveId;
                    i2 = i;
                    break;
                default:
                    a.b(parcel, n);
                    contents2 = contents;
                    metadataBundle2 = metadataBundle;
                    driveId2 = driveId;
                    i2 = i;
                    break;
            }
            i = i2;
            driveId = driveId2;
            metadataBundle = metadataBundle2;
            contents = contents2;
        }
        if (parcel.dataPosition() == o) {
            return new CloseContentsAndUpdateMetadataRequest(i, driveId, metadataBundle, contents);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public CloseContentsAndUpdateMetadataRequest[] aj(int i) {
        return new CloseContentsAndUpdateMetadataRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return E(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aj(i);
    }
}