.class public Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "LongLinkScreenOffService.java"


# static fields
.field private static volatile c:Z


# instance fields
.field private volatile a:Landroid/content/BroadcastReceiver;

.field private volatile b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->c:Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->a:Landroid/content/BroadcastReceiver;

    .line 20
    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 26
    sput-boolean p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->c:Z

    return-void
.end method

.method public static isScreenOn()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->c:Z

    return v0
.end method

.method public static setScreenOn(Z)V
    .locals 0

    .prologue
    .line 109
    sput-boolean p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->c:Z

    .line 110
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 32
    const-string/jumbo v0, "sync_service_LongLinkScreenOffService"

    const-string/jumbo v1, "onCreate: [ LongLinkScreenOffService ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->b:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService$1;-><init>(Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->a:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "sync_service_LongLinkScreenOffService"

    const-string/jumbo v1, "onDestroy: [ LongLinkScreenOffService ]  "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->destroy(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    :cond_0
    return-void
.end method
