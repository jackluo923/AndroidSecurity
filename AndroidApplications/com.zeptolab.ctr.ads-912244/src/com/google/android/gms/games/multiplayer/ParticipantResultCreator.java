package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class ParticipantResultCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(ParticipantResult participantResult, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, participantResult.getParticipantId(), false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, participantResult.getVersionCode());
        b.c(parcel, GoogleScorer.CLIENT_PLUS, participantResult.getResult());
        b.c(parcel, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, participantResult.getPlacing());
        b.D(parcel, p);
    }

    public ParticipantResult createFromParcel(Parcel parcel) {
        int i = 0;
        int o = a.o(parcel);
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    str = a.m(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i2 = a.g(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i = a.g(parcel, n);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i3 = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new ParticipantResult(i3, str, i2, i);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public ParticipantResult[] newArray(int i) {
        return new ParticipantResult[i];
    }
}