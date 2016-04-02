.class final Lcom/google/android/gms/internal/bp$an;
.super Lcom/google/android/gms/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "an"
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final ea:Lcom/google/android/gms/games/OnSignOutCompleteListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/OnSignOutCompleteListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$an;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/OnSignOutCompleteListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/bp$an;->ea:Lcom/google/android/gms/games/OnSignOutCompleteListener;

    return-void
.end method


# virtual methods
.method public onSignOutComplete()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$an;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$ao;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$an;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$an;->ea:Lcom/google/android/gms/games/OnSignOutCompleteListener;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/bp$ao;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/OnSignOutCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method
