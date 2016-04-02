.class public Lcom/alipay/mobile/base/poweroptimize/ClientStartedTask;
.super Ljava/lang/Object;
.source "ClientStartedTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final FRAMEWORK_PREFERENCES:Ljava/lang/String; = "framework_preferences"

.field static final KEY_STARTUP_RECORD:Ljava/lang/String; = "key_process_startup_record"

.field static final NFD_RECEIVER:Ljava/lang/String; = "com.alipay.android.phone.nfd.nfdservice.ui.app.NfdReceiver"

.field static final NFD_SERVICE:Ljava/lang/String; = "com.alipay.android.phone.nfd.nfdservice.ui.app.NfdService"

.field static final SYS_EVENT_CHANGE_TRIGGER:Ljava/lang/String; = "com.alipay.mobile.command.trigger.SysEventChangeTrigger"

.field static final TAG:Ljava/lang/String; = "PowerOptimize"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PowerOptimize"

    const-string/jumbo v3, "clint start up. enable the SysEventChangeTrigger, and clear startup records."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "com.alipay.mobile.command.trigger.SysEventChangeTrigger"

    invoke-static {v0, v1}, Landroid/util/ComponentUtils;->setComponentEnable(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PowerOptimize"

    const-string/jumbo v3, "clint start up. enable [com.alipay.android.phone.nfd.nfdservice.ui.app.NfdService] ,and [com.alipay.android.phone.nfd.nfdservice.ui.app.NfdReceiver"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.android.phone.nfd.nfdservice.ui.app.NfdService"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "com.alipay.android.phone.nfd.nfdservice.ui.app.NfdReceiver"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/ComponentUtils;->setComponentArrayEnable(Landroid/content/Context;[Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "framework_preferences"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "key_process_startup_record"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method
