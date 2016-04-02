.class final Lcom/google/android/gms/internal/bp$ap;
.super Lcom/google/android/gms/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ap"
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final eb:Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$ap;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/bp$ap;->eb:Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;

    return-void
.end method


# virtual methods
.method public d(Lcom/google/android/gms/internal/l;)V
    .locals 5

    new-instance v0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;-><init>(Lcom/google/android/gms/internal/l;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bp$ap;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v2, Lcom/google/android/gms/internal/bp$aq;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$ap;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v4, p0, Lcom/google/android/gms/internal/bp$ap;->eb:Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/bp$aq;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method
