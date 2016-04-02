.class Lcom/google/android/gms/internal/bh$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bh;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cQ:Lcom/google/android/gms/internal/bh;

.field final synthetic cT:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bh;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bh$3;->cQ:Lcom/google/android/gms/internal/bh;

    iput-object p2, p0, Lcom/google/android/gms/internal/bh$3;->cT:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bh$3;->cQ:Lcom/google/android/gms/internal/bh;

    invoke-static {v0}, Lcom/google/android/gms/internal/bh;->b(Lcom/google/android/gms/internal/bh;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bh$3;->cT:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
