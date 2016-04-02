.class public Lcom/alipay/mobile/common/transport/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HttpManager"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 43
    return-void
.end method


# virtual methods
.method public addConnectTime(J)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->addConnectTime(J)V

    .line 84
    return-void
.end method

.method public addDataSize(J)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->addDataSize(J)V

    .line 74
    return-void
.end method

.method public addSocketTime(J)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->addSocketTime(J)V

    .line 94
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->close()V

    .line 126
    return-void
.end method

.method public dumpPerf()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->dumpPerf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->execute(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public generateWorker(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    return-object v0
.end method

.method public getAverageConnectTime()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getAverageConnectTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAverageSpeed()J
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getAverageSpeed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpManager;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method
