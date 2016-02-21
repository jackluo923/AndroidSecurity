package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.millennialmedia.android.MMException;

public final class gj implements Leaderboards {

    private static abstract class a extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LeaderboardMetadataResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public LeaderboardBuffer getLeaderboards() {
                return new LeaderboardBuffer(DataHolder.empty(MMException.REQUEST_NOT_FILLED));
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
            return w(status);
        }

        public LeaderboardMetadataResult w(Status status) {
            return new AnonymousClass_1(status);
        }
    }

    class AnonymousClass_1 extends a {
        final /* synthetic */ boolean HH;

        AnonymousClass_1(boolean z) {
            this.HH = z;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.b(this, this.HH);
        }
    }

    class AnonymousClass_2 extends a {
        final /* synthetic */ boolean HH;
        final /* synthetic */ String HT;

        AnonymousClass_2(String str, boolean z) {
            this.HT = str;
            this.HH = z;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.HT, this.HH);
        }
    }

    private static abstract class b extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LoadPlayerScoreResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public LeaderboardScore getScore() {
                return null;
            }

            public Status getStatus() {
                return this.vb;
            }
        }

        private b() {
        }

        public /* synthetic */ Result d(Status status) {
            return x(status);
        }

        public LoadPlayerScoreResult x(Status status) {
            return new AnonymousClass_1(status);
        }
    }

    class AnonymousClass_3 extends b {
        final /* synthetic */ String HT;
        final /* synthetic */ int HU;
        final /* synthetic */ int HV;

        AnonymousClass_3(String str, int i, int i2) {
            this.HT = str;
            this.HU = i;
            this.HV = i2;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a((com.google.android.gms.common.api.a.c)this, null, this.HT, this.HU, this.HV);
        }
    }

    private static abstract class c extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LoadScoresResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public Leaderboard getLeaderboard() {
                return null;
            }

            public LeaderboardScoreBuffer getScores() {
                return new LeaderboardScoreBuffer(DataHolder.empty(MMException.REQUEST_NOT_FILLED));
            }

            public Status getStatus() {
                return this.vb;
            }

            public void release() {
            }
        }

        private c() {
        }

        public /* synthetic */ Result d(Status status) {
            return y(status);
        }

        public LoadScoresResult y(Status status) {
            return new AnonymousClass_1(status);
        }
    }

    class AnonymousClass_4 extends c {
        final /* synthetic */ boolean HH;
        final /* synthetic */ String HT;
        final /* synthetic */ int HU;
        final /* synthetic */ int HV;
        final /* synthetic */ int HW;

        AnonymousClass_4(String str, int i, int i2, int i3, boolean z) {
            this.HT = str;
            this.HU = i;
            this.HV = i2;
            this.HW = i3;
            this.HH = z;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.HT, this.HU, this.HV, this.HW, this.HH);
        }
    }

    class AnonymousClass_5 extends c {
        final /* synthetic */ boolean HH;
        final /* synthetic */ String HT;
        final /* synthetic */ int HU;
        final /* synthetic */ int HV;
        final /* synthetic */ int HW;

        AnonymousClass_5(String str, int i, int i2, int i3, boolean z) {
            this.HT = str;
            this.HU = i;
            this.HV = i2;
            this.HW = i3;
            this.HH = z;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.b(this, this.HT, this.HU, this.HV, this.HW, this.HH);
        }
    }

    class AnonymousClass_6 extends c {
        final /* synthetic */ int HW;
        final /* synthetic */ LeaderboardScoreBuffer HX;
        final /* synthetic */ int HY;

        AnonymousClass_6(LeaderboardScoreBuffer leaderboardScoreBuffer, int i, int i2) {
            this.HX = leaderboardScoreBuffer;
            this.HW = i;
            this.HY = i2;
            super();
        }

        protected void a(fx fxVar) {
            fxVar.a(this, this.HX, this.HW, this.HY);
        }
    }

    protected static abstract class d extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements SubmitScoreResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public ScoreSubmissionData getScoreData() {
                return new ScoreSubmissionData(DataHolder.empty(MMException.REQUEST_NOT_FILLED));
            }

            public Status getStatus() {
                return this.vb;
            }

            public void release() {
            }
        }

        protected d() {
        }

        public /* synthetic */ Result d_(Status status) {
            return z(status);
        }

        public SubmitScoreResult z(Status status) {
            return new AnonymousClass_1(status);
        }
    }

    class AnonymousClass_7 extends d {
        final /* synthetic */ String HT;
        final /* synthetic */ long HZ;
        final /* synthetic */ String Ia;

        AnonymousClass_7(String str, long j, String str2) {
            this.HT = str;
            this.HZ = j;
            this.Ia = str2;
        }

        protected void a(fx fxVar) {
            fxVar.a((com.google.android.gms.common.api.a.c)this, this.HT, this.HZ, this.Ia);
        }
    }

    public Intent getAllLeaderboardsIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fr();
    }

    public Intent getLeaderboardIntent(GoogleApiClient googleApiClient, String str) {
        return Games.c(googleApiClient).au(str);
    }

    public PendingResult loadCurrentPlayerLeaderboardScore(GoogleApiClient googleApiClient, String str, int i, int i2) {
        return googleApiClient.a(new AnonymousClass_3(str, i, i2));
    }

    public PendingResult loadLeaderboardMetadata(GoogleApiClient googleApiClient, String str, boolean z) {
        return googleApiClient.a(new AnonymousClass_2(str, z));
    }

    public PendingResult loadLeaderboardMetadata(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.a(new AnonymousClass_1(z));
    }

    public PendingResult loadMoreScores(GoogleApiClient googleApiClient, LeaderboardScoreBuffer leaderboardScoreBuffer, int i, int i2) {
        return googleApiClient.a(new AnonymousClass_6(leaderboardScoreBuffer, i, i2));
    }

    public PendingResult loadPlayerCenteredScores(GoogleApiClient googleApiClient, String str, int i, int i2, int i3) {
        return loadPlayerCenteredScores(googleApiClient, str, i, i2, i3, false);
    }

    public PendingResult loadPlayerCenteredScores(GoogleApiClient googleApiClient, String str, int i, int i2, int i3, boolean z) {
        return googleApiClient.a(new AnonymousClass_5(str, i, i2, i3, z));
    }

    public PendingResult loadTopScores(GoogleApiClient googleApiClient, String str, int i, int i2, int i3) {
        return loadTopScores(googleApiClient, str, i, i2, i3, false);
    }

    public PendingResult loadTopScores(GoogleApiClient googleApiClient, String str, int i, int i2, int i3, boolean z) {
        return googleApiClient.a(new AnonymousClass_4(str, i, i2, i3, z));
    }

    public void submitScore(GoogleApiClient googleApiClient, String str, long j) {
        submitScore(googleApiClient, str, j, null);
    }

    public void submitScore(GoogleApiClient googleApiClient, String str, long j, String str2) {
        Games.c(googleApiClient).a(null, str, j, str2);
    }

    public PendingResult submitScoreImmediate(GoogleApiClient googleApiClient, String str, long j) {
        return submitScoreImmediate(googleApiClient, str, j, null);
    }

    public PendingResult submitScoreImmediate(GoogleApiClient googleApiClient, String str, long j, String str2) {
        return googleApiClient.b(new AnonymousClass_7(str, j, str2));
    }
}