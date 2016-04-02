.class final Lcom/google/android/gms/internal/bp$r;
.super Lcom/google/android/gms/internal/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/bu;",
        ">.b<",
        "Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final dN:Lcom/google/android/gms/internal/l;

.field private final dO:Lcom/google/android/gms/internal/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$r;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/u$b;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/bp$r;->dN:Lcom/google/android/gms/internal/l;

    iput-object p4, p0, Lcom/google/android/gms/internal/bp$r;->dO:Lcom/google/android/gms/internal/l;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$r;->dN:Lcom/google/android/gms/internal/l;

    iget-object v1, p0, Lcom/google/android/gms/internal/bp$r;->dO:Lcom/google/android/gms/internal/l;

    if-eqz p1, :cond_4

    :try_start_0
    new-instance v3, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v3, v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/internal/l;)V

    new-instance v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v4, v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/l;->getStatusCode()I

    move-result v5

    invoke-interface {p1, v5, v3, v4}, Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;->onLeaderboardScoresLoaded(ILcom/google/android/gms/games/leaderboard/LeaderboardBuffer;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/l;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/l;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/l;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/l;->close()V

    :cond_3
    throw v0

    :cond_4
    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bp$r;->a(Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;)V

    return-void
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$r;->dN:Lcom/google/android/gms/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$r;->dN:Lcom/google/android/gms/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/l;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$r;->dO:Lcom/google/android/gms/internal/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$r;->dO:Lcom/google/android/gms/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/l;->close()V

    :cond_1
    return-void
.end method
