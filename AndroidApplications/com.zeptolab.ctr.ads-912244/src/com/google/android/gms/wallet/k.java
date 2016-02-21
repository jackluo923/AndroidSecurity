package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.identity.intents.model.UserAddress;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class k implements Creator {
    static void a(MaskedWallet maskedWallet, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, maskedWallet.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, maskedWallet.Yk, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, maskedWallet.Yl, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, maskedWallet.Yq, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, maskedWallet.Yn, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, maskedWallet.Yo, i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, maskedWallet.Yp, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, maskedWallet.YW, i, false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, maskedWallet.YX, i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, maskedWallet.Yr, i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, maskedWallet.Ys, i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, maskedWallet.Yt, i, false);
        b.D(parcel, p);
    }

    public MaskedWallet bb(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String[] strArr = null;
        String str3 = null;
        Address address = null;
        Address address2 = null;
        LoyaltyWalletObject[] loyaltyWalletObjectArr = null;
        OfferWalletObject[] offerWalletObjectArr = null;
        UserAddress userAddress = null;
        UserAddress userAddress2 = null;
        InstrumentInfo[] instrumentInfoArr = null;
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
                    strArr = a.x(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str3 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    address = (Address) a.a(parcel, n, Address.CREATOR);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    address2 = (Address) a.a(parcel, n, Address.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    loyaltyWalletObjectArr = (LoyaltyWalletObject[]) a.b(parcel, n, LoyaltyWalletObject.CREATOR);
                    break;
                case ZBuildConfig.$minsdk:
                    offerWalletObjectArr = (OfferWalletObject[]) a.b(parcel, n, OfferWalletObject.CREATOR);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    userAddress = (UserAddress) a.a(parcel, n, UserAddress.CREATOR);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    userAddress2 = (UserAddress) a.a(parcel, n, UserAddress.CREATOR);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    instrumentInfoArr = (InstrumentInfo[]) a.b(parcel, n, InstrumentInfo.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new MaskedWallet(i, str, str2, strArr, str3, address, address2, loyaltyWalletObjectArr, offerWalletObjectArr, userAddress, userAddress2, instrumentInfoArr);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public MaskedWallet[] ch(int i) {
        return new MaskedWallet[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return bb(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return ch(i);
    }
}