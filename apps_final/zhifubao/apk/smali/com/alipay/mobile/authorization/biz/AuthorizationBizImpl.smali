.class public Lcom/alipay/mobile/authorization/biz/AuthorizationBizImpl;
.super Ljava/lang/Object;
.source "AuthorizationBizImpl.java"

# interfaces
.implements Lcom/alipay/mobile/authorization/biz/AuthorizationBiz;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/RpcService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 15
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 14
    iput-object v0, p0, Lcom/alipay/mobile/authorization/biz/AuthorizationBizImpl;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/authorization/biz/AuthorizationBizImpl;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 21
    const-class v1, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;

    .line 20
    invoke-interface {v0, p1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;->authSign(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;

    move-result-object v0

    return-object v0
.end method
