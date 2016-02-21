package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class bp implements Creator {
    static void a(bq bqVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, bqVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, bqVar.nr, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, bqVar.at(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, bqVar.au(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, bqVar.av(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, bqVar.aw(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, bqVar.nw, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, bqVar.nx);
        b.a(parcel, (int)ZBuildConfig.$minsdk, bqVar.ny, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, bqVar.ax(), false);
        b.c(parcel, R.styleable.MapAttrs_uiZoomGestures, bqVar.orientation);
        b.c(parcel, R.styleable.MapAttrs_useViewLifecycle, bqVar.nA);
        b.a(parcel, (int)R.styleable.MapAttrs_zOrderOnTop, bqVar.mZ, false);
        b.a(parcel, (int)MMException.REQUEST_NOT_FILLED, bqVar.kN, i, false);
        b.D(parcel, p);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return e(parcel);
    }

    public bq e(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        bn bnVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        boolean z = false;
        String str2 = null;
        IBinder iBinder5 = null;
        int i2 = 0;
        int i3 = 0;
        String str3 = null;
        db dbVar = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    bnVar = (bn) a.a(parcel, n, bn.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    iBinder = a.n(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    iBinder2 = a.n(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    iBinder3 = a.n(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    iBinder4 = a.n(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    z = a.c(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    str2 = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    iBinder5 = a.n(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    i2 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    i3 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    str3 = a.m(parcel, n);
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    dbVar = (db) a.a(parcel, n, db.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new bq(i, bnVar, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i2, i3, str3, dbVar);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public bq[] j(int i) {
        return new bq[i];
    }

    public /* synthetic */ Object[] newArray(int i) {
        return j(i);
    }
}