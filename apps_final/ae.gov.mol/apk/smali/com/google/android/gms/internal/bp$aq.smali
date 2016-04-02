.class final Lcom/google/android/gms/internal/bp$aq;
.super Lcom/google/android/gms/internal/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "aq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/bu;",
        ">.b<",
        "Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final ec:Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$aq;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/u$b;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/bp$aq;->ec:Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aq;->ec:Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;

    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;->getStatusCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bp$aq;->ec:Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;->onScoreSubmitted(ILcom/google/android/gms/games/leaderboard/SubmitScoreResult;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bp$aq;->a(Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
