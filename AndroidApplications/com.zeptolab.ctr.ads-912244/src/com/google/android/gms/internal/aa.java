package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.List;

public class aa implements Creator {
    static void a(z zVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, zVar.versionCode);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, zVar.le);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, zVar.extras, false);
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, zVar.lf);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, zVar.lg, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, zVar.lh);
        b.c(parcel, GoogleScorer.CLIENT_ALL, zVar.tagForChildDirectedTreatment);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, zVar.li);
        b.a(parcel, (int)ZBuildConfig.$minsdk, zVar.lj, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, zVar.lk, i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, zVar.ll, i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, zVar.lm, false);
        b.D(parcel, p);
    }

    public z a(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        long j = 0;
        Bundle bundle = null;
        int i2 = 0;
        List list = null;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        String str = null;
        am amVar = null;
        Location location = null;
        String str2 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    j = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    bundle = a.o(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i2 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    list = a.y(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    z = a.c(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    i3 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    z2 = a.c(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    str = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    amVar = (am) a.a(parcel, n, am.CREATOR);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    location = (Location) a.a(parcel, n, Location.CREATOR);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    str2 = a.m(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new z(i, j, bundle, i2, list, z, i3, z2, str, amVar, location, str2);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public z[] b(int i) {
        return new z[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return b(i);
    }
}