.class final Lcom/alipay/android/phone/home/manager/k;
.super Ljava/lang/Object;
.source "HomeAppsOnItemClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/k;->a:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/k;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 257
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    const-string/jumbo v1, "TARGET"

    const-string/jumbo v2, "DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "APP_ID"

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/k;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v1, "ACTION"

    const-string/jumbo v2, "UPGRADE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/k;->a:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    invoke-static {v1}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000002"

    .line 262
    const-string/jumbo v3, "10000111"

    .line 261
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
