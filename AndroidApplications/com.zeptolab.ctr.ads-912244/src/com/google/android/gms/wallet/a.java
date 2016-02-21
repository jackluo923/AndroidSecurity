package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class a implements Creator {
    static void a_(Address address, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, address.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, address.name, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, address.KB, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, address.KC, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, address.KD, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, address.oQ, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, address.Yd, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, address.Ye, false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, address.KI, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, address.KK, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, address.KL);
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, address.KM, false);
        b.D(parcel, p);
    }

    public Address aS(Parcel parcel) {
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        boolean z = false;
        String str10 = null;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str4 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str5 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str6 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    str7 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    str8 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    str9 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    z = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    str10 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new Address(i, str, str2, str3, str4, str5, str6, str7, str8, str9, z, str10);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public Address[] bY(int i) {
        return new Address[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aS(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bY(i);
    }
}