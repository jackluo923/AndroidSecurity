package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.location.LocationStatusCodes;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;

public class TurnBasedMatchEntityCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(TurnBasedMatchEntity turnBasedMatchEntity, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, turnBasedMatchEntity.getGame(), i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, turnBasedMatchEntity.getMatchId(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, turnBasedMatchEntity.getCreatorId(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, turnBasedMatchEntity.getCreationTimestamp());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, turnBasedMatchEntity.getLastUpdaterId(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, turnBasedMatchEntity.getLastUpdatedTimestamp());
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, turnBasedMatchEntity.getPendingParticipantId(), false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, turnBasedMatchEntity.getStatus());
        b.c(parcel, R.styleable.MapAttrs_uiZoomControls, turnBasedMatchEntity.getVariant());
        b.c(parcel, R.styleable.MapAttrs_uiZoomGestures, turnBasedMatchEntity.getVersion());
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, turnBasedMatchEntity.getData(), false);
        b.b(parcel, R.styleable.MapAttrs_zOrderOnTop, turnBasedMatchEntity.getParticipants(), false);
        b.a(parcel, (int)MMException.REQUEST_NOT_FILLED, turnBasedMatchEntity.getRematchId(), false);
        b.a(parcel, (int)MMException.REQUEST_BAD_RESPONSE, turnBasedMatchEntity.getPreviousMatchData(), false);
        b.a(parcel, (int)ZBuildConfig.$targetsdk, turnBasedMatchEntity.getAutoMatchCriteria(), false);
        b.c(parcel, MMException.REQUEST_NOT_PERMITTED, turnBasedMatchEntity.getMatchNumber());
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, turnBasedMatchEntity.getVersionCode());
        b.a(parcel, (int)ApiEventType.API_MRAID_GET_DEFAULT_POSITION, turnBasedMatchEntity.isLocallyModified());
        b.c(parcel, ApiEventType.API_MRAID_GET_CURRENT_POSITION, turnBasedMatchEntity.getTurnStatus());
        b.a(parcel, (int)MMException.DISPLAY_AD_EXPIRED, turnBasedMatchEntity.getDescriptionParticipantId(), false);
        b.a(parcel, (int)MMException.DISPLAY_AD_NOT_READY, turnBasedMatchEntity.getDescription(), false);
        b.D(parcel, p);
    }

    public TurnBasedMatchEntity createFromParcel(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        GameEntity gameEntity = null;
        String str = null;
        String str2 = null;
        long j = 0;
        String str3 = null;
        long j2 = 0;
        String str4 = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        byte[] bArr = null;
        ArrayList arrayList = null;
        String str5 = null;
        byte[] bArr2 = null;
        int i5 = 0;
        Bundle bundle = null;
        int i6 = 0;
        boolean z = false;
        String str6 = null;
        String str7 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    gameEntity = (GameEntity) a.a(parcel, n, GameEntity.CREATOR);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str2 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    j = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str3 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    j2 = a.h(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str4 = a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    i2 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    i3 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    i4 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    bArr = a.p(parcel, n);
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    arrayList = a.c(parcel, n, ParticipantEntity.CREATOR);
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    str5 = a.m(parcel, n);
                    break;
                case MMException.REQUEST_BAD_RESPONSE:
                    bArr2 = a.p(parcel, n);
                    break;
                case MMException.REQUEST_NOT_PERMITTED:
                    i5 = a.g(parcel, n);
                    break;
                case ZBuildConfig.$targetsdk:
                    bundle = a.o(parcel, n);
                    break;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    i6 = a.g(parcel, n);
                    break;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    z = a.c(parcel, n);
                    break;
                case MMException.DISPLAY_AD_NOT_READY:
                    str6 = a.m(parcel, n);
                    break;
                case MMException.DISPLAY_AD_EXPIRED:
                    str7 = a.m(parcel, n);
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
            return new TurnBasedMatchEntity(i, gameEntity, str, str2, j, str3, j2, str4, i2, i3, i4, bArr, arrayList, str5, bArr2, i5, bundle, i6, z, str6, str7);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public TurnBasedMatchEntity[] newArray(int i) {
        return new TurnBasedMatchEntity[i];
    }
}