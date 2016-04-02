.class Lcom/google/android/gms/games/internal/api/PlayersImpl$7;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# instance fields
.field final synthetic Pb:Z

.field final synthetic Pe:Ljava/lang/String;

.field final synthetic Ps:I


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$7;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    const-string v2, "played_with"

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$7;->Pe:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$7;->Ps:I

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$7;->Pb:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method
