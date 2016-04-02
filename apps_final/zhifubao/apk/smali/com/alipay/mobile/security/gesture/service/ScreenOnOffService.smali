.class public Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# instance fields
.field a:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

.field b:Landroid/app/ActivityManager;

.field c:Landroid/content/BroadcastReceiver;

.field d:Landroid/app/Application;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    const-string/jumbo v0, "ScreenOnOffService"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ScreenOnOffService"

    const-string/jumbo v2, "ScreenOnOffService  is  onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->d:Landroid/app/Application;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->d:Landroid/app/Application;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->b:Landroid/app/ActivityManager;

    new-instance v0, Lcom/alipay/mobile/security/gesture/service/p;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/service/p;-><init>(Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->d:Landroid/app/Application;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->destroy(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->d:Landroid/app/Application;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/ScreenOnOffService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
