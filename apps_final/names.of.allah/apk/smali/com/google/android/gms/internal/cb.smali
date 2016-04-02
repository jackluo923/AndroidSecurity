.class public final Lcom/google/android/gms/internal/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/d;
.implements Lcom/google/ads/mediation/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/j;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/g;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/d;",
        "Lcom/google/ads/mediation/f;"
    }
.end annotation


# instance fields
.field private final nR:Lcom/google/android/gms/internal/bw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/bw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    return-object v0
.end method


# virtual methods
.method public final onClick(Lcom/google/ads/mediation/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/c",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onClick."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$1;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onDismissScreen(Lcom/google/ads/mediation/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/c",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onDismissScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$4;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onDismissScreen(Lcom/google/ads/mediation/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/e",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onDismissScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$9;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$9;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/mediation/c;Lcom/google/ads/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/c",
            "<**>;",
            "Lcom/google/ads/b;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adapter called onFailedToReceiveAd with error. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$5;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/cb$5;-><init>(Lcom/google/android/gms/internal/cb;Lcom/google/ads/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-static {p2}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/ads/b;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bw;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/mediation/e;Lcom/google/ads/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/e",
            "<**>;",
            "Lcom/google/ads/b;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adapter called onFailedToReceiveAd with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$10;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/cb$10;-><init>(Lcom/google/android/gms/internal/cb;Lcom/google/ads/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-static {p2}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/ads/b;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bw;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onLeaveApplication(Lcom/google/ads/mediation/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/c",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onLeaveApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$6;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onLeaveApplication(Lcom/google/ads/mediation/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/e",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onLeaveApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$11;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$11;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onPresentScreen(Lcom/google/ads/mediation/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/c",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onPresentScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$7;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onPresentScreen(Lcom/google/ads/mediation/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/e",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onPresentScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$2;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onReceivedAd(Lcom/google/ads/mediation/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/c",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onReceivedAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$8;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onReceivedAd(Lcom/google/ads/mediation/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/e",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onReceivedAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cb$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$3;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cb;->nR:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
