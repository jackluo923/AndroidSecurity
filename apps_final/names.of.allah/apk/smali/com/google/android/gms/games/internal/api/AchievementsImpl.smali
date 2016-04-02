.class public final Lcom/google/android/gms/games/internal/api/AchievementsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->gZ()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$6;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$6;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method public final incrementImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$7;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$7;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    return-object v0
.end method

.method public final load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Z)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    return-object v0
.end method

.method public final reveal(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$2;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$2;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method public final revealImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$3;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$3;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    return-object v0
.end method

.method public final setSteps(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$8;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$8;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method public final setStepsImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$9;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$9;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    return-object v0
.end method

.method public final unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$4;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$4;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method public final unlockImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$5;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$5;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    return-object v0
.end method
