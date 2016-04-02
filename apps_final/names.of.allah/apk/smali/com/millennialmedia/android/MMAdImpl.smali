.class abstract Lcom/millennialmedia/android/MMAdImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/millennialmedia/android/MMAd;


# static fields
.field private static nextAdViewId:J


# instance fields
.field adProperties:Lcom/millennialmedia/android/AdProperties;

.field adType:Ljava/lang/String;

.field apid:Ljava/lang/String;

.field contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field controller:Lcom/millennialmedia/android/MMAdImplController;

.field ignoreDensityScaling:Z

.field internalId:J

.field isFinishing:Z

.field lastAdRequest:J

.field linkForExpansionId:J

.field protected mmRequest:Lcom/millennialmedia/android/MMRequest;

.field mmWebViewClient:Lcom/millennialmedia/android/MMWebViewClient;

.field mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

.field obj:Lorg/json/JSONObject;

.field requestListener:Lcom/millennialmedia/android/RequestListener;

.field userData:Ljava/lang/String;

.field xmlLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->xmlLayout:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdImpl$BasicMMWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    const-class v1, Lcom/millennialmedia/android/MMAdImpl;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

    iput-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    sget-wide v2, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

    const-string v0, "Assigning MMAdImpl internal id: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getAdTypes()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "i"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    return-void
.end method

.method animateTransition()V
    .locals 0

    return-void
.end method

.method getAdProperties()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->adProperties:Lcom/millennialmedia/android/AdProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->adProperties:Lcom/millennialmedia/android/AdProperties;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdProperties;->getAdProperties()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    return-object v0
.end method

.method getCachedName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract getCallingAd()Lcom/millennialmedia/android/MMAd;
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getIgnoresDensityScaling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    return v0
.end method

.method public getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    return-object v0
.end method

.method public getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    return-object v0
.end method

.method getMMWebViewClient()Lcom/millennialmedia/android/MMWebViewClient;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Returning a client for user: DefaultWebViewClient, adimpl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/millennialmedia/android/BannerWebViewClient;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    new-instance v2, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/BannerWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    return-object v0
.end method

.method getReqType()Ljava/lang/String;
    .locals 1

    const-string v0, "fetch"

    return-object v0
.end method

.method getRequestCompletedAction()Ljava/lang/String;
    .locals 1

    const-string v0, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    return-object v0
.end method

.method getRequestFailedAction()Ljava/lang/String;
    .locals 1

    const-string v0, "millennialmedia.action.ACTION_FETCH_FAILED"

    return-object v0
.end method

.method public hasCachedVideoSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method insertUrlAdMetaValues(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ar"

    const-string v2, "manual"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdkapid"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "do"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "olock"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getOrientationLocked(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->hasCachedVideoSupport()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cachedvideo"

    const-string v2, "false"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "reqtype"

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getReqType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/MMRequest;->getUrlParams(Ljava/util/Map;)V

    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/HandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "video"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "at"

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_3
    const-string v0, "video"

    const-string v1, "false"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") **********"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    const-string v0, "at"

    const-string v1, "b"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public isBanner()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isLifecycleObservable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isRefreshable()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/millennialmedia/android/MMSDK;->disableAdMinRefresh:Z

    if-eqz v2, :cond_0

    const-string v1, "Requesting of ads disabled by server"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->lastAdRequest:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    int-to-long v5, v4

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v7

    iget-wide v7, v7, Lcom/millennialmedia/android/HandShake;->adRefreshSecs:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    iput-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->lastAdRequest:J

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    rsub-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method isTransitionAnimated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isUpdatingMraid()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-boolean v0, v0, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepareTransition(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method removeView(Lcom/millennialmedia/android/MMWebView;)V
    .locals 0

    return-void
.end method

.method requestAd()V
    .locals 1

    invoke-static {p0}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->requestAd()V

    :cond_0
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    const-string v1, "28911"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    sput-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    return-void
.end method

.method setBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method setClickable(Z)V
    .locals 0

    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    return-void
.end method

.method public setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdType[("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") InternalId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") LinkedId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") isFinishing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unresizeToDefault()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->unresizeToDefault()V

    :cond_0
    return-void
.end method
