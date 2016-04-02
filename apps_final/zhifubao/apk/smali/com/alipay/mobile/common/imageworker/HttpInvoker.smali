.class public abstract Lcom/alipay/mobile/common/imageworker/HttpInvoker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static BITMAP:Ljava/lang/String; = null

.field public static NORMAL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ImageWorker-HttpInvoker"


# instance fields
.field private currentDownLoads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/imageworker/HttpCallback",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private currentTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private transport:Lcom/alipay/mobile/common/transport/http/HttpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "normal"

    sput-object v0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->NORMAL:Ljava/lang/String;

    const-string/jumbo v0, "bitmap"

    sput-object v0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->BITMAP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->transport:Lcom/alipay/mobile/common/transport/http/HttpManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentDownLoads:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentTasks:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/imageworker/HttpInvoker;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/imageworker/HttpInvoker;-><init>()V

    return-void
.end method

.method public static getHttpInvoker(Ljava/lang/Class;)Lcom/alipay/mobile/common/imageworker/HttpInvoker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TI;>;)",
            "Lcom/alipay/mobile/common/imageworker/HttpInvoker",
            "<TI;>;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/imageworker/HttpInvoker$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/imageworker/HttpInvoker$1;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/imageworker/HttpInvoker$2;

    invoke-direct {v0}, Lcom/alipay/mobile/common/imageworker/HttpInvoker$2;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u53c2\u6570\u4e0d\u6b63\u786e\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract buildHttpCallback(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;)Lcom/alipay/mobile/common/imageworker/HttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/imageworker/HttpCallback",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;",
            "Lcom/alipay/mobile/common/imageworker/HttpDataProcessor",
            "<TT;>;)",
            "Lcom/alipay/mobile/common/imageworker/HttpCallback",
            "<TT;>;"
        }
    .end annotation
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentDownLoads:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentDownLoads:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/imageworker/HttpCallback;

    if-nez v0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/imageworker/HttpCallback;->clearListener()V

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentTasks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/imageworker/HttpCallback;->clearRequestCallbackAndTask(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public loadHttp(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/DownloadListener;Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;)Lcom/alipay/mobile/common/imageworker/HttpCallback;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/imageworker/DownloadListener",
            "<TT;>;",
            "Lcom/alipay/mobile/common/imageworker/HttpDataProcessor",
            "<TT;>;)",
            "Lcom/alipay/mobile/common/imageworker/HttpCallback",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentDownLoads:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentDownLoads:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "ImageWorker-HttpInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u5df2\u7ecf\u5728\u4e0b\u8f7d\uff0c\u76f4\u63a5\u6dfb\u52a0\u56de\u8c03"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentDownLoads:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/imageworker/HttpCallback;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/imageworker/HttpCallback;->addListener(Lcom/alipay/mobile/common/imageworker/DownloadListener;)Z

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "ImageWorker-HttpInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v2, p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentDownLoads:Ljava/util/Map;

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentTasks:Ljava/util/Map;

    invoke-virtual {p0, v0, v3, p3}, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->buildHttpCallback(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;)Lcom/alipay/mobile/common/imageworker/HttpCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/imageworker/HttpCallback;->addListener(Lcom/alipay/mobile/common/imageworker/DownloadListener;)Z

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->transport:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentTasks:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->currentDownLoads:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
