.class public Lcom/inmobi/commons/metric/Storage;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/inmobi/commons/metric/MetricConfigParams;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

.field private g:Lcom/inmobi/commons/metric/Queuer;

.field private h:J

.field private i:J

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/inmobi/commons/metric/Queuer;Lcom/inmobi/commons/metric/MetricConfigParams;)V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "inmobi.cache.data"

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    const-string v0, "inmobi.cache.data.events.number"

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->c:Ljava/lang/String;

    const-string v0, "inmobi.cache.data.events.timestamp"

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->d:Ljava/lang/String;

    iput v2, p0, Lcom/inmobi/commons/metric/Storage;->e:I

    iput-object v1, p0, Lcom/inmobi/commons/metric/Storage;->f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

    iput-object v1, p0, Lcom/inmobi/commons/metric/Storage;->g:Lcom/inmobi/commons/metric/Queuer;

    iput-object v1, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    iput-wide v3, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    iput-wide v3, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    iput-object p4, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    iput-object p3, p0, Lcom/inmobi/commons/metric/Storage;->g:Lcom/inmobi/commons/metric/Queuer;

    iput p1, p0, Lcom/inmobi/commons/metric/Storage;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/inmobi/commons/metric/Queuer;Lcom/inmobi/commons/metric/MetricConfigParams;Lcom/inmobi/commons/metric/Storage$PreProcessor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/commons/metric/Storage;-><init>(ILjava/lang/String;Lcom/inmobi/commons/metric/Queuer;Lcom/inmobi/commons/metric/MetricConfigParams;)V

    iput-object p5, p0, Lcom/inmobi/commons/metric/Storage;->f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

    return-void
.end method

.method private a()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->writeStringToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->writeStringToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    goto :goto_0
.end method


# virtual methods
.method public getEvents()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    return-wide v0
.end method

.method public readLocalCache()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->readFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Unable to read metric info."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "null,"

    goto :goto_0
.end method

.method public readNumberOfEventsAndTimeStampFromPersistent()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->readFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->readFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    invoke-direct {p0}, Lcom/inmobi/commons/metric/Storage;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    goto :goto_1
.end method

.method public resetFile()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->writeStringToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    invoke-direct {p0}, Lcom/inmobi/commons/metric/Storage;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Someting went wrong while saving metrics log to persistent storage"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveLocalCache()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/inmobi/commons/metric/Logger$MetricsCallback;->movedMetricDataToFileMemory(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/commons/metric/Storage;->g:Lcom/inmobi/commons/metric/Queuer;

    invoke-virtual {v2}, Lcom/inmobi/commons/metric/Queuer;->get()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->writeStringToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    iget-object v2, p0, Lcom/inmobi/commons/metric/Storage;->g:Lcom/inmobi/commons/metric/Queuer;

    invoke-virtual {v2}, Lcom/inmobi/commons/metric/Queuer;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->g:Lcom/inmobi/commons/metric/Queuer;

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Queuer;->reset()V

    invoke-direct {p0}, Lcom/inmobi/commons/metric/Storage;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_1
    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Error saving local cache"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Someting went wrong while saving metrics log to persistent storage"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public saveToLatest()V
    .locals 0

    invoke-virtual {p0}, Lcom/inmobi/commons/metric/Storage;->saveLocalCache()V

    return-void
.end method

.method public sendFile()V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Unable to get lock for reading file before sending metric data"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v1}, Lcom/inmobi/commons/metric/MetricConfigParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inmobi/commons/metric/Logger$MetricsCallback;->reportingStartedWithRequest(Ljava/lang/String;)V

    :cond_2
    :try_start_3
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " events to server.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/commons/metric/Storage;->readLocalCache()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/inmobi/commons/uid/UIDUtil;->getMap(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/inmobi/commons/uid/UIDUtil;->bindToEncodedJSON(Ljava/util/Map;Lorg/json/JSONObject;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "tz"

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "ts"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "product"

    iget v3, p0, Lcom/inmobi/commons/metric/Storage;->e:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v1, "payload"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

    invoke-interface {v1, v0}, Lcom/inmobi/commons/metric/Storage$PreProcessor;->process(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to url :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v3}, Lcom/inmobi/commons/metric/MetricConfigParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v1}, Lcom/inmobi/commons/metric/MetricConfigParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inmobi/commons/metric/MetricEndPoint;->sendData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data sent successfully to url :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v2}, Lcom/inmobi/commons/metric/MetricConfigParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/commons/metric/Storage;->resetFile()V

    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    invoke-interface {v0}, Lcom/inmobi/commons/metric/Logger$MetricsCallback;->reportingSuccess()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_4
    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Unable to send data"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    invoke-interface {v0}, Lcom/inmobi/commons/metric/Logger$MetricsCallback;->reportingFailure()V

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Unable to lock file."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setCallback(Lcom/inmobi/commons/metric/Logger$MetricsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    return-void
.end method

.method public setPreprocessor(Lcom/inmobi/commons/metric/Storage$PreProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/metric/Storage;->f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

    return-void
.end method
