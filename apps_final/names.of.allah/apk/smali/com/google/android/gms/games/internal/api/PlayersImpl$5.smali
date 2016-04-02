.class Lcom/google/android/gms/games/internal/api/PlayersImpl$5;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# instance fields
.field final synthetic Pb:Z

.field final synthetic Ps:I

.field final synthetic Qa:Lcom/google/android/gms/games/internal/api/PlayersImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/PlayersImpl;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->Qa:Lcom/google/android/gms/games/internal/api/PlayersImpl;

    iput p2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->Ps:I

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->Pb:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;-><init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    const-string v2, "played_with"

    iget v3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->Ps:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->Pb:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V

    return-void
.end method
