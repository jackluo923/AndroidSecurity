.class Lcom/google/android/gms/games/internal/api/RequestsImpl$4;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl;


# instance fields
.field final synthetic Pe:Ljava/lang/String;

.field final synthetic QA:I

.field final synthetic Qx:[Ljava/lang/String;

.field final synthetic Qy:I

.field final synthetic Qz:[B


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->Pe:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->Qx:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->Qy:I

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->Qz:[B

    iget v6, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$4;->QA:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;[Ljava/lang/String;I[BI)V

    return-void
.end method
