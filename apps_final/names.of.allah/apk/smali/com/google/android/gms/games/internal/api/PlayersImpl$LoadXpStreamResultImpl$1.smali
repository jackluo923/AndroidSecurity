.class Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadXpStreamResult;


# instance fields
.field final synthetic Qj:Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl;

.field final synthetic yG:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl$1;->Qj:Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl$1;->yG:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl$1;->yG:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
