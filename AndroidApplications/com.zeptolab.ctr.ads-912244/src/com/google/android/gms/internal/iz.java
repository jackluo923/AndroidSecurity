package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ir.f;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashSet;
import java.util.Set;

public class iz implements Creator {
    static void a(f fVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        Set hB = fVar.hB();
        if (hB.contains(Integer.valueOf(1))) {
            b.c(parcel, 1, fVar.getVersionCode());
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, fVar.getDepartment(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, fVar.getDescription(), true);
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, fVar.getEndDate(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, fVar.getLocation(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, fVar.getName(), true);
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_ALL))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_ALL, fVar.isPrimary());
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, fVar.getStartDate(), true);
        }
        if (hB.contains(Integer.valueOf(ZBuildConfig.$minsdk))) {
            b.a(parcel, (int)ZBuildConfig.$minsdk, fVar.getTitle(), true);
        }
        if (hB.contains(Integer.valueOf(R.styleable.MapAttrs_uiZoomControls))) {
            b.c(parcel, R.styleable.MapAttrs_uiZoomControls, fVar.getType());
        }
        b.D(parcel, p);
    }

    public f aP(Parcel parcel) {
        int i = 0;
        String str = null;
        int o = a.o(parcel);
        Set hashSet = new HashSet();
        String str2 = null;
        boolean z = false;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        int i2 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i2 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(1));
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str7 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str6 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str5 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str4 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str3 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
                    break;
                case GoogleScorer.CLIENT_ALL:
                    z = a.c(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_ALL));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    str2 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
                    break;
                case ZBuildConfig.$minsdk:
                    str = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ZBuildConfig.$minsdk));
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    i = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(R.styleable.MapAttrs_uiZoomControls));
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new f(hashSet, i2, str7, str6, str5, str4, str3, z, str2, str, i);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public f[] bM(int i) {
        return new f[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aP(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bM(i);
    }
}