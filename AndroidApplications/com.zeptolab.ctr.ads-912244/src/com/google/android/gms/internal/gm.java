package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.Players.LoadPlayersResult;
import com.millennialmedia.android.MMException;

public final class gm implements Players {

    private static abstract class a extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LoadPlayersResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public PlayerBuffer getPlayers() {
                return new PlayerBuffer(DataHolder.empty(MMException.REQUEST_NOT_FILLED));
            }

            public Status getStatus() {
                return this.vb;
            }

            public void release() {
            }
        }

        private a() {
        }

        public LoadPlayersResult A(Status status) {
            return new AnonymousClass_1(status);
        }

        public /* synthetic */ Result d(Status status) {
            return A(status);
        }
    }

    class AnonymousClass_1 extends a {
        final /* synthetic */ String If;

        AnonymousClass_1(String str) {
            this.If = str;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.If);
        }
    }

    class AnonymousClass_2 extends a {
        final /* synthetic */ boolean HH;
        final /* synthetic */ int Ih;

        AnonymousClass_2(int i, boolean z) {
            this.Ih = i;
            this.HH = z;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.Ih, false, this.HH);
        }
    }

    class AnonymousClass_3 extends a {
        final /* synthetic */ int Ih;

        AnonymousClass_3(int i) {
            this.Ih = i;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.Ih, true, false);
        }
    }

    class AnonymousClass_4 extends a {
        final /* synthetic */ boolean HH;
        final /* synthetic */ int Ih;

        AnonymousClass_4(int i, boolean z) {
            this.Ih = i;
            this.HH = z;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a((c)this, "playedWith", this.Ih, false, this.HH);
        }
    }

    class AnonymousClass_5 extends a {
        final /* synthetic */ int Ih;

        AnonymousClass_5(int i) {
            this.Ih = i;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a((c)this, "playedWith", this.Ih, true, false);
        }
    }

    class AnonymousClass_6 extends a {
        final /* synthetic */ boolean HH;

        AnonymousClass_6(boolean z) {
            this.HH = z;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.HH);
        }
    }

    public Player getCurrentPlayer(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fp();
    }

    public String getCurrentPlayerId(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fo();
    }

    public Intent getPlayerSearchIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fy();
    }

    public PendingResult loadConnectedPlayers(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.a(new AnonymousClass_6(z));
    }

    public PendingResult loadInvitablePlayers(GoogleApiClient googleApiClient, int i, boolean z) {
        return googleApiClient.a(new AnonymousClass_2(i, z));
    }

    public PendingResult loadMoreInvitablePlayers(GoogleApiClient googleApiClient, int i) {
        return googleApiClient.a(new AnonymousClass_3(i));
    }

    public PendingResult loadMoreRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, int i) {
        return googleApiClient.a(new AnonymousClass_5(i));
    }

    public PendingResult loadPlayer(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.a(new AnonymousClass_1(str));
    }

    public PendingResult loadRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, int i, boolean z) {
        return googleApiClient.a(new AnonymousClass_4(i, z));
    }
}