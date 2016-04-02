.class final Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;
.super Ljava/lang/Object;
.source "InnerApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->b:Landroid/os/Bundle;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->installApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getInstalledPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->addExternalBundle(Ljava/lang/String;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->b:Landroid/os/Bundle;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 292
    const-string/jumbo v1, "20000001"

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
