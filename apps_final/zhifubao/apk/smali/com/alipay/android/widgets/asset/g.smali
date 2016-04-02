.class final Lcom/alipay/android/widgets/asset/g;
.super Ljava/lang/Object;
.source "AssetWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;Lcom/alipay/mobile/framework/service/ext/security/AuthService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/g;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/g;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/g;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "20000002"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/g;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000004"

    .line 260
    const-string/jumbo v3, "20000001"

    .line 259
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AssetWidgetGroup"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
