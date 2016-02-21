package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class b implements Creator {
    static void a(WebImage webImage, Parcel parcel, int i) {
        int p = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, webImage.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, webImage.getUrl(), i, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, webImage.getWidth());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, GoogleScorer.CLIENT_APPSTATE, webImage.getHeight());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, p);
    }

    public WebImage[] M(int i) {
        return new WebImage[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return l(parcel);
    }

    public WebImage l(Parcel parcel) {
        int i = 0;
        int o = a.o(parcel);
        Uri uri = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            Uri uri2;
            int i4;
            int n = a.n(parcel);
            int i5;
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i5 = i;
                    i = i2;
                    uri2 = uri;
                    i4 = a.g(parcel, n);
                    n = i5;
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i4 = i3;
                    i5 = i2;
                    uri2 = (Uri) a.a(parcel, n, Uri.CREATOR);
                    n = i;
                    i = i5;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    uri2 = uri;
                    i4 = i3;
                    i5 = i;
                    i = a.g(parcel, n);
                    n = i5;
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    n = a.g(parcel, n);
                    i = i2;
                    uri2 = uri;
                    i4 = i3;
                    break;
                default:
                    a.b(parcel, n);
                    n = i;
                    i = i2;
                    uri2 = uri;
                    i4 = i3;
                    break;
            }
            i3 = i4;
            uri = uri2;
            i2 = i;
            i = n;
        }
        if (parcel.dataPosition() == o) {
            return new WebImage(i3, uri, i2, i);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return M(i);
    }
}