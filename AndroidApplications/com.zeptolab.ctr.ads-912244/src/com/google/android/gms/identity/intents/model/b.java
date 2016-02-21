package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class b implements Creator {
    static void a(UserAddress userAddress, Parcel parcel, int i) {
        int p = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, userAddress.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, userAddress.name, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, userAddress.KB, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, userAddress.KC, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, userAddress.KD, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, userAddress.KE, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_ALL, userAddress.KF, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, userAddress.KG, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)ZBuildConfig.$minsdk, userAddress.KH, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, userAddress.oQ, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, userAddress.KI, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, userAddress.KJ, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)R.styleable.MapAttrs_zOrderOnTop, userAddress.KK, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)MMException.REQUEST_NOT_FILLED, userAddress.KL);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)MMException.REQUEST_BAD_RESPONSE, userAddress.KM, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)MMException.REQUEST_NOT_PERMITTED, userAddress.KN, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, p);
    }

    public UserAddress at(Parcel parcel) {
        int o = a.o(parcel);
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
        String str10 = null;
        String str11 = null;
        String str12 = null;
        boolean z = false;
        String str13 = null;
        String str14 = null;
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
                    str2 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str3 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str4 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str5 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str6 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    str7 = a.m(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    str8 = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    str9 = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    str10 = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    str11 = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    str12 = a.m(parcel, n);
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    z = a.c(parcel, n);
                    break;
                case MMException.REQUEST_BAD_RESPONSE:
                    str13 = a.m(parcel, n);
                    break;
                case MMException.REQUEST_NOT_PERMITTED:
                    str14 = a.m(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new UserAddress(i, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, z, str13, str14);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public UserAddress[] bg(int i) {
        return new UserAddress[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return at(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bg(i);
    }
}