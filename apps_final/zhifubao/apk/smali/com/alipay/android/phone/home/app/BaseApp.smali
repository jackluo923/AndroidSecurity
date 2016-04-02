.class public Lcom/alipay/android/phone/home/app/BaseApp;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.source "BaseApp.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/alipay/android/phone/home/app/BaseApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/app/BaseApp;->a:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;-><init>()V

    return-void
.end method


# virtual methods
.method public autoUpgradeApp()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public downloadApp()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/app/BaseApp;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u672c\u5730\u5e94\u7528\uff0c\u5df2\u7ecf\u5185\u7f6e\uff0c\u65e0\u9700\u4e0b\u8f7d"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public getInstalledPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs installApp(Z[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public varargs installApp([Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/app/BaseApp;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u672c\u5730\u5e94\u7528\uff0c\u5df2\u7ecf\u5185\u7f6e\uff0c\u65e0\u9700\u5b89\u88c5"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public isAlipayApp()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public isDisplay()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isInstallBySystem()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedAuth()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedUpgrade()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isOffline()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public preInstallApp()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public uninstallApp()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/app/BaseApp;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u672c\u5730\u5e94\u7528\uff0c\u65e0\u6cd5\u5378\u8f7d"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
