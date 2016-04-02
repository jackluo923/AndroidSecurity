.class Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;
.super Ljava/lang/Object;
.source "ShortLinkServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

.field private final synthetic b:Ljava/lang/String;

.field final synthetic this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;->this$1:Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;->a:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;->b:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;->a:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;->a:Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl$1$2;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/common/ShortLinkService$OnShortLinkCreated;->onFinish(ZLjava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method
