.class final Lcom/alipay/mobile/rome/pushservice/adapter/service/a;
.super Ljava/lang/Object;
.source "PushSettingServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/service/a;->a:Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreate postDelayed ipp."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->TAG:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, "onCreate Runnable getMicroApplicationContext."

    .line 75
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/service/a;->a:Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    const-string/jumbo v1, "weibo"

    sget-object v2, Lorg/rome/android/ipp/IppFacade;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lorg/rome/android/ipp/IppFacade;

    .line 81
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 80
    invoke-direct {v1, v2}, Lorg/rome/android/ipp/IppFacade;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCreate call ipp performProtect."

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Lorg/rome/android/ipp/IppFacade;->performProtect()V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate call AgooWakeup wakeup."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/android/agoo/service/AgooWakeup;->wakeup(Landroid/content/Context;)V

    .line 88
    :cond_0
    const-string/jumbo v0, ""

    sput-object v0, Lorg/rome/android/ipp/IppFacade;->from:Ljava/lang/String;

    .line 90
    :cond_1
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
