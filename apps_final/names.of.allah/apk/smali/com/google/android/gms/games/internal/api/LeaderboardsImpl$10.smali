.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# instance fields
.field final synthetic PG:Ljava/lang/String;

.field final synthetic PH:I

.field final synthetic PI:I

.field final synthetic PJ:I

.field final synthetic Pb:Z

.field final synthetic Pe:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 8

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->Pe:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->PG:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->PH:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->PI:I

    iget v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->PJ:I

    iget-boolean v7, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->Pb:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method
