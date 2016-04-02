.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final ek:Lcom/google/android/gms/internal/ca;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/l;)V
    .locals 2
    .param p1, "dataHolder"    # Lcom/google/android/gms/internal/l;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/internal/l;)V

    new-instance v0, Lcom/google/android/gms/internal/ca;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/l;->i()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ca;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->ek:Lcom/google/android/gms/internal/ca;

    return-void
.end method


# virtual methods
.method public aD()Lcom/google/android/gms/internal/ca;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->ek:Lcom/google/android/gms/internal/ca;

    return-object v0
.end method

.method public get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .locals 2
    .param p1, "position"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/cc;

    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->N:Lcom/google/android/gms/internal/l;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/cc;-><init>(Lcom/google/android/gms/internal/l;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    move-result-object v0

    return-object v0
.end method
