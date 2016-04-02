.class public Lcom/ali/user/mobile/rsa/AliuserRSAHandler;
.super Ljava/lang/Object;
.source "AliuserRSAHandler.java"

# interfaces
.implements Lcom/ali/user/mobile/rsa/RSAHandler;


# instance fields
.field private a:Lcom/alipay/aliusergw/biz/shared/facade/RSAService;

.field private b:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ali/user/mobile/rpc/RpcManager;->getRpcFactory2(Landroid/content/Context;Z)Lcom/ali/user/mobile/rpc/IRpcFactory;

    move-result-object v0

    const-class v1, Lcom/alipay/aliusergw/biz/shared/facade/RSAService;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/rpc/IRpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/RSAService;

    iput-object v0, p0, Lcom/ali/user/mobile/rsa/AliuserRSAHandler;->a:Lcom/alipay/aliusergw/biz/shared/facade/RSAService;

    .line 17
    return-void
.end method


# virtual methods
.method public getRSAKey()Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;
    .locals 2

    .prologue
    .line 21
    const-string/jumbo v0, "AliuserRSAHandler"

    const-string/jumbo v1, "getRSAKey"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/ali/user/mobile/rsa/AliuserRSAHandler;->b:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/ali/user/mobile/rsa/AliuserRSAHandler;->b:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    .line 25
    :goto_0
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/rsa/AliuserRSAHandler;->a:Lcom/alipay/aliusergw/biz/shared/facade/RSAService;

    invoke-interface {v0}, Lcom/alipay/aliusergw/biz/shared/facade/RSAService;->getRSAKey()Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/rsa/AliuserRSAHandler;->b:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    .line 25
    iget-object v0, p0, Lcom/ali/user/mobile/rsa/AliuserRSAHandler;->b:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    goto :goto_0
.end method
