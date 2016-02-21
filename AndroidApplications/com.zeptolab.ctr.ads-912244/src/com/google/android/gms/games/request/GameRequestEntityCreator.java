package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;

public class GameRequestEntityCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(GameRequestEntity gameRequestEntity, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, gameRequestEntity.getGame(), i, false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, gameRequestEntity.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, gameRequestEntity.getSender(), i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, gameRequestEntity.getData(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, gameRequestEntity.getRequestId(), false);
        b.b(parcel, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, gameRequestEntity.fU(), false);
        b.c(parcel, GoogleScorer.CLIENT_ALL, gameRequestEntity.getType());
        b.a(parcel, (int)ZBuildConfig.$minsdk, gameRequestEntity.getCreationTimestamp());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, gameRequestEntity.getExpirationTimestamp());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, gameRequestEntity.gf(), false);
        b.D(parcel, p);
    }

    public GameRequestEntity createFromParcel(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        GameEntity gameEntity = null;
        PlayerEntity playerEntity = null;
        byte[] bArr = null;
        String str = null;
        ArrayList arrayList = null;
        int i2 = 0;
        long j = 0;
        long j2 = 0;
        Bundle bundle = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    gameEntity = (GameEntity) a.a(parcel, n, GameEntity.CREATOR);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    playerEntity = (PlayerEntity) a.a(parcel, n, PlayerEntity.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    bArr = a.p(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    arrayList = a.c(parcel, n, PlayerEntity.CREATOR);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    i2 = a.g(parcel, n);
                    break;
                case ZBuildConfig.$minsdk:
                    j = a.h(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    j2 = a.h(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    bundle = a.o(parcel, n);
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
            return new GameRequestEntity(i, gameEntity, playerEntity, bArr, str, arrayList, i2, j, j2, bundle);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public GameRequestEntity[] newArray(int i) {
        return new GameRequestEntity[i];
    }
}