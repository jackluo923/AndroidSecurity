.class Lcom/millennialmedia/android/MMAdImplController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# static fields
.field static final NO_ID_RETURNED:J = -0x4L

.field private static final saveableControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/millennialmedia/android/MMAdImplController;",
            ">;"
        }
    .end annotation
.end field

.field private static final weakUnsaveableAdRef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdImplController;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field volatile adImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdImpl;",
            ">;"
        }
    .end annotation
.end field

.field volatile linkedAdImplId:J

.field requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

.field volatile webView:Lcom/millennialmedia/android/MMWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "**************** creating new controller."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    iget-wide v0, p1, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdImplController;->linkForExpansion(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {p1}, Lcom/millennialmedia/android/MMAdImplController;->getWebViewFromExistingAdImpl(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMWebView;->requiresPreAdSizeFix:Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    goto :goto_0
.end method

.method static declared-synchronized assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 5

    const-class v2, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isLifecycleObservable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Has a controller"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v2

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "*****************************************assignAdViewController for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    if-nez v0, :cond_5

    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Lcom/millennialmedia/android/MMAdImplController;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdImplController;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isLifecycleObservable()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/millennialmedia/android/MMAdImplController;->setupWebView(Lcom/millennialmedia/android/MMAdImpl;)V

    goto/16 :goto_1

    :cond_6
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method static declared-synchronized attachWebViewFromOverlay(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4

    const-class v1, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "attachWebViewFromOverlay with "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iput-object v3, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/MMAdImpl;->removeView(Lcom/millennialmedia/android/MMWebView;)V

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    :cond_0
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->setMraidDefault()V

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getMMWebViewClient()Lcom/millennialmedia/android/MMWebViewClient;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static clearControllers()V
    .locals 1

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method static controllersToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SAVED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static destroyOtherInlineVideo(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/millennialmedia/android/MMLayout;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->removeVideo()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static declared-synchronized getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;
    .locals 5

    const/4 v2, 0x0

    const-class v3, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v3

    const-wide/16 v0, -0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    monitor-exit v3

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    if-nez v0, :cond_1

    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static declared-synchronized getWebViewFromExistingAdImpl(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;
    .locals 5

    const/4 v0, 0x0

    const-class v1, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getWebViewFromExistingLayout("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " taking from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v3, :cond_0

    iget-object v0, v2, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized isDownloadingCachedAd(Lcom/millennialmedia/android/MMAdImpl;)Z
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/HandShake;->isAdTypeDownloading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "There is a download in progress. Defering call for new ad"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    new-instance v1, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {p1, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v2, "No download in progress."

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->loadIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "Last ad wasn\'t fully downloaded. Download again."

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Event;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, p0}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "No incomplete downloads."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized removeAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 6

    const-class v1, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isLifecycleObservable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "****************RemoveAdviewcontroller - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "****************RemoveAdviewcontroller - controllers "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/millennialmedia/android/MMAdImplController;->controllersToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "****************RemoveAdviewcontroller - controller!=null, expanding="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-boolean v3, v3, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/MMAdImpl;->removeView(Lcom/millennialmedia/android/MMWebView;)V

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

    iget-boolean v2, p0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_2
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private requestAdInternal(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 3

    iget-object v0, p1, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

    invoke-static {p1, v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImplController;->isDownloadingCachedAd(Lcom/millennialmedia/android/MMAdImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/millennialmedia/android/MMException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {p1, v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    new-instance v0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;-><init>(Lcom/millennialmedia/android/MMAdImplController;Lcom/millennialmedia/android/MMAdImplController$1;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized setupWebView(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 5

    const-class v1, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getMMWebViewClient()Lcom/millennialmedia/android/MMWebViewClient;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v3, v4}, Lcom/millennialmedia/android/MMWebView;->isCurrentParent(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->isMraidResized()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v3, p0}, Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_0
    :goto_0
    iget-object v3, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->removeFromParent()V

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/android/MMAdImpl;->addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method checkReason(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%s is expired."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x15

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/millennialmedia/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "%s is not on disk."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x16

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-object v1, p1, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    iget-wide v2, p2, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "%s cannot be shown at this time."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x18

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    goto :goto_0
.end method

.method display(Lcom/millennialmedia/android/MMAdImpl;)I
    .locals 4

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/CachedAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Event;->displayStarted(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/CachedAd;->show(Landroid/content/Context;J)V

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMAdImplController;->checkReason(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    if-nez v0, :cond_0

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0
.end method

.method public downloadStart(Lcom/millennialmedia/android/CachedAd;)V
    .locals 0

    return-void
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0
.end method

.method isAdAvailable(Lcom/millennialmedia/android/MMAdImpl;)I
    .locals 3

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/CachedAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMAdImplController;->checkReason(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "No next ad."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    const/16 v0, 0x14

    goto :goto_0
.end method

.method linkForExpansion(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4

    iget-wide v0, p1, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, p1, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdImplController;->linkedAdImplId:J

    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    iput-wide v2, v1, Lcom/millennialmedia/android/MMAdImplController;->linkedAdImplId:J

    iget-wide v1, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    iput-wide v1, v0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    :cond_0
    return-void
.end method

.method loadUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method loadWebContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/millennialmedia/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_0
    return-void
.end method

.method pauseWebViewVideo()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->onPauseWebViewVideo()V

    :cond_0
    return-void
.end method

.method requestAd()V
    .locals 5

    const/16 v4, 0x19

    const/16 v3, 0x10

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/millennialmedia/android/MMException;

    invoke-direct {v1, v4}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->isRefreshable()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/millennialmedia/android/MMException;

    invoke-direct {v1, v3}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/millennialmedia/android/MMException;

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-boolean v1, v1, Lcom/millennialmedia/android/HandShake;->kill:Z

    if-eqz v1, :cond_3

    const-string v1, "The server is no longer allowing ads."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    new-instance v1, Lcom/millennialmedia/android/MMException;

    invoke-direct {v1, v3}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v1, "adLayout - requestAd"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdImplController;->requestAdInternal(Lcom/millennialmedia/android/MMAdImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "There was an exception with the ad request. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method resumeWebViewVideo()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->onResumeWebViewVideo()V

    :cond_0
    return-void
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, p1, p2, v0}, Lcom/millennialmedia/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-LinkInC="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImplController;->linkedAdImplId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unresizeToDefault()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_0
    return-void
.end method
