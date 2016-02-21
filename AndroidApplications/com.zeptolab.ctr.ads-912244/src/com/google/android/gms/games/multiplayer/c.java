package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

public class c implements Creator {
    static void a(ParticipantEntity participantEntity, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, participantEntity.getParticipantId(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, participantEntity.getDisplayName(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, participantEntity.getIconImageUri(), i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, participantEntity.getHiResImageUri(), i, false);
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, participantEntity.getStatus());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, participantEntity.ge(), false);
        b.a(parcel, (int)GoogleScorer.CLIENT_ALL, participantEntity.isConnectedToRoom());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, participantEntity.getPlayer(), i, false);
        b.c(parcel, ZBuildConfig.$minsdk, participantEntity.getCapabilities());
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomControls, participantEntity.getResult(), i, false);
        b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, participantEntity.getIconImageUrl(), false);
        b.a(parcel, (int)R.styleable.MapAttrs_useViewLifecycle, participantEntity.getHiResImageUrl(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, participantEntity.getVersionCode());
        b.D(parcel, p);
    }

    public ParticipantEntity ao(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        Uri uri = null;
        Uri uri2 = null;
        int i2 = 0;
        String str3 = null;
        boolean z = false;
        PlayerEntity playerEntity = null;
        int i3 = 0;
        ParticipantResult participantResult = null;
        String str4 = null;
        String str5 = null;
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
                    i2 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str3 = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    z = a.c(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    playerEntity = (PlayerEntity) a.a(parcel, n, PlayerEntity.CREATOR);
                    break;
                case ZBuildConfig.$minsdk:
                    i3 = a.g(parcel, n);
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    participantResult = (ParticipantResult) a.a(parcel, n, ParticipantResult.CREATOR);
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    str4 = a.m(parcel, n);
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    str5 = a.m(parcel, n);
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
            return new ParticipantEntity(i, str, str2, uri, uri2, i2, str3, z, playerEntity, i3, participantResult, str4, str5);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public ParticipantEntity[] bb(int i) {
        return new ParticipantEntity[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ao(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bb(i);
    }
}