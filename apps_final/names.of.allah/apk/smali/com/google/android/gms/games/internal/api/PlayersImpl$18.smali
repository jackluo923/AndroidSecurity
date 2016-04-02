.class Lcom/google/android/gms/games/internal/api/PlayersImpl$18;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# instance fields
.field final synthetic Pb:Z

.field final synthetic Pe:Ljava/lang/String;

.field final synthetic Qb:I


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$18;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$18;->Pe:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$18;->Qb:I

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$18;->Pb:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZ)V

    return-void
.end method
