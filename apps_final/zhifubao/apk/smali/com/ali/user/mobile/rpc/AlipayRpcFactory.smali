.class public Lcom/ali/user/mobile/rpc/AlipayRpcFactory;
.super Ljava/lang/Object;
.source "AlipayRpcFactory.java"

# interfaces
.implements Lcom/ali/user/mobile/rpc/IRpcFactory;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/common/rpc/RpcFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string/jumbo p2, "https://mobilegw.alipay.com/mgw.htm"

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->a:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcFactory;

    new-instance v1, Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;-><init>(Lcom/ali/user/mobile/rpc/AlipayRpcFactory;)V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 62
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/rpc/AlipayRpcFactory;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
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
    .line 72
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

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
    .line 67
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public prepareResetCookie(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->prepareResetCookie(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
