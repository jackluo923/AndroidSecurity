package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class a implements Creator {
    static void a_(Contents contents, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, contents.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, contents.AC, i, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, contents.CQ);
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, contents.CR);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, contents.CS, i, false);
        b.D(parcel, p);
    }

    public Contents[] ad(int i) {
        return new Contents[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return y(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return ad(i);
    }

    public Contents y(Parcel parcel) {
        DriveId driveId = null;
        int i = 0;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i2 = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    parcelFileDescriptor = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, ParcelFileDescriptor.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, DriveId.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new Contents(i3, parcelFileDescriptor, i2, i, driveId);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }
}