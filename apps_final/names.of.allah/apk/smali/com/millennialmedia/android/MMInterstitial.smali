.class public final Lcom/millennialmedia/android/MMInterstitial;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/millennialmedia/android/MMAd;


# instance fields
.field adImpl:Lcom/millennialmedia/android/MMAdImpl;

.field externalId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;-><init>(Lcom/millennialmedia/android/MMInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v1, "i"

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    return-void
.end method

.method private fetchInternal()V
    .locals 3

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ad already fetched and ready for display..."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    new-instance v1, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Fetching new ad..."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->requestAd()V

    goto :goto_0
.end method


# virtual methods
.method public final display()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMInterstitial;->display(Z)Z

    move-result v0

    return v0
.end method

.method public final display(Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMInterstitial;->displayInternal()I

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    new-instance v2, Lcom/millennialmedia/android/MMException;

    invoke-direct {v2, v1}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/millennialmedia/android/MMException;

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_2
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final displayInternal()I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdImplController;->display(Lcom/millennialmedia/android/MMAdImpl;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "There was an exception displaying a cached ad. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public final fetch()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    iget-object v1, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->fetch(Lcom/millennialmedia/android/MMRequest;Lcom/millennialmedia/android/RequestListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMInterstitial;->fetchInternal()V

    goto :goto_0
.end method

.method public final fetch(Lcom/millennialmedia/android/MMRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch(Lcom/millennialmedia/android/MMRequest;Lcom/millennialmedia/android/RequestListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMInterstitial;->fetchInternal()V

    goto :goto_0
.end method

.method public final fetch(Lcom/millennialmedia/android/MMRequest;Lcom/millennialmedia/android/RequestListener;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p2, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMInterstitial;->fetchInternal()V

    return-void
.end method

.method public final getApid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIgnoresDensityScaling()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public final getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getListener()Lcom/millennialmedia/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public final getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getMMRequest()Lcom/millennialmedia/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method public final isAdAvailable()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    iget-object v2, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMAdImplController;->isAdAvailable(Lcom/millennialmedia/android/MMAdImpl;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "There was an exception checking for a cached ad. %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final setApid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setApid(Ljava/lang/String;)V

    return-void
.end method

.method public final setIgnoresDensityScaling(Z)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setIgnoresDensityScaling(Z)V

    return-void
.end method

.method public final setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    return-void
.end method

.method public final setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    return-void
.end method
