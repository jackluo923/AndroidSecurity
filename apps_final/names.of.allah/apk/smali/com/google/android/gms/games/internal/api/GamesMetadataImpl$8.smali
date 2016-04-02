.class Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$8;
.super Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadExtendedGamesImpl;


# instance fields
.field final synthetic Pb:Z

.field final synthetic Ps:I

.field final synthetic Pv:I

.field final synthetic Pw:Z


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$8;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    iget v2, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$8;->Ps:I

    iget v3, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$8;->Pv:I

    iget-boolean v4, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$8;->Pw:Z

    iget-boolean v5, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$8;->Pb:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;IIZZ)V

    return-void
.end method
