package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class c implements Creator {
    static void a(PlayerEntity playerEntity, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, playerEntity.getPlayerId(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, playerEntity.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, playerEntity.getDisplayName(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, playerEntity.getIconImageUri(), i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, playerEntity.getHiResImageUri(), i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, playerEntity.getRetrievedTimestamp());
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, playerEntity.fl());
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, playerEntity.getLastPlayedWithTimestamp());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, playerEntity.getIconImageUrl(), false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, playerEntity.getHiResImageUrl(), false);
        b.D(parcel, p);
    }

    public PlayerEntity[] aQ(int i) {
        return new PlayerEntity[i];
    }

    public PlayerEntity ak(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        Uri uri = null;
        Uri uri2 = null;
        long j = 0;
        int i2 = 0;
        long j2 = 0;
        String str3 = null;
        String str4 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str2 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    uri = (Uri) a.a(parcel, n, Uri.CREATOR);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    uri2 = (Uri) a.a(parcel, n, Uri.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    j = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    i2 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    j2 = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    str3 = a.m(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    str4 = a.m(parcel, n);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new PlayerEntity(i, str, str2, uri, uri2, j, i2, j2, str3, str4);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ak(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aQ(i);
    }
}