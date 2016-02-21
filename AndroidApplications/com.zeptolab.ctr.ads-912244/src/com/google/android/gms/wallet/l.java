package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;

public class l implements Creator {
    static void a(MaskedWalletRequest maskedWalletRequest, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, maskedWalletRequest.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, maskedWalletRequest.Yl, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, maskedWalletRequest.YY);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, maskedWalletRequest.YZ);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, maskedWalletRequest.Za);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, maskedWalletRequest.Zb, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, maskedWalletRequest.Yg, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, maskedWalletRequest.Zc, false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, maskedWalletRequest.Yu, i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, maskedWalletRequest.Zd);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, maskedWalletRequest.Ze);
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, maskedWalletRequest.Zf, i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_zOrderOnTop, maskedWalletRequest.Zg);
        b.a(parcel, (int)MMException.REQUEST_NOT_FILLED, maskedWalletRequest.Zh);
        b.b(parcel, MMException.REQUEST_BAD_RESPONSE, maskedWalletRequest.Zi, false);
        b.D(parcel, p);
    }

    public MaskedWalletRequest bc(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Cart cart = null;
        boolean z4 = false;
        boolean z5 = false;
        CountrySpecification[] countrySpecificationArr = null;
        boolean z6 = true;
        boolean z7 = true;
        ArrayList arrayList = null;
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
                    z = a.c(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    z2 = a.c(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    z3 = a.c(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str2 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str3 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    str4 = a.m(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    cart = (Cart) a.a(parcel, n, Cart.CREATOR);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    z4 = a.c(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    z5 = a.c(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    countrySpecificationArr = (CountrySpecification[]) a.b(parcel, n, CountrySpecification.CREATOR);
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    z6 = a.c(parcel, n);
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    z7 = a.c(parcel, n);
                    break;
                case MMException.REQUEST_BAD_RESPONSE:
                    arrayList = a.c(parcel, n, CountrySpecification.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new MaskedWalletRequest(i, str, z, z2, z3, str2, str3, str4, cart, z4, z5, countrySpecificationArr, z6, z7, arrayList);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public MaskedWalletRequest[] ci(int i) {
        return new MaskedWalletRequest[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bc(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return ci(i);
    }
}