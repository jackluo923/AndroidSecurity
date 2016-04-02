.class Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;
.super Ljava/lang/Object;
.source "ShortLinkServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;

.field private final synthetic c:Landroid/os/Handler;

.field private final synthetic d:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;Ljava/lang/String;Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;Landroid/os/Handler;Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->b:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->d:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkReq;

    invoke-direct {v0}, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkReq;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkReq;->setOriginalUrl(Ljava/lang/String;)V

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->b:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkFacade;->createShortLink(Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkReq;)Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;

    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const-string/jumbo v1, "res is null"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->d:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->a:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;-><init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->c:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->d:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;->a:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
