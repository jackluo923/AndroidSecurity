.class public Lcom/alipay/asset/common/rpc/RsaEncryptRpc;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "RsaEncryptRpc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/asset/common/rpc/RsaEncryptRpc$RsaEncryptListener;


# direct methods
.method public constructor <init>(Lcom/alipay/asset/common/rpc/RsaEncryptRpc$RsaEncryptListener;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/rpc/RsaEncryptRpc;->setShowNetworkErrorView(Z)V

    .line 21
    iput-object p1, p0, Lcom/alipay/asset/common/rpc/RsaEncryptRpc;->a:Lcom/alipay/asset/common/rpc/RsaEncryptRpc$RsaEncryptListener;

    .line 22
    return-void
.end method


# virtual methods
.method public bridge varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/asset/common/rpc/RsaEncryptRpc;->excute([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs excute([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 26
    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/String;

    .line 27
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {p0, v1}, Lcom/alipay/asset/common/rpc/RsaEncryptRpc;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    .line 29
    const/4 v2, 0x0

    .line 30
    aget-object v3, p1, v5

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    invoke-virtual {v1, v0, v5}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public bridge varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/asset/common/rpc/RsaEncryptRpc;->onRpcFinish(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onRpcFinish(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/asset/common/rpc/RsaEncryptRpc;->a:Lcom/alipay/asset/common/rpc/RsaEncryptRpc$RsaEncryptListener;

    invoke-interface {v0, p1}, Lcom/alipay/asset/common/rpc/RsaEncryptRpc$RsaEncryptListener;->onSuccess(Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/asset/common/rpc/RsaEncryptRpc;->a:Lcom/alipay/asset/common/rpc/RsaEncryptRpc$RsaEncryptListener;

    invoke-interface {v0}, Lcom/alipay/asset/common/rpc/RsaEncryptRpc$RsaEncryptListener;->onFail()V

    goto :goto_0
.end method
