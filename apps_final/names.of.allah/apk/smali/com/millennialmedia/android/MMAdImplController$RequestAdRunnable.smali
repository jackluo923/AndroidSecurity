.class Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field adUrl:Ljava/lang/String;

.field mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

.field final synthetic this$0:Lcom/millennialmedia/android/MMAdImplController;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/android/MMAdImplController;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/MMAdImplController;Lcom/millennialmedia/android/MMAdImplController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;-><init>(Lcom/millennialmedia/android/MMAdImplController;)V

    return-void
.end method

.method private isAdUrlBuildable()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    :cond_0
    if-eqz v0, :cond_2

    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdImpl;->insertUrlAdMetaValues(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/millennialmedia/android/MMSDK;->insertUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V

    const-string v3, "ua"

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/millennialmedia/android/HandShake;->getAdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v4, "%s=%s&"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/millennialmedia/android/MMException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    const-string v0, "Calling for an advertisement: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0x19

    invoke-direct {v0, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private isHandledHtmlResponse(Lorg/apache/http/HttpEntity;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/millennialmedia/android/InterstitialAd;

    invoke-direct {v2}, Lcom/millennialmedia/android/InterstitialAd;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/InterstitialAd;->setId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iput-object v3, v2, Lcom/millennialmedia/android/InterstitialAd;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    sget v3, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    const-string v3, "Received interstitial ad with url %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/millennialmedia/android/InterstitialAd;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_3
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/millennialmedia/android/MMAdImplController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/millennialmedia/android/MMException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception raised in HTTP stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    goto :goto_1
.end method

.method private isHandledJsonResponse(Lorg/apache/http/HttpEntity;)Z
    .locals 5

    const/16 v4, 0xf

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "Millennial ad return unsupported format."

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/CachedAd;->parseJSON(Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cached video ad JSON received: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "New ad has expiration date in the past. Not downloading ad content."

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->delete(Landroid/content/Context;)V

    new-instance v0, Lcom/millennialmedia/android/MMException;

    invoke-direct {v0, v4}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    new-instance v1, Lcom/millennialmedia/android/MMException;

    const-string v2, "Millennial ad return failed. Invalid response data."

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Lcom/millennialmedia/android/MMException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Millennial ad return failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "Previously fetched ad exists in the playback queue. Not downloading ad content."

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->delete(Landroid/content/Context;)V

    new-instance v0, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0x11

    invoke-direct {v0, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/millennialmedia/android/VideoAd;->cacheMissURL:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    const-string v2, "Downloading ad..."

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V

    const/4 v2, 0x3

    iput v2, v0, Lcom/millennialmedia/android/VideoAd;->downloadPriority:I

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-static {v2, v3, v0, v1}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z

    goto/16 :goto_2

    :cond_4
    const-string v2, "Cached ad is valid. Moving it to the front of the queue."

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V

    goto/16 :goto_2

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private isHandledResponse(Lorg/apache/http/HttpResponse;)Z
    .locals 8

    const/16 v7, 0xf

    const/16 v6, 0xe

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/millennialmedia/android/MMException;

    const-string v2, "Null HTTP entity"

    invoke-direct {v1, v2, v6}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

    :goto_0
    return v0

    :cond_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    new-instance v1, Lcom/millennialmedia/android/MMException;

    const-string v2, "Millennial ad return failed. Zero content length returned."

    invoke-direct {v1, v2, v6}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->saveMacId(Lorg/apache/http/HttpResponse;)V

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->isHandledJsonResponse(Lorg/apache/http/HttpEntity;)Z

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "X-MM-Video"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    new-instance v2, Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/millennialmedia/android/HttpMMHeaders;-><init>([Lorg/apache/http/Header;)V

    iput-object v2, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v3

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->isHandledHtmlResponse(Lorg/apache/http/HttpEntity;)Z

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const-string v2, "Millennial ad return failed. Invalid (JSON/HTML expected) mime type returned."

    invoke-direct {v1, v2, v7}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const-string v2, "Millennial ad return failed. HTTP Header value null."

    invoke-direct {v1, v2, v7}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z

    goto/16 :goto_0
.end method

.method private saveMacId(Lorg/apache/http/HttpResponse;)V
    .locals 6

    const-string v0, "Set-Cookie"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MAC-ID="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    const/16 v5, 0x3b

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-le v5, v4, :cond_0

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/millennialmedia/android/MMSDK;->macId:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method fail(Lcom/millennialmedia/android/MMException;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    :cond_0
    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    const/4 v0, 0x0

    return v0
.end method

.method failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->fail(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    return v0
.end method

.method failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->fail(Lcom/millennialmedia/android/MMException;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->isAdUrlBuildable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "HTTP response is null."

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/millennialmedia/android/MMException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad request HTTP error. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    invoke-direct {v1, v0, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/millennialmedia/android/MMException;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->isHandledResponse(Lorg/apache/http/HttpResponse;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    :cond_2
    :try_start_4
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "No network available, can\'t call for ads."

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "Request not filled, can\'t call for ads."

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/millennialmedia/android/MMException;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v4, v1, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    throw v0
.end method
