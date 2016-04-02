.class Lcom/millennialmedia/android/PreCacheWorker;
.super Ljava/lang/Thread;


# static fields
.field private static busy:Z


# instance fields
.field private appContext:Landroid/content/Context;

.field private cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

.field private downloadedNewVideos:Z

.field private noVideosToCacheURL:Ljava/lang/String;


# direct methods
.method private constructor <init>([Lcom/millennialmedia/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/android/PreCacheWorker;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    iput-object p3, p0, Lcom/millennialmedia/android/PreCacheWorker;->noVideosToCacheURL:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/PreCacheWorker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/millennialmedia/android/PreCacheWorker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/android/PreCacheWorker;->downloadedNewVideos:Z

    return p1
.end method

.method private handleContent(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    .locals 2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/PreCacheWorker;->handleJson(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/PreCacheWorker;->handleVideoFile(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method private handleJson(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :try_start_1
    iput v1, v0, Lcom/millennialmedia/android/VideoAd;->downloadPriority:I

    iget-object v1, p0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/millennialmedia/android/PreCacheWorker$1;

    invoke-direct {v3, p0, p1}, Lcom/millennialmedia/android/PreCacheWorker$1;-><init>(Lcom/millennialmedia/android/PreCacheWorker;Lcom/millennialmedia/android/DTOCachedVideo;)V

    invoke-static {v1, v2, v0, v3}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string v0, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->preCacheStartURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->preCacheFailedURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v1, "Pre cache worker interrupted: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleVideoFile(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    .locals 3

    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->videoFileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->preCacheStartURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->url:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/millennialmedia/android/DTOCachedVideo;->videoFileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/AdCache;->downloadComponentToCache(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->preCacheCompleteURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->preCacheFailedURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static declared-synchronized preCacheVideos([Lcom/millennialmedia/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/millennialmedia/android/PreCacheWorker;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/PreCacheWorker;->busy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/PreCacheWorker;->busy:Z

    new-instance v0, Lcom/millennialmedia/android/PreCacheWorker;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/android/PreCacheWorker;-><init>([Lcom/millennialmedia/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/millennialmedia/android/PreCacheWorker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->cachedVideos:[Lcom/millennialmedia/android/DTOCachedVideo;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v4}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    iget-object v5, v0, Lcom/millennialmedia/android/DTOCachedVideo;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Pre cache worker: HTTP response is null"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-nez v4, :cond_2

    :try_start_2
    const-string v0, "Pre cache worker: Null HTTP entity"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    const-class v1, Lcom/millennialmedia/android/PreCacheWorker;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lcom/millennialmedia/android/PreCacheWorker;->busy:Z

    iget-boolean v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->downloadedNewVideos:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->noVideosToCacheURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->noVideosToCacheURL:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v4, "Pre cache worker HTTP error: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    const-string v0, "Pre cache worker: Millennial ad return failed. Zero content length returned."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v4}, Lcom/millennialmedia/android/PreCacheWorker;->handleContent(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_7
    const-class v1, Lcom/millennialmedia/android/PreCacheWorker;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v0, 0x0

    :try_start_8
    sput-boolean v0, Lcom/millennialmedia/android/PreCacheWorker;->busy:Z

    iget-boolean v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->downloadedNewVideos:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->noVideosToCacheURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->noVideosToCacheURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    :cond_5
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method
