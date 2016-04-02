.class Lcom/google/android/gms/games/internal/api/QuestsImpl$6;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# instance fields
.field final synthetic Pb:Z

.field final synthetic Pe:Ljava/lang/String;

.field final synthetic Qo:[Ljava/lang/String;

.field final synthetic Qp:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->Pe:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->Qp:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->Pb:Z

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->Qo:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method
