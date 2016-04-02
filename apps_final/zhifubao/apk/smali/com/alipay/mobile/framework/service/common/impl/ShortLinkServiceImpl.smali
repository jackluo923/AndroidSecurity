.class public Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/ShortLinkService;
.source "ShortLinkServiceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/ShortLinkService;-><init>()V

    return-void
.end method


# virtual methods
.method public CreateShortLink(Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;)V
    .locals 6

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 19
    const-class v1, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;

    .line 20
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 22
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;Ljava/lang/String;Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;Landroid/os/Handler;Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
