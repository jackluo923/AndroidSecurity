.class public Lcom/alipay/mobile/framework/LauncherActivityAgent;
.super Ljava/lang/Object;
.source "LauncherActivityAgent.java"


# instance fields
.field protected mMicroApplicationContext:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachMicroApplicationContext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/framework/LauncherActivityAgent;->mMicroApplicationContext:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "LauncherActivityAgent"

    const-string/jumbo v1, "LauncherActivityAgent.onDestroy()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public postInit(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 35
    const-string/jumbo v0, "LauncherActivityAgent"

    const-string/jumbo v1, "LauncherActivityAgent.postInit() => startEntryApp()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherActivityAgent;->mMicroApplicationContext:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "startEntryApp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/alipay/mobile/framework/LauncherActivityAgent;->mMicroApplicationContext:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string/jumbo v1, "LauncherActivityAgent"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public preInit(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "LauncherActivityAgent"

    const-string/jumbo v1, "LauncherActivityAgent.preInit()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method
