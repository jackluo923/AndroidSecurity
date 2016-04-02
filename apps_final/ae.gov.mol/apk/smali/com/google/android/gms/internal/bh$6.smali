.class Lcom/google/android/gms/internal/bh$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bh;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cQ:Lcom/google/android/gms/internal/bh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bh$6;->cQ:Lcom/google/android/gms/internal/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bh$6;->cQ:Lcom/google/android/gms/internal/bh;

    invoke-static {v0}, Lcom/google/android/gms/internal/bh;->b(Lcom/google/android/gms/internal/bh;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onResume()V

    return-void
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
