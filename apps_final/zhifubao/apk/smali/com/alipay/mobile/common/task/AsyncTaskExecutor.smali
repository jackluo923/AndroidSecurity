.class public Lcom/alipay/mobile/common/task/AsyncTaskExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"


# static fields
.field public static INSTANCE:Lcom/alipay/mobile/common/task/AsyncTaskExecutor; = null

.field public static final TAG:Ljava/lang/String; = "AsyncTaskExecutor"

.field private static final a:I

.field private static final b:I

.field private static final c:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field final SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field final SERIAL_EXECUTOR:Lcom/alipay/mobile/common/task/SerialExecutor;

.field final TRANSACTION_EXECUTOR:Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 35
    sput v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->b:I

    .line 41
    new-instance v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->c:Ljava/util/concurrent/ThreadFactory;

    .line 83
    new-instance v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->INSTANCE:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->TRANSACTION_EXECUTOR:Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

    .line 66
    sget-object v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 72
    new-instance v0, Lcom/alipay/mobile/common/task/SerialExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/task/SerialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SERIAL_EXECUTOR:Lcom/alipay/mobile/common/task/SerialExecutor;

    .line 77
    sget v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->b:I

    sget-object v1, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v1, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 95
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->INSTANCE:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    return-object v0
.end method


# virtual methods
.method public addTransaction(Lcom/alipay/mobile/common/task/transaction/Transaction;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->TRANSACTION_EXECUTOR:Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->addTransaction(Lcom/alipay/mobile/common/task/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public execute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    const-string/jumbo v0, "AsyncTaskExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AsyncTaskExecutor.execute(Runnable, threadName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public executeSerially(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 122
    const-string/jumbo v0, "AsyncTaskExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AsyncTaskExecutor.executeSerially(Runnable, threadName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SERIAL_EXECUTOR:Lcom/alipay/mobile/common/task/SerialExecutor;

    sget-object v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/task/SerialExecutor;->execute(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    .line 124
    return-void
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public removeTransaction(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->TRANSACTION_EXECUTOR:Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->removeTransaction(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 150
    const-string/jumbo v2, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
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
    .line 154
    const-string/jumbo v0, "AsyncTaskExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AsyncTaskExecutor.schedule(Runnable, threadName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    const-string/jumbo v0, "AsyncTaskExecutor"

    const-string/jumbo v1, "AsyncTaskExecutor.scheduleAtFixedRate(Runnable)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->TRANSACTION_EXECUTOR:Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->shutdown()V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SERIAL_EXECUTOR:Lcom/alipay/mobile/common/task/SerialExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/task/SerialExecutor;->shutdown()V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 172
    return-void
.end method
