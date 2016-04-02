.class final Lcom/google/android/gms/internal/bp$q;
.super Lcom/google/android/gms/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "q"
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final dM:Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$q;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/bp$q;->dM:Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$q;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$r;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$q;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$q;->dM:Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/bp$r;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/leaderboard/OnLeaderboardScoresLoadedListener;Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method
