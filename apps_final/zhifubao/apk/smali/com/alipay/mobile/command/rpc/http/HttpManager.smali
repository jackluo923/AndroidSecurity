.class public Lcom/alipay/mobile/command/rpc/http/HttpManager;
.super Ljava/lang/Object;


# static fields
.field private static g:Lcom/alipay/mobile/command/rpc/http/HttpManager;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

.field private c:J

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->g:Lcom/alipay/mobile/command/rpc/http/HttpManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "service_triger"

    invoke-static {v0}, Lcom/alipay/mobile/command/util/ThreadPools;->applyDefaultThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string/jumbo v0, "android"

    invoke-static {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->newInstance(Ljava/lang/String;)Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    new-instance v0, Lcom/alipay/mobile/command/rpc/http/HttpManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/command/rpc/http/HttpManager$1;-><init>(Lcom/alipay/mobile/command/rpc/http/HttpManager;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;
    .locals 2

    const-class v1, Lcom/alipay/mobile/command/rpc/http/HttpManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->g:Lcom/alipay/mobile/command/rpc/http/HttpManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/command/rpc/http/HttpManager;

    invoke-direct {v0}, Lcom/alipay/mobile/command/rpc/http/HttpManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->g:Lcom/alipay/mobile/command/rpc/http/HttpManager;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->g:Lcom/alipay/mobile/command/rpc/http/HttpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addConnectTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->d:J

    iget v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->f:I

    return-void
.end method

.method public addDataSize(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->c:J

    return-void
.end method

.method public addSocketTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->e:J

    return-void
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public execute(Lcom/alipay/mobile/command/model/Request;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/command/model/Request;",
            "Lcom/alipay/mobile/command/rpc/http/TransportCallback;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/mobile/command/model/Response;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, "manager"

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "HttpManager: Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All connect time = %d ms, All socket time = %d ms, All request times = %d times"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getAverageSpeed()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getAverageConnectTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-wide v5, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-wide v5, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-wide v5, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->e:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    iget v5, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory;->buildTask(Lcom/alipay/mobile/command/model/Request;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getAverageConnectTime()J
    .locals 4

    iget v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->f:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->d:J

    iget v2, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->f:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getAverageSpeed()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->e:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->c:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->e:J

    div-long/2addr v0, v2

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    goto :goto_0
.end method

.method public getHttpClient()Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    if-nez v0, :cond_0

    const-string/jumbo v0, "android"

    invoke-static {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->newInstance(Ljava/lang/String;)Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    const-string/jumbo v0, "service_triger"

    invoke-static {v0}, Lcom/alipay/mobile/command/util/ThreadPools;->applyDefaultThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/HttpManager;->b:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    return-object v0
.end method
