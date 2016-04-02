.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Ljava/lang/String;

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 980
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp(Z[Ljava/lang/String;)Z

    move-result v0

    .line 981
    if-eqz v0, :cond_0

    .line 983
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstalledPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 985
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 984
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->addExternalBundle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "App--"

    .line 988
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
