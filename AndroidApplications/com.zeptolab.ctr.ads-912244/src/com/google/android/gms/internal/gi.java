package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.millennialmedia.android.MMException;

public final class gi implements Invitations {

    private static abstract class a extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LoadInvitationsResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public InvitationBuffer getInvitations() {
                return new InvitationBuffer(DataHolder.empty(MMException.REQUEST_NOT_FILLED));
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
            return v(status);
        }

        public LoadInvitationsResult v(Status status) {
            return new AnonymousClass_1(status);
        }
    }

    class AnonymousClass_1 extends a {
        final /* synthetic */ int HP;

        AnonymousClass_1(int i) {
            this.HP = i;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.c(this, this.HP);
        }
    }

    public Intent getInvitationInboxIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fu();
    }

    public PendingResult loadInvitations(GoogleApiClient googleApiClient) {
        return loadInvitations(googleApiClient, 0);
    }

    public PendingResult loadInvitations(GoogleApiClient googleApiClient, int i) {
        return googleApiClient.a(new AnonymousClass_1(i));
    }

    public void registerInvitationListener(GoogleApiClient googleApiClient, OnInvitationReceivedListener onInvitationReceivedListener) {
        Games.c(googleApiClient).a(onInvitationReceivedListener);
    }

    public void unregisterInvitationListener(GoogleApiClient googleApiClient) {
        Games.c(googleApiClient).fv();
    }
}