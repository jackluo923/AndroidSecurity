.class public Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;
.super Ljava/lang/Object;
.source "RpcInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private innerRpcInvokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

.field private mBackgroundRpc:Z

.field protected mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/alipay/mobile/common/rpc/Config;

.field private mResetCoolie:Z

.field protected mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/rpc/Config;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alipay/mobile/common/rpc/RpcInvoker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/rpc/Config;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alipay/mobile/common/rpc/RpcInvoker;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mBackgroundRpc:Z

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    .line 61
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mClazz:Ljava/lang/Class;

    .line 62
    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    .line 63
    iput-boolean p4, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mBackgroundRpc:Z

    .line 64
    return-void
.end method

.method private buildRpcInvokeContext()Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->getInnerRpcInvokeContext()Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    move-result-object v0

    .line 73
    iget-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->isResetCoolie()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    .line 76
    :cond_0
    iget-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 77
    iget-boolean v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mBackgroundRpc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    .line 79
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v1}, Lcom/alipay/mobile/common/rpc/Config;->getAppKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    .line 82
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v1}, Lcom/alipay/mobile/common/rpc/Config;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    .line 85
    :cond_3
    iget-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->compress:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v1}, Lcom/alipay/mobile/common/rpc/Config;->isCompress()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->compress:Ljava/lang/Boolean;

    .line 88
    :cond_4
    return-object v0
.end method

.method private getInnerRpcInvokeContext()Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->innerRpcInvokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    invoke-direct {v0}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->innerRpcInvokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->innerRpcInvokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lcom/alipay/mobile/common/rpc/Config;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    return-object v0
.end method

.method public getRpcInvokeContext()Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->getInnerRpcInvokeContext()Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mRpcInvoker:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mClazz:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->buildRpcInvokeContext()Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isResetCoolie()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mResetCoolie:Z

    return v0
.end method

.method public setResetCoolie(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->mResetCoolie:Z

    .line 102
    return-void
.end method
