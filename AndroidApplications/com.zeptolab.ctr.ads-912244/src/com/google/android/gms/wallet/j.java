package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.jj;
import com.google.android.gms.internal.jl;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.jr;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.jv;
import com.google.android.gms.maps.model.LatLng;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;

public class j implements Creator {
    static void a(LoyaltyWalletObject loyaltyWalletObject, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, loyaltyWalletObject.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, loyaltyWalletObject.eN, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, loyaltyWalletObject.YC, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, loyaltyWalletObject.YD, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, loyaltyWalletObject.YE, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, loyaltyWalletObject.YF, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, loyaltyWalletObject.YG, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, loyaltyWalletObject.YH, false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, loyaltyWalletObject.YI, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, loyaltyWalletObject.YJ, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, loyaltyWalletObject.YK, false);
        b.c(parcel, R.styleable.MapAttrs_useViewLifecycle, loyaltyWalletObject.state);
        b.b(parcel, R.styleable.MapAttrs_zOrderOnTop, loyaltyWalletObject.YL, false);
        b.a(parcel, (int)MMException.REQUEST_NOT_FILLED, loyaltyWalletObject.YM, i, false);
        b.b(parcel, MMException.REQUEST_BAD_RESPONSE, loyaltyWalletObject.YN, false);
        b.a(parcel, (int)ZBuildConfig.$targetsdk, loyaltyWalletObject.YP, false);
        b.a(parcel, (int)MMException.REQUEST_NOT_PERMITTED, loyaltyWalletObject.YO, false);
        b.a(parcel, (int)ApiEventType.API_MRAID_GET_DEFAULT_POSITION, loyaltyWalletObject.YR);
        b.b(parcel, ApiEventType.API_MRAID_GET_CURRENT_POSITION, loyaltyWalletObject.YQ, false);
        b.b(parcel, MMException.DISPLAY_AD_EXPIRED, loyaltyWalletObject.YT, false);
        b.b(parcel, MMException.DISPLAY_AD_NOT_READY, loyaltyWalletObject.YS, false);
        b.a(parcel, (int)MMException.DISPLAY_AD_ALREADY_DISPLAYED, loyaltyWalletObject.YV, i, false);
        b.b(parcel, MMException.DISPLAY_AD_NOT_FOUND, loyaltyWalletObject.YU, false);
        b.D(parcel, p);
    }

    public LoyaltyWalletObject ba(Parcel parcel) {
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
        int i2 = 0;
        ArrayList eH = fj.eH();
        jr jrVar = null;
        ArrayList eH2 = fj.eH();
        String str11 = null;
        String str12 = null;
        ArrayList eH3 = fj.eH();
        boolean z = false;
        ArrayList eH4 = fj.eH();
        ArrayList eH5 = fj.eH();
        ArrayList eH6 = fj.eH();
        jl jlVar = null;
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
                    i2 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    eH = a.c(parcel, n, jv.CREATOR);
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    jrVar = (jr) a.a(parcel, n, jr.CREATOR);
                    break;
                case MMException.REQUEST_BAD_RESPONSE:
                    eH2 = a.c(parcel, n, LatLng.CREATOR);
                    break;
                case MMException.REQUEST_NOT_PERMITTED:
                    str11 = a.m(parcel, n);
                    break;
                case ZBuildConfig.$targetsdk:
                    str12 = a.m(parcel, n);
                    break;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    eH3 = a.c(parcel, n, jj.CREATOR);
                    break;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    z = a.c(parcel, n);
                    break;
                case MMException.DISPLAY_AD_NOT_READY:
                    eH4 = a.c(parcel, n, jt.CREATOR);
                    break;
                case MMException.DISPLAY_AD_EXPIRED:
                    eH5 = a.c(parcel, n, jp.CREATOR);
                    break;
                case MMException.DISPLAY_AD_NOT_FOUND:
                    eH6 = a.c(parcel, n, jt.CREATOR);
                    break;
                case MMException.DISPLAY_AD_ALREADY_DISPLAYED:
                    jlVar = (jl) a.a(parcel, n, jl.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new LoyaltyWalletObject(i, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, i2, eH, jrVar, eH2, str11, str12, eH3, z, eH4, eH5, eH6, jlVar);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public LoyaltyWalletObject[] cg(int i) {
        return new LoyaltyWalletObject[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ba(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cg(i);
    }
}