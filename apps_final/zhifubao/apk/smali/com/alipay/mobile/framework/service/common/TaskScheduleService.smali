.class public abstract Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "TaskScheduleService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract addTransaction(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;)Ljava/lang/String;
.end method

.method public abstract parallelExecute(Ljava/lang/Runnable;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V
.end method

.method public abstract removeTransaction(Ljava/lang/String;)V
.end method

.method public abstract schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
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
.end method

.method public abstract scheduleAtFixedRate(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
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
.end method

.method public abstract scheduleWithFixedDelay(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
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
.end method

.method public abstract serialExecute(Ljava/lang/Runnable;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract serialExecute(Ljava/lang/Runnable;Ljava/lang/String;)V
.end method
