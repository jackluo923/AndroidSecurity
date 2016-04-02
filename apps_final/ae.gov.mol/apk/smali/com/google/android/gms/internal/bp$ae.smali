.class final Lcom/google/android/gms/internal/bp$ae;
.super Lcom/google/android/gms/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ae"
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final dT:Lcom/google/android/gms/games/OnPlayersLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/OnPlayersLoadedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$ae;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/OnPlayersLoadedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/bp$ae;->dT:Lcom/google/android/gms/games/OnPlayersLoadedListener;

    return-void
.end method


# virtual methods
.method public e(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$ae;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$af;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$ae;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$ae;->dT:Lcom/google/android/gms/games/OnPlayersLoadedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$af;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/OnPlayersLoadedListener;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method
