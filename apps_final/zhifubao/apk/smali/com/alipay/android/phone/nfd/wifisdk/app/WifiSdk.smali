.class public Lcom/alipay/android/phone/nfd/wifisdk/app/WifiSdk;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiSdk"


# instance fields
.field private startParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WifiSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate startParams: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WifiSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate startParams.wifiParams: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "wifiParams"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/wifisdk/app/WifiSdk;->startParams:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WifiSdk"

    const-string/jumbo v2, "onDestroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->getInstance()Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->onDestroy()V

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WifiSdk"

    const-string/jumbo v2, "onRestart"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/wifisdk/app/WifiSdk;->startParams:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/app/WifiSdk;->onStart()V

    return-void
.end method

.method protected onStart()V
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WifiSdk"

    const-string/jumbo v2, "onStart"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->getInstance()Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->setDefaultUncaughtExceptionHandler()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "WifiSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "MicroApplicationContext: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/app/WifiSdk;->startParams:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "20000112"

    const-string/jumbo v2, "20000126"

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/wifisdk/app/WifiSdk;->startParams:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "WifiSdk"

    const-string/jumbo v3, "startApp exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WifiSdk"

    const-string/jumbo v2, "onStop"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->getInstance()Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->unsetDefaultUncaughtExceptionHandler()V

    return-void
.end method
