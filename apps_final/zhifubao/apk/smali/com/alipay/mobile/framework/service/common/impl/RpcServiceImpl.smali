.class public Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/RpcService;
.source "RpcServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/rpc/RpcFactory;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/RpcService;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->b:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcFactory;

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/RpcService;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->b:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/RpcService;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->b:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;)Lcom/alipay/mobile/common/rpc/RpcFactory;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    return-object v0
.end method


# virtual methods
.method public addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/RpcFactory;->addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/RpcFactory;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    .line 127
    return-void
.end method

.method public batchBegin()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->batchBegin()V

    .line 78
    return-void
.end method

.method public batchCommit()Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->batchCommit()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPBRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getPBRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v0

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getScene()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public prepareResetCookie(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->prepareResetCookie(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public setScene(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->a:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setScene(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method
