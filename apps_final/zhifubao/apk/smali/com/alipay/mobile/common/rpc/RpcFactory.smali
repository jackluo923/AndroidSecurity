.class public Lcom/alipay/mobile/common/rpc/RpcFactory;
.super Ljava/lang/Object;
.source "RpcFactory.java"


# instance fields
.field private mConfig:Lcom/alipay/mobile/common/rpc/Config;

.field private mContext:Landroid/content/Context;

.field private mInterceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    .line 40
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mInterceptors:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->addProtocolArgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
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
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mInterceptors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public batchBegin()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->batchBegin()V

    .line 99
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
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->batchCommit()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mInterceptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    return-object v0
.end method

.method public getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
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
    const/4 v5, 0x1

    .line 60
    const-string/jumbo v0, "RpcFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clazz=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;Z)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/alipay/mobile/common/rpc/Config;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 141
    const-string/jumbo v0, "com.alipay.mobile.framework.LauncherApplicationAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getApplicationContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 145
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mContext:Landroid/content/Context;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPBRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
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
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v2, v3, p1, v4}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " class is not a proxy class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    .line 83
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->getRpcInvokeContext()Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v0

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
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
    .line 46
    const-string/jumbo v0, "RpcFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clazz=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v2, v3, p1, v4}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->getScene()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prepareResetCookie(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->setResetCoolie(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public setConfig(Lcom/alipay/mobile/common/rpc/Config;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    .line 170
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mContext:Landroid/content/Context;

    .line 153
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->setScene(Ljava/lang/String;)V

    .line 88
    return-void
.end method
