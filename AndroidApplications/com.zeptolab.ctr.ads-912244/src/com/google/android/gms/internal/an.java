package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class an implements Creator {
    static void a(am amVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, amVar.versionCode);
        b.c(parcel, GoogleScorer.CLIENT_PLUS, amVar.lI);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, amVar.backgroundColor);
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, amVar.lJ);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, amVar.lK);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, amVar.lL);
        b.c(parcel, GoogleScorer.CLIENT_ALL, amVar.lM);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, amVar.lN);
        b.c(parcel, ZBuildConfig.$minsdk, amVar.lO);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, amVar.lP, false);
        b.c(parcel, R.styleable.MapAttrs_uiZoomGestures, amVar.lQ);
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, amVar.lR, false);
        b.c(parcel, R.styleable.MapAttrs_zOrderOnTop, amVar.lS);
        b.c(parcel, MMException.REQUEST_NOT_FILLED, amVar.lT);
        b.a(parcel, (int)MMException.REQUEST_BAD_RESPONSE, amVar.lU, false);
        b.D(parcel, p);
    }

    public am c(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        String str = null;
        int i10 = 0;
        String str2 = null;
        int i11 = 0;
        int i12 = 0;
        String str3 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i2 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i3 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i4 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    i5 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    i6 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    i7 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    i8 = a.g(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    i9 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    str = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    i10 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    str2 = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    i11 = a.g(parcel, n);
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    i12 = a.g(parcel, n);
                    break;
                case MMException.REQUEST_BAD_RESPONSE:
                    str3 = a.m(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new am(i, i2, i3, i4, i5, i6, i7, i8, i9, str, i10, str2, i11, i12, str3);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return c(parcel);
    }

    public am[] e(int i) {
        return new am[i];
    }

    public /* synthetic */ Object[] newArray(int i) {
        return e(i);
    }
}