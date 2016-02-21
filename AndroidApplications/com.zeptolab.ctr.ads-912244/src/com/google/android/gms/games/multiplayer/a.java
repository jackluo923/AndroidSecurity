package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;

public class a implements Creator {
    static void a_(InvitationEntity invitationEntity, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, invitationEntity.getGame(), i, false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, invitationEntity.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, invitationEntity.getInvitationId(), false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, invitationEntity.getCreationTimestamp());
        b.c(parcel, GoogleScorer.CLIENT_APPSTATE, invitationEntity.getInvitationType());
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, invitationEntity.getInviter(), i, false);
        b.b(parcel, IabHelper.BILLING_RESPONSE_RESULT_ERROR, invitationEntity.getParticipants(), false);
        b.c(parcel, GoogleScorer.CLIENT_ALL, invitationEntity.getVariant());
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, invitationEntity.getAvailableAutoMatchSlots());
        b.D(parcel, p);
    }

    public InvitationEntity an(Parcel parcel) {
        ArrayList arrayList = null;
        int i = 0;
        int o = com.google.android.gms.common.internal.safeparcel.a.o(parcel);
        long j = 0;
        int i2 = 0;
        ParticipantEntity participantEntity = null;
        int i3 = 0;
        String str = null;
        GameEntity gameEntity = null;
        int i4 = 0;
        while (parcel.dataPosition() < o) {
            int n = com.google.android.gms.common.internal.safeparcel.a.n(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    gameEntity = (GameEntity) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, GameEntity.CREATOR);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str = com.google.android.gms.common.internal.safeparcel.a.m(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    j = com.google.android.gms.common.internal.safeparcel.a.h(parcel, n);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    participantEntity = (ParticipantEntity) com.google.android.gms.common.internal.safeparcel.a.a(parcel, n, ParticipantEntity.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, n, ParticipantEntity.CREATOR);
                    break;
                case GoogleScorer.CLIENT_ALL:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, n);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new InvitationEntity(i4, gameEntity, str, j, i3, participantEntity, arrayList, i2, i);
        }
        throw new com.google.android.gms.common.internal.safeparcel.a.a("Overread allowed size end=" + o, parcel);
    }

    public InvitationEntity[] ba(int i) {
        return new InvitationEntity[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return an(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return ba(i);
    }
}