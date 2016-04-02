.class Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;
.super Ljava/lang/Object;
.source "SchemeServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Landroid/net/Uri;

.field private final synthetic h:Landroid/net/Uri;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->g:Landroid/net/Uri;

    iput-object p9, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->h:Landroid/net/Uri;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$7(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 304
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 305
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$8(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-result-object v7

    .line 306
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-static {v1, v7}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$9(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Lcom/alipay/mobile/framework/app/ui/BaseActivity;)V

    .line 308
    const-class v1, Lcom/alipay/mobileapp/biz/rpc/sign/facade/MobileAppSignServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/sign/facade/MobileAppSignServiceFacade;

    .line 309
    const/4 v6, 0x0

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->d:Ljava/lang/String;

    const-string/jumbo v5, "GBK"

    .line 311
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobileapp/biz/rpc/sign/facade/MobileAppSignServiceFacade;->isValidSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/common/integration/sign/resp/MobileAppSignRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-static {v1, v7}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$10(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Lcom/alipay/mobile/framework/app/ui/BaseActivity;)V

    .line 318
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/alipay/mobileapp/common/integration/sign/resp/MobileAppSignRes;->resultStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 321
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$7(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    const-string/jumbo v0, "touchpal"

    iget-object v5, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->g:Landroid/net/Uri;

    :goto_1
    invoke-static {v4, v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$6(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    :goto_2
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->d:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$7(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->printStackTrace()V

    move-object v0, v6

    goto :goto_0

    .line 322
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->h:Landroid/net/Uri;
    :try_end_2
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 323
    :catch_1
    move-exception v0

    .line 324
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SchemeService"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$7(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Ljava/lang/String;

    goto :goto_2
.end method
