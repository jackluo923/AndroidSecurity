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

public class f implements Creator {
    static void a(FullWallet fullWallet, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, 1, fullWallet.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, fullWallet.Yk, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, fullWallet.Yl, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, fullWallet.Ym, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, fullWallet.Yn, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, fullWallet.Yo, i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, fullWallet.Yp, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, fullWallet.Yq, false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, fullWallet.Yr, i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, fullWallet.Ys, i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, fullWallet.Yt, i, false);
        b.D(parcel, p);
    }

    public FullWallet aW(Parcel parcel) {
        InstrumentInfo[] instrumentInfoArr = null;
        int o = a.o(parcel);
        int i = 0;
        UserAddress userAddress = null;
        UserAddress userAddress2 = null;
        String[] strArr = null;
        Address address = null;
        Address address2 = null;
        String str = null;
        ProxyCard proxyCard = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str3 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str2 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    proxyCard = (ProxyCard) a.a(parcel, n, ProxyCard.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    address2 = (Address) a.a(parcel, n, Address.CREATOR);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    address = (Address) a.a(parcel, n, Address.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    strArr = a.x(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    userAddress2 = (UserAddress) a.a(parcel, n, UserAddress.CREATOR);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    userAddress = (UserAddress) a.a(parcel, n, UserAddress.CREATOR);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    instrumentInfoArr = (InstrumentInfo[]) a.b(parcel, n, InstrumentInfo.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new FullWallet(i, str3, str2, proxyCard, str, address2, address, strArr, userAddress2, userAddress, instrumentInfoArr);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public FullWallet[] cc(int i) {
        return new FullWallet[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aW(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return cc(i);
    }
}