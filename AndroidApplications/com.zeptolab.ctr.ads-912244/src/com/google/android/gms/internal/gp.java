package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LeaveMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult;
import java.util.List;

public final class gp implements TurnBasedMultiplayer {

    private static abstract class e extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LoadMatchesResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public LoadMatchesResponse getMatches() {
                return new LoadMatchesResponse(new Bundle());
            }

            public Status getStatus() {
                return this.vb;
            }

            public void release() {
            }
        }

        private e() {
        }

        public LoadMatchesResult H(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return H(status);
        }
    }

    class AnonymousClass_10 extends e {
        final /* synthetic */ int Iw;
        final /* synthetic */ int[] Ix;

        AnonymousClass_10(int i, int[] iArr) {
            this.Iw = i;
            this.Ix = iArr;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.Iw, this.Ix);
        }
    }

    private static abstract class b extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements InitiateMatchResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public TurnBasedMatch getMatch() {
                return null;
            }

            public Status getStatus() {
                return this.vb;
            }
        }

        private b() {
        }

        public InitiateMatchResult E(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return E(status);
        }
    }

    class AnonymousClass_1 extends b {
        final /* synthetic */ TurnBasedMatchConfig Ip;

        AnonymousClass_1(TurnBasedMatchConfig turnBasedMatchConfig) {
            this.Ip = turnBasedMatchConfig;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.Ip);
        }
    }

    private static abstract class d extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LoadMatchResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public TurnBasedMatch getMatch() {
                return null;
            }

            public Status getStatus() {
                return this.vb;
            }
        }

        private d() {
        }

        public LoadMatchResult G(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d_(Status status) {
            return G(status);
        }
    }

    class AnonymousClass_2 extends d {
        final /* synthetic */ String Ir;

        AnonymousClass_2(String str) {
            this.Ir = str;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.h(this, this.Ir);
        }
    }

    class AnonymousClass_3 extends b {
        final /* synthetic */ String Ir;

        AnonymousClass_3(String str) {
            this.Ir = str;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.d(this, this.Ir);
        }
    }

    class AnonymousClass_4 extends b {
        final /* synthetic */ String Is;

        AnonymousClass_4(String str) {
            this.Is = str;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.e(this, this.Is);
        }
    }

    private static abstract class f extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements UpdateMatchResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public TurnBasedMatch getMatch() {
                return null;
            }

            public Status getStatus() {
                return this.vb;
            }
        }

        private f() {
        }

        public UpdateMatchResult I(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return I(status);
        }
    }

    class AnonymousClass_5 extends f {
        final /* synthetic */ String Ir;
        final /* synthetic */ byte[] It;
        final /* synthetic */ String Iu;
        final /* synthetic */ ParticipantResult[] Iv;

        AnonymousClass_5(String str, byte[] bArr, String str2, ParticipantResult[] participantResultArr) {
            this.Ir = str;
            this.It = bArr;
            this.Iu = str2;
            this.Iv = participantResultArr;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a((com.google.android.gms.common.api.a.c)this, this.Ir, this.It, this.Iu, this.Iv);
        }
    }

    class AnonymousClass_6 extends f {
        final /* synthetic */ String Ir;
        final /* synthetic */ byte[] It;
        final /* synthetic */ ParticipantResult[] Iv;

        AnonymousClass_6(String str, byte[] bArr, ParticipantResult[] participantResultArr) {
            this.Ir = str;
            this.It = bArr;
            this.Iv = participantResultArr;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.Ir, this.It, this.Iv);
        }
    }

    private static abstract class c extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LeaveMatchResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public TurnBasedMatch getMatch() {
                return null;
            }

            public Status getStatus() {
                return this.vb;
            }
        }

        private c() {
        }

        public LeaveMatchResult F(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return F(status);
        }
    }

    class AnonymousClass_7 extends c {
        final /* synthetic */ String Ir;

        AnonymousClass_7(String str) {
            this.Ir = str;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.f(this, this.Ir);
        }
    }

    class AnonymousClass_8 extends c {
        final /* synthetic */ String Ir;
        final /* synthetic */ String Iu;

        AnonymousClass_8(String str, String str2) {
            this.Ir = str;
            this.Iu = str2;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.Ir, this.Iu);
        }
    }

    private static abstract class a extends com.google.android.gms.games.Games.a {
        private final String uS;

        class AnonymousClass_1 implements CancelMatchResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public String getMatchId() {
                return a.this.uS;
            }

            public Status getStatus() {
                return this.vb;
            }
        }

        public a(String str) {
            this.uS = str;
        }

        public CancelMatchResult D(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return D(status);
        }
    }

    class AnonymousClass_9 extends a {
        final /* synthetic */ String Ir;

        AnonymousClass_9(String str, String str2) {
            this.Ir = str2;
            super(str);
        }

        protected void a(fx fxVar) {
            fxVar.g(this, this.Ir);
        }
    }

    public PendingResult acceptInvitation(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.b(new AnonymousClass_4(str));
    }

    public PendingResult cancelMatch(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.b(new AnonymousClass_9(str, str));
    }

    public PendingResult createMatch(GoogleApiClient googleApiClient, TurnBasedMatchConfig turnBasedMatchConfig) {
        return googleApiClient.b(new AnonymousClass_1(turnBasedMatchConfig));
    }

    public void declineInvitation(GoogleApiClient googleApiClient, String str) {
        Games.c(googleApiClient).m(str, 1);
    }

    public void dismissInvitation(GoogleApiClient googleApiClient, String str) {
        Games.c(googleApiClient).l(str, 1);
    }

    public void dismissMatch(GoogleApiClient googleApiClient, String str) {
        Games.c(googleApiClient).av(str);
    }

    public PendingResult finishMatch(GoogleApiClient googleApiClient, String str) {
        return finishMatch(googleApiClient, str, null, (ParticipantResult[]) null);
    }

    public PendingResult finishMatch(GoogleApiClient googleApiClient, String str, byte[] bArr, List list) {
        return finishMatch(googleApiClient, str, bArr, list == null ? null : (ParticipantResult[]) list.toArray(new ParticipantResult[list.size()]));
    }

    public PendingResult finishMatch(GoogleApiClient googleApiClient, String str, byte[] bArr, ParticipantResult... participantResultArr) {
        return googleApiClient.b(new AnonymousClass_6(str, bArr, participantResultArr));
    }

    public Intent getInboxIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).ft();
    }

    public int getMaxMatchDataSize(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fC();
    }

    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2) {
        return Games.c(googleApiClient).a(i, i2, true);
    }

    public Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2, boolean z) {
        return Games.c(googleApiClient).a(i, i2, z);
    }

    public PendingResult leaveMatch(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.b(new AnonymousClass_7(str));
    }

    public PendingResult leaveMatchDuringTurn(GoogleApiClient googleApiClient, String str, String str2) {
        return googleApiClient.b(new AnonymousClass_8(str, str2));
    }

    public PendingResult loadMatch(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.a(new AnonymousClass_2(str));
    }

    public PendingResult loadMatchesByStatus(GoogleApiClient googleApiClient, int i, int[] iArr) {
        return googleApiClient.a(new AnonymousClass_10(i, iArr));
    }

    public PendingResult loadMatchesByStatus(GoogleApiClient googleApiClient, int[] iArr) {
        return loadMatchesByStatus(googleApiClient, 0, iArr);
    }

    public void registerMatchUpdateListener(GoogleApiClient googleApiClient, OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
        Games.c(googleApiClient).a(onTurnBasedMatchUpdateReceivedListener);
    }

    public PendingResult rematch(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.b(new AnonymousClass_3(str));
    }

    public PendingResult takeTurn(GoogleApiClient googleApiClient, String str, byte[] bArr, String str2) {
        return takeTurn(googleApiClient, str, bArr, str2, (ParticipantResult[]) 0);
    }

    public PendingResult takeTurn(GoogleApiClient googleApiClient, String str, byte[] bArr, String str2, List list) {
        return takeTurn(googleApiClient, str, bArr, str2, list == null ? null : (ParticipantResult[]) list.toArray(new ParticipantResult[list.size()]));
    }

    public PendingResult takeTurn(GoogleApiClient googleApiClient, String str, byte[] bArr, String str2, ParticipantResult... participantResultArr) {
        return googleApiClient.b(new AnonymousClass_5(str, bArr, str2, participantResultArr));
    }

    public void unregisterMatchUpdateListener(GoogleApiClient googleApiClient) {
        Games.c(googleApiClient).fw();
    }
}