.class public Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
.source "TaskScheduleServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;-><init>()V

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    .line 23
    return-void
.end method


# virtual methods
.method public addTransaction(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->addTransaction(Lcom/alipay/mobile/common/task/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->shutdown()V

    .line 64
    return-void
.end method

.method public parallelExecute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method public parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public removeTransaction(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->removeTransaction(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public serialExecute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method

.method public serialExecute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;->a:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 38
    return-void
.end method
