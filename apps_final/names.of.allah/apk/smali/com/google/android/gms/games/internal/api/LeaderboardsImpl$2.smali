.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadMetadataImpl;


# instance fields
.field final synthetic PF:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic PG:Ljava/lang/String;

.field final synthetic Pb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->PF:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->PG:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->Pb:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadMetadataImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->PG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->Pb:Z

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Z)V

    return-void
.end method
