.class public Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;
.source "CachedHttpTransportServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

.field private b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 31
    const-class v1, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;-><init>(Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    .line 41
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 42
    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->open()V

    .line 45
    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/Request;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/Request;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "must specify a handler for reponse to callback."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 56
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    check-cast v1, Lcom/alipay/mobile/common/transport/Response;

    .line 61
    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 70
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "CachedHttpTransportServiceImpl"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
