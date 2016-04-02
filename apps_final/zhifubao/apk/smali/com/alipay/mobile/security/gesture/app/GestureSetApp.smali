.class public Lcom/alipay/mobile/security/gesture/app/GestureSetApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Bundle;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    const-string/jumbo v0, "GestureSetApp"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/app/GestureSetApp;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/app/GestureSetApp;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/app/GestureSetApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/app/GestureSetApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/app/GestureSetApp;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/app/GestureSetApp;->onStart()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/app/GestureSetApp;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/app/GestureSetApp;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/app/GestureSetApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureSetApp"

    const-string/jumbo v2, "\u542f\u52a8GesturePasswordSetActivity_\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
