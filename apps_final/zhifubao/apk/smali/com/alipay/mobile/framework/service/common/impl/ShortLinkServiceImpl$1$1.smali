.class Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;
.super Ljava/lang/Object;
.source "ShortLinkServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

.field private final synthetic b:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;

.field private final synthetic c:Ljava/lang/String;

.field final synthetic this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->a:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->b:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->c:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->a:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->a:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->b:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;->getResultStatus()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$1;->b:Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;

    invoke-virtual {v3}, Lcom/alipay/mobileapp/biz/rpc/shortlink/CreateShortLinkRes;->getShortUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;->onFinish(ZLjava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
