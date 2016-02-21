package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;
import com.millennialmedia.android.MMException;

public final class gf implements Achievements {

    private static abstract class a extends com.google.android.gms.games.Games.a {

        class AnonymousClass_1 implements LoadAchievementsResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public AchievementBuffer getAchievements() {
                return new AchievementBuffer(DataHolder.empty(MMException.REQUEST_NOT_FILLED));
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
            return s(status);
        }

        public LoadAchievementsResult s(Status status) {
            return new AnonymousClass_1(status);
        }
    }

    class AnonymousClass_1 extends a {
        final /* synthetic */ boolean HH;

        AnonymousClass_1(boolean z) {
            this.HH = z;
            super();
        }

        public void a(fx fxVar) {
            fxVar.c(this, this.HH);
        }
    }

    private static abstract class b extends com.google.android.gms.games.Games.a {
        private final String uS;

        class AnonymousClass_1 implements UpdateAchievementResult {
            final /* synthetic */ Status vb;

            AnonymousClass_1(Status status) {
                this.vb = status;
            }

            public String getAchievementId() {
                return b.this.uS;
            }

            public Status getStatus() {
                return this.vb;
            }
        }

        public b(String str) {
            this.uS = str;
        }

        public /* synthetic */ Result d(Status status) {
            return t(status);
        }

        public UpdateAchievementResult t(Status status) {
            return new AnonymousClass_1(status);
        }
    }

    class AnonymousClass_2 extends b {
        final /* synthetic */ String HJ;

        AnonymousClass_2(String str, String str2) {
            this.HJ = str2;
            super(str);
        }

        public void a(fx fxVar) {
            fxVar.b(null, this.HJ);
        }
    }

    class AnonymousClass_3 extends b {
        final /* synthetic */ String HJ;

        AnonymousClass_3(String str, String str2) {
            this.HJ = str2;
            super(str);
        }

        public void a(fx fxVar) {
            fxVar.b(this, this.HJ);
        }
    }

    class AnonymousClass_4 extends b {
        final /* synthetic */ String HJ;

        AnonymousClass_4(String str, String str2) {
            this.HJ = str2;
            super(str);
        }

        public void a(fx fxVar) {
            fxVar.c(null, this.HJ);
        }
    }

    class AnonymousClass_5 extends b {
        final /* synthetic */ String HJ;

        AnonymousClass_5(String str, String str2) {
            this.HJ = str2;
            super(str);
        }

        public void a(fx fxVar) {
            fxVar.c(this, this.HJ);
        }
    }

    class AnonymousClass_6 extends b {
        final /* synthetic */ String HJ;
        final /* synthetic */ int HK;

        AnonymousClass_6(String str, String str2, int i) {
            this.HJ = str2;
            this.HK = i;
            super(str);
        }

        public void a(fx fxVar) {
            fxVar.a(null, this.HJ, this.HK);
        }
    }

    class AnonymousClass_7 extends b {
        final /* synthetic */ String HJ;
        final /* synthetic */ int HK;

        AnonymousClass_7(String str, String str2, int i) {
            this.HJ = str2;
            this.HK = i;
            super(str);
        }

        public void a(fx fxVar) {
            fxVar.a(this, this.HJ, this.HK);
        }
    }

    class AnonymousClass_8 extends b {
        final /* synthetic */ String HJ;
        final /* synthetic */ int HK;

        AnonymousClass_8(String str, String str2, int i) {
            this.HJ = str2;
            this.HK = i;
            super(str);
        }

        public void a(fx fxVar) {
            fxVar.b(null, this.HJ, this.HK);
        }
    }

    class AnonymousClass_9 extends b {
        final /* synthetic */ String HJ;
        final /* synthetic */ int HK;

        AnonymousClass_9(String str, String str2, int i) {
            this.HJ = str2;
            this.HK = i;
            super(str);
        }

        public void a(fx fxVar) {
            fxVar.b(this, this.HJ, this.HK);
        }
    }

    public Intent getAchievementsIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).fs();
    }

    public void increment(GoogleApiClient googleApiClient, String str, int i) {
        googleApiClient.b(new AnonymousClass_6(str, str, i));
    }

    public PendingResult incrementImmediate(GoogleApiClient googleApiClient, String str, int i) {
        return googleApiClient.b(new AnonymousClass_7(str, str, i));
    }

    public PendingResult load(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.a(new AnonymousClass_1(z));
    }

    public void reveal(GoogleApiClient googleApiClient, String str) {
        googleApiClient.b(new AnonymousClass_2(str, str));
    }

    public PendingResult revealImmediate(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.b(new AnonymousClass_3(str, str));
    }

    public void setSteps(GoogleApiClient googleApiClient, String str, int i) {
        googleApiClient.b(new AnonymousClass_8(str, str, i));
    }

    public PendingResult setStepsImmediate(GoogleApiClient googleApiClient, String str, int i) {
        return googleApiClient.b(new AnonymousClass_9(str, str, i));
    }

    public void unlock(GoogleApiClient googleApiClient, String str) {
        googleApiClient.b(new AnonymousClass_4(str, str));
    }

    public PendingResult unlockImmediate(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.b(new AnonymousClass_5(str, str));
    }
}