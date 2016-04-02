.class final Lcom/google/android/gms/internal/bp$n;
.super Lcom/google/android/gms/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "n"
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final dL:Lcom/google/android/gms/games/multiplayer/OnInvitationsLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/OnInvitationsLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$n;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/bp$n;->dL:Lcom/google/android/gms/games/multiplayer/OnInvitationsLoadedListener;

    return-void
.end method


# virtual methods
.method public j(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$n;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$o;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$n;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$n;->dL:Lcom/google/android/gms/games/multiplayer/OnInvitationsLoadedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$o;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/OnInvitationsLoadedListener;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method
