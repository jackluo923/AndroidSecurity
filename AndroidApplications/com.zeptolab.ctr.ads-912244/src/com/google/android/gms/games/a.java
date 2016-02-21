package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class a implements Creator {
    static void a_(GameEntity gameEntity, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, gameEntity.getApplicationId(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, gameEntity.getDisplayName(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, gameEntity.getPrimaryCategory(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, gameEntity.getSecondaryCategory(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, gameEntity.getDescription(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, gameEntity.getDeveloperName(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, gameEntity.getIconImageUri(), i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, gameEntity.getHiResImageUri(), i, false);
        b.a(parcel, (int)ZBuildConfig.$minsdk, gameEntity.getFeaturedImageUri(), i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, gameEntity.isPlayEnabledGame());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, gameEntity.isInstanceInstalled());
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, gameEntity.getInstancePackageName(), false);
        b.c(parcel, R.styleable.MapAttrs_zOrderOnTop, gameEntity.getGameplayAclStatus());
        b.c(parcel, MMException.REQUEST_NOT_FILLED, gameEntity.getAchievementTotalCount());
        b.c(parcel, MMException.REQUEST_BAD_RESPONSE, gameEntity.getLeaderboardCount());
        b.a(parcel, (int)ZBuildConfig.$targetsdk, gameEntity.isTurnBasedMultiplayerEnabled());
        b.a(parcel, (int)MMException.REQUEST_NOT_PERMITTED, gameEntity.isRealTimeMultiplayerEnabled());
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, gameEntity.getVersionCode());
        b.a(parcel, (int)ApiEventType.API_MRAID_GET_DEFAULT_POSITION, gameEntity.getHiResImageUrl(), false);
        b.a(parcel, (int)ApiEventType.API_MRAID_GET_CURRENT_POSITION, gameEntity.getIconImageUrl(), false);
        b.a(parcel, (int)MMException.DISPLAY_AD_EXPIRED, gameEntity.isMuted());
        b.a(parcel, (int)MMException.DISPLAY_AD_NOT_READY, gameEntity.getFeaturedImageUrl(), false);
        b.D(parcel, p);
    }

    public GameEntity[] aP(int i) {
        return new GameEntity[i];
    }

    public GameEntity aj(Parcel parcel) {
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        Uri uri = null;
        Uri uri2 = null;
        Uri uri3 = null;
        boolean z = false;
        boolean z2 = false;
        String str7 = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z3 = false;
        boolean z4 = false;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        boolean z5 = false;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    str4 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str5 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str6 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, Uri.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    uri2 = (Uri) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, Uri.CREATOR);
                    break;
                case ZBuildConfig.$minsdk:
                    uri3 = (Uri) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, Uri.CREATOR);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    z = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    str7 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case MMException.REQUEST_BAD_RESPONSE:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case MMException.REQUEST_NOT_PERMITTED:
                    z3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n);
                    break;
                case ZBuildConfig.$targetsdk:
                    z4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n);
                    break;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    str8 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    str9 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case MMException.DISPLAY_AD_NOT_READY:
                    str10 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case MMException.DISPLAY_AD_EXPIRED:
                    z5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new GameEntity(i, str, str2, str3, str4, str5, str6, uri, uri2, uri3, z, z2, str7, i2, i3, i4, z3, z4, str8, str9, str10, z5);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aj(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aP(i);
    }
}