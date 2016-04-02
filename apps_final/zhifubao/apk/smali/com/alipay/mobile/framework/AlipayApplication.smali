.class public Lcom/alipay/mobile/framework/AlipayApplication;
.super Lcom/alipay/mobile/framework/LauncherApplicationAgent;
.source "AlipayApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/AlipayApplication;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/AlipayApplication;

    return-object v0
.end method

.method public static bridge synthetic getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onLowMemory()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->onLowMemory()V

    .line 85
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 86
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->onTerminate()V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/framework/AlipayApplication;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearState()V

    .line 80
    return-void
.end method

.method public postInit()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->postInit()V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->setProductId(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->setProductVersion(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getReleaseType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->setReleaseType(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->setChannelId(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->setClientId(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setDeviceId(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public preInit()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->preInit()V

    .line 29
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 38
    invoke-static {v0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    .line 43
    invoke-static {}, Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;->getInstance()Lcom/alipay/mobile/framework/exception/AlipayExceptionHandlerAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/AlipayApplication;->setExceptionHandlerAgent(Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)V

    .line 44
    return-void
.end method

.method public recover()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->recover()V

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->recoverProductVersion()V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->setProductVersion(Ljava/lang/String;)V

    .line 74
    return-void
.end method
