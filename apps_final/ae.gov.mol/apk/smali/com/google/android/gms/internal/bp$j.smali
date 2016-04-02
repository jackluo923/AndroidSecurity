.class final Lcom/google/android/gms/internal/bp$j;
.super Lcom/google/android/gms/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "j"
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final dI:Lcom/google/android/gms/games/OnGamesLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/OnGamesLoadedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$j;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/OnGamesLoadedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/bp$j;->dI:Lcom/google/android/gms/games/OnGamesLoadedListener;

    return-void
.end method


# virtual methods
.method public g(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$j;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$k;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$j;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$j;->dI:Lcom/google/android/gms/games/OnGamesLoadedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$k;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/OnGamesLoadedListener;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method
