.class final Lcom/alipay/android/app/base/pay/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    invoke-static {}, Lcom/alipay/android/app/base/pay/PayEntrance;->a()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :try_start_0
    const-string/jumbo v0, "cs"

    const-string/jumbo v1, "0000000"

    invoke-static {v0, v1, p2}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->x()V

    :goto_0
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->l()V

    invoke-static {}, Lcom/alipay/android/app/base/pay/PayEntrance;->a()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/base/pay/PayEntrance;->a()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->x()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->x()V

    throw v0
.end method
