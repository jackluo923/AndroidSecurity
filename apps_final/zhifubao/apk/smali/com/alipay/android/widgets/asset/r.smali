.class final Lcom/alipay/android/widgets/asset/r;
.super Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;
.source "WealthHomeBroadcastReceiver.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/r;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    .line 432
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 437
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "register"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string/jumbo v1, "isIntroEnabled"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string/jumbo v1, "transaction_id"

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/r;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 444
    const-string/jumbo v2, "20000008"

    .line 445
    const-string/jumbo v3, "09999983"

    .line 444
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 446
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/LogAgentUtil;->b()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/r;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a()Ljava/lang/String;

    move-result-object v2

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u542f\u52a8\u5230\u4f59\u989d\u5b9dapp\u5f02\u5e38:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
