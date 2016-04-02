.class final Lcom/alipay/android/app/statistic/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->f()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->c()V

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->g()V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/FileUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
