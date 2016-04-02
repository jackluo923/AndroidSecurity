.class final Lcom/alipay/mobile/quinox/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/f;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Sub process(:push) throw an UncaughtException"

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->shouldReportPushProcessException(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Sub process(:push) mainThread throw an UncaughtException"

    invoke-static {p2, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->shouldReportPushProcessOtherException(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Sub process(:push) otherThread throw an UncaughtException"

    invoke-static {p2, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    goto :goto_0
.end method
