package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ir.c;
import com.google.android.gms.internal.ir.d;
import com.google.android.gms.internal.ir.f;
import com.google.android.gms.internal.ir.g;
import com.google.android.gms.internal.ir.h;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class is implements Creator {
    static void a(ir irVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        Set hB = irVar.hB();
        if (hB.contains(Integer.valueOf(1))) {
            b.c(parcel, 1, irVar.getVersionCode());
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, irVar.getAboutMe(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, irVar.hW(), i, true);
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, irVar.getBirthday(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, irVar.getBraggingRights(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR))) {
            b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, irVar.getCircledByCount());
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_ALL))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_ALL, irVar.hX(), i, true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, irVar.getCurrentLocation(), true);
        }
        if (hB.contains(Integer.valueOf(ZBuildConfig.$minsdk))) {
            b.a(parcel, (int)ZBuildConfig.$minsdk, irVar.getDisplayName(), true);
        }
        if (hB.contains(Integer.valueOf(R.styleable.MapAttrs_useViewLifecycle))) {
            b.c(parcel, R.styleable.MapAttrs_useViewLifecycle, irVar.getGender());
        }
        if (hB.contains(Integer.valueOf(MMException.REQUEST_NOT_FILLED))) {
            b.a(parcel, (int)MMException.REQUEST_NOT_FILLED, irVar.getId(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.REQUEST_BAD_RESPONSE))) {
            b.a(parcel, (int)MMException.REQUEST_BAD_RESPONSE, irVar.hY(), i, true);
        }
        if (hB.contains(Integer.valueOf(MMException.REQUEST_NOT_PERMITTED))) {
            b.a(parcel, (int)MMException.REQUEST_NOT_PERMITTED, irVar.isPlusUser());
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_DEFAULT_POSITION))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_GET_DEFAULT_POSITION, irVar.hZ(), i, true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_CURRENT_POSITION))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_GET_CURRENT_POSITION, irVar.getLanguage(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.DISPLAY_AD_EXPIRED))) {
            b.c(parcel, MMException.DISPLAY_AD_EXPIRED, irVar.getObjectType());
        }
        if (hB.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_READY))) {
            b.a(parcel, (int)MMException.DISPLAY_AD_NOT_READY, irVar.getNickname(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.DISPLAY_AD_ALREADY_DISPLAYED))) {
            b.b(parcel, MMException.DISPLAY_AD_ALREADY_DISPLAYED, irVar.ib(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_FOUND))) {
            b.b(parcel, MMException.DISPLAY_AD_NOT_FOUND, irVar.ia(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.AD_BROKEN_REFERENCE))) {
            b.c(parcel, MMException.AD_BROKEN_REFERENCE, irVar.getRelationshipStatus());
        }
        if (hB.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_PERMITTED))) {
            b.c(parcel, MMException.DISPLAY_AD_NOT_PERMITTED, irVar.getPlusOneCount());
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_SEND_SMS))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_SEND_SMS, irVar.getUrl(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.AD_NO_ACTIVITY))) {
            b.a(parcel, (int)MMException.AD_NO_ACTIVITY, irVar.getTagline(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_MAKE_CALL))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_MAKE_CALL, irVar.isVerified());
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_SEND_MAIL))) {
            b.b(parcel, ApiEventType.API_MRAID_SEND_MAIL, irVar.ic(), true);
        }
        b.D(parcel, p);
    }

    public ir aI(Parcel parcel) {
        int o = a.o(parcel);
        Set hashSet = new HashSet();
        int i = 0;
        String str = null;
        ir.a aVar = null;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        ir.b bVar = null;
        String str4 = null;
        String str5 = null;
        int i3 = 0;
        String str6 = null;
        c cVar = null;
        boolean z = false;
        String str7 = null;
        d dVar = null;
        String str8 = null;
        int i4 = 0;
        List list = null;
        List list2 = null;
        int i5 = 0;
        int i6 = 0;
        String str9 = null;
        String str10 = null;
        List list3 = null;
        boolean z2 = false;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(1));
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    ir.a aVar2 = (ir.a) a.a(parcel, n, ir.a.CREATOR);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                    aVar = aVar2;
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str2 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str3 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    i2 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
                    break;
                case GoogleScorer.CLIENT_ALL:
                    ir.b bVar2 = (ir.b) a.a(parcel, n, ir.b.CREATOR);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_ALL));
                    bVar = bVar2;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    str4 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
                    break;
                case ZBuildConfig.$minsdk:
                    str5 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ZBuildConfig.$minsdk));
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    i3 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(R.styleable.MapAttrs_useViewLifecycle));
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    str6 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.REQUEST_NOT_FILLED));
                    break;
                case MMException.REQUEST_BAD_RESPONSE:
                    c cVar2 = (c) a.a(parcel, n, c.CREATOR);
                    hashSet.add(Integer.valueOf(MMException.REQUEST_BAD_RESPONSE));
                    cVar = cVar2;
                    break;
                case MMException.REQUEST_NOT_PERMITTED:
                    z = a.c(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.REQUEST_NOT_PERMITTED));
                    break;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    str7 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_GET_CURRENT_POSITION));
                    break;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    d dVar2 = (d) a.a(parcel, n, (Creator)d.CREATOR);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_GET_DEFAULT_POSITION));
                    dVar = dVar2;
                    break;
                case MMException.DISPLAY_AD_NOT_READY:
                    str8 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.DISPLAY_AD_NOT_READY));
                    break;
                case MMException.DISPLAY_AD_EXPIRED:
                    i4 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.DISPLAY_AD_EXPIRED));
                    break;
                case MMException.DISPLAY_AD_NOT_FOUND:
                    list = a.c(parcel, n, f.CREATOR);
                    hashSet.add(Integer.valueOf(MMException.DISPLAY_AD_NOT_FOUND));
                    break;
                case MMException.DISPLAY_AD_ALREADY_DISPLAYED:
                    list2 = a.c(parcel, n, g.CREATOR);
                    hashSet.add(Integer.valueOf(MMException.DISPLAY_AD_ALREADY_DISPLAYED));
                    break;
                case MMException.DISPLAY_AD_NOT_PERMITTED:
                    i5 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.DISPLAY_AD_NOT_PERMITTED));
                    break;
                case MMException.AD_BROKEN_REFERENCE:
                    i6 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.AD_BROKEN_REFERENCE));
                    break;
                case MMException.AD_NO_ACTIVITY:
                    str9 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.AD_NO_ACTIVITY));
                    break;
                case ApiEventType.API_MRAID_SEND_SMS:
                    str10 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_SEND_SMS));
                    break;
                case ApiEventType.API_MRAID_SEND_MAIL:
                    list3 = a.c(parcel, n, h.CREATOR);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_SEND_MAIL));
                    break;
                case ApiEventType.API_MRAID_MAKE_CALL:
                    z2 = a.c(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_MAKE_CALL));
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new ir(hashSet, i, str, aVar, str2, str3, i2, bVar, str4, str5, i3, str6, cVar, z, str7, dVar, str8, i4, list, list2, i5, i6, str9, str10, list3, z2);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public ir[] bF(int i) {
        return new ir[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aI(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bF(i);
    }
}