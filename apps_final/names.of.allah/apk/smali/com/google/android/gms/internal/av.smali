.class public final Lcom/google/android/gms/internal/av;
.super Ljava/lang/Object;


# instance fields
.field private lO:Lcom/google/android/gms/ads/AdListener;

.field private mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private mg:[Lcom/google/android/gms/ads/AdSize;

.field private mh:Ljava/lang/String;

.field private final mu:Lcom/google/android/gms/internal/bt;

.field private final mv:Lcom/google/android/gms/internal/al;

.field private mw:Lcom/google/android/gms/internal/ar;

.field private mx:Ljava/lang/String;

.field private my:Landroid/view/ViewGroup;

.field private mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/al;->aA()Lcom/google/android/gms/internal/al;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/av;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/al;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/al;->aA()Lcom/google/android/gms/internal/al;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/av;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/al;)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/al;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/bt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/av;->mu:Lcom/google/android/gms/internal/bt;

    iput-object p1, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/av;->mv:Lcom/google/android/gms/internal/al;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ap;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ap;->f(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ap;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/am;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/am;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    const-string v1, "Ads by Google"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/am;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/am;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/am;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lcom/google/android/gms/internal/eu;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/am;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private aG()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->P()Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private aH()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/am;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/am;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/av;->mu:Lcom/google/android/gms/internal/bt;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bt;)Lcom/google/android/gms/internal/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->lO:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/ah;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->lO:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aq;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/ao;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/at;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/di;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/di;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dd;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/dm;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mx:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dh;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/av;->aG()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/au;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/av;->aH()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mv:Lcom/google/android/gms/internal/al;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/al;->a(Landroid/content/Context;Lcom/google/android/gms/internal/au;)Lcom/google/android/gms/internal/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/aj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mu:Lcom/google/android/gms/internal/bt;

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

.method public final varargs a([Lcom/google/android/gms/ads/AdSize;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    new-instance v1, Lcom/google/android/gms/internal/am;

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/am;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/am;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->my:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->lO:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->Q()Lcom/google/android/gms/internal/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/am;->aB()Lcom/google/android/gms/ads/AdSize;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public final pause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final recordManualImpression()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->ab()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final resume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ar;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->lO:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

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

.method public final varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mg:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/av;->a([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mh:Ljava/lang/String;

    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mf:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InAppPurchaseListener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/av;->mA:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/av;->mx:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/av;->mw:Lcom/google/android/gms/internal/ar;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/dm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/dh;Ljava/lang/String;)V
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

    const-string v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
