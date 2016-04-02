.class public final Lcom/google/android/gms/internal/aw;
.super Ljava/lang/Object;


# instance fields
.field private lO:Lcom/google/android/gms/ads/AdListener;

.field private mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private final mContext:Landroid/content/Context;

.field private mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private mh:Ljava/lang/String;

.field private final mu:Lcom/google/android/gms/internal/bt;

.field private final mv:Lcom/google/android/gms/internal/al;

.field private mw:Lcom/google/android/gms/internal/ar;

.field private mx:Ljava/lang/String;

.field private mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/al;->aA()Lcom/google/android/gms/internal/al;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/aw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/al;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/al;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/bt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aw;->mu:Lcom/google/android/gms/internal/bt;

    iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aw;->mv:Lcom/google/android/gms/internal/al;

    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mh:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aw;->l(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/am;

    invoke-direct {v1}, Lcom/google/android/gms/internal/am;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mh:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/aw;->mu:Lcom/google/android/gms/internal/bt;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bt;)Lcom/google/android/gms/internal/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->lO:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/ah;

    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->lO:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aq;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/ao;

    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/at;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/di;

    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/di;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dd;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/dm;

    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mx:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dh;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The ad unit ID must be set on InterstitialAd before "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/au;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-nez v0, :cond_0

    const-string v0, "loadAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aw;->k(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mv:Lcom/google/android/gms/internal/al;

    iget-object v2, p0, Lcom/google/android/gms/internal/aw;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/al;->a(Landroid/content/Context;Lcom/google/android/gms/internal/au;)Lcom/google/android/gms/internal/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mu:Lcom/google/android/gms/internal/bt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/au;->aD()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bt;->c(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->lO:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mh:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ar;->isReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to check if ad is ready."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/aw;->lO:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mh:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mh:Ljava/lang/String;

    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ao;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/at;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/di;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/di;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/aw;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/dm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dh;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final show()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aw;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aw;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
