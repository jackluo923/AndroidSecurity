package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;
import com.millennialmedia.android.MMException;

public final class gh implements GamesMetadata {

    private static abstract class a extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LoadGamesResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public GameBuffer getGames() {
                return new GameBuffer(DataHolder.empty(MMException.REQUEST_NOT_FILLED));
            }

            public Status getStatus() {
                return this.vb;
            }

            public void release() {
            }
        }

        private a() {
        }

        public /* synthetic */ Result d(Status status) {
            return u(status);
        }

        public LoadGamesResult u(Status status) {
            return new AnonymousClass_1(status);
        }
    }

    public Game getCurrentGame(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fq();
    }

    public PendingResult loadGame(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new a() {
            {
                super();
            }

            protected void a(fx fxVar) {
                fxVar.g(this);
            }
        });
    }
}