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
import java.util.List;

public class cg implements Creator {
    static void a(cf cfVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, cfVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, cfVar.nw, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, cfVar.oi, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, cfVar.mt, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, cfVar.errorCode);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, cfVar.mu, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, cfVar.oj);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, cfVar.ok);
        b.a(parcel, (int)ZBuildConfig.$minsdk, cfVar.ol);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, cfVar.om, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, cfVar.mx);
        b.c(parcel, R.styleable.MapAttrs_useViewLifecycle, cfVar.orientation);
        b.a(parcel, (int)R.styleable.MapAttrs_zOrderOnTop, cfVar.on, false);
        b.a(parcel, (int)MMException.REQUEST_NOT_FILLED, cfVar.oo);
        b.D(parcel, p);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return g(parcel);
    }

    public cf g(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        List list = null;
        int i2 = 0;
        List list2 = null;
        long j = 0;
        boolean z = false;
        long j2 = 0;
        List list3 = null;
        long j3 = 0;
        int i3 = 0;
        String str3 = null;
        long j4 = 0;
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
                    list = a.y(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    i2 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    list2 = a.y(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    j = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    z = a.c(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    j2 = a.h(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    list3 = a.y(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    j3 = a.h(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    i3 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    str3 = a.m(parcel, n);
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    j4 = a.h(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new cf(i, str, str2, list, i2, list2, j, z, j2, list3, j3, i3, str3, j4);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public cf[] l(int i) {
        return new cf[i];
    }

    public /* synthetic */ Object[] newArray(int i) {
        return l(i);
    }
}