package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class ce implements Creator {
    static void a(cd cdVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, cdVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, cdVar.ob, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, cdVar.oc, i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, cdVar.kQ, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, cdVar.adUnitId, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, cdVar.applicationInfo, i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, cdVar.od, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, cdVar.oe, false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, cdVar.of, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, cdVar.og, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, cdVar.kN, i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, cdVar.oh, false);
        b.D(parcel, p);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return f(parcel);
    }

    public cd f(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        Bundle bundle = null;
        z zVar = null;
        ab abVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        db dbVar = null;
        Bundle bundle2 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    bundle = a.o(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    zVar = (z) a.a(parcel, n, z.CREATOR);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    abVar = (ab) a.a(parcel, n, ab.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    applicationInfo = (ApplicationInfo) a.a(parcel, n, ApplicationInfo.CREATOR);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    packageInfo = (PackageInfo) a.a(parcel, n, PackageInfo.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    str2 = a.m(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    str3 = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    str4 = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    dbVar = (db) a.a(parcel, n, db.CREATOR);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    bundle2 = a.o(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new cd(i, bundle, zVar, abVar, str, applicationInfo, packageInfo, str2, str3, str4, dbVar, bundle2);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public cd[] k(int i) {
        return new cd[i];
    }

    public /* synthetic */ Object[] newArray(int i) {
        return k(i);
    }
}