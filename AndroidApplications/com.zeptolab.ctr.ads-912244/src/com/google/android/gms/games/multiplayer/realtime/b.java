package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;

public class b implements Creator {
    static void a(RoomEntity roomEntity, Parcel parcel, int i) {
        int p = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, roomEntity.getRoomId(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, roomEntity.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, roomEntity.getCreatorId(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, roomEntity.getCreationTimestamp());
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, GoogleScorer.CLIENT_APPSTATE, roomEntity.getStatus());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, roomEntity.getDescription(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, roomEntity.getVariant());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_ALL, roomEntity.getAutoMatchCriteria(), false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, roomEntity.getParticipants(), false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, ZBuildConfig.$minsdk, roomEntity.getAutoMatchWaitEstimateSeconds());
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, p);
    }

    public RoomEntity aq(Parcel parcel) {
        int i = 0;
        ArrayList arrayList = null;
        int o = a.o(parcel);
        long j = 0;
        Bundle bundle = null;
        int i2 = 0;
        String str = null;
        int i3 = 0;
        String str2 = null;
        String str3 = null;
        int i4 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str3 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str2 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    j = a.h(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i3 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    i2 = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    bundle = a.o(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    arrayList = a.c(parcel, n, ParticipantEntity.CREATOR);
                    break;
                case ZBuildConfig.$minsdk:
                    i = a.g(parcel, n);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i4 = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new RoomEntity(i4, str3, str2, j, i3, str, i2, bundle, arrayList, i);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public RoomEntity[] bd(int i) {
        return new RoomEntity[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aq(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bd(i);
    }
}