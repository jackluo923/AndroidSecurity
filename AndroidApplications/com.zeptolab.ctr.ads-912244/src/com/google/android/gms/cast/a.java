package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;

public class a implements Creator {
    static void a_(ApplicationMetadata applicationMetadata, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, applicationMetadata.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, applicationMetadata.getApplicationId(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, applicationMetadata.getName(), false);
        b.b(parcel, GoogleScorer.CLIENT_APPSTATE, applicationMetadata.getImages(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, applicationMetadata.wm, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, applicationMetadata.getSenderAppIdentifier(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, applicationMetadata.cR(), i, false);
        b.D(parcel, p);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return j(parcel);
    }

    public ApplicationMetadata j(Parcel parcel) {
        Uri uri = null;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        String str = null;
        List list = null;
        List list2 = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    list2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n, WebImage.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    list = com.google.android.gms.common.internal.safeparcel.a.y(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, Uri.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new ApplicationMetadata(i, str3, str2, list2, list, str, uri);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return w(i);
    }

    public ApplicationMetadata[] w(int i) {
        return new ApplicationMetadata[i];
    }
}