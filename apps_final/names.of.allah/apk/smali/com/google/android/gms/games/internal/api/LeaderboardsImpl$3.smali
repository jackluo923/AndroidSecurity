.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;


# instance fields
.field final synthetic PF:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic PG:Ljava/lang/String;

.field final synthetic PH:I

.field final synthetic PI:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PF:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PG:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PH:I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PI:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PG:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PH:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->PI:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
