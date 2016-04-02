.class Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;
.super Ljava/lang/Object;
.source "SchemeServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;


# instance fields
.field private final synthetic a:Landroid/net/Uri;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->a:Landroid/net/Uri;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getParamsUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getParamsTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 216
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v0, "defaultTitle"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$0(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Z)V

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v3, "20000067"

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 223
    :cond_0
    return-void
.end method
