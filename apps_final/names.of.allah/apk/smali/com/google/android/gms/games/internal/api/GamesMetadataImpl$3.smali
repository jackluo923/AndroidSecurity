.class Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$3;
.super Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadGameInstancesImpl;


# instance fields
.field final synthetic Pe:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$3;->Pe:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->l(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V

    return-void
.end method
