.class Lcom/google/android/gms/internal/bh$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cQ:Lcom/google/android/gms/internal/bh;

.field final synthetic cT:Landroid/os/Bundle;

.field final synthetic cU:Landroid/widget/FrameLayout;

.field final synthetic cV:Landroid/view/LayoutInflater;

.field final synthetic cW:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bh;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bh$4;->cQ:Lcom/google/android/gms/internal/bh;

    iput-object p2, p0, Lcom/google/android/gms/internal/bh$4;->cU:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/internal/bh$4;->cV:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/google/android/gms/internal/bh$4;->cW:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/google/android/gms/internal/bh$4;->cT:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/bh$4;->cU:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bh$4;->cU:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bh$4;->cQ:Lcom/google/android/gms/internal/bh;

    invoke-static {v1}, Lcom/google/android/gms/internal/bh;->b(Lcom/google/android/gms/internal/bh;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bh$4;->cV:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/google/android/gms/internal/bh$4;->cW:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/gms/internal/bh$4;->cT:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
