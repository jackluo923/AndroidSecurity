.class public Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;
.super Ljava/lang/Object;


# static fields
.field protected static final CORE_POOL_SIZE:I

.field protected static final CPU_COUNT:I

.field public static INSTANCE:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor; = null

.field protected static final MAXIMUM_POOL_SIZE:I

.field public static final TAG:Ljava/lang/String; = "AsyncTaskExecutor"

.field private static final THREADFACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field final SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field final SERIAL_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

.field final TRANSACTION_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->CORE_POOL_SIZE:I

    sget v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->MAXIMUM_POOL_SIZE:I

    new-instance v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$1;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->THREADFACTORY:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;

    invoke-direct {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->INSTANCE:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->THREADFACTORY:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    const-string/jumbo v1, "SerialExecutor"

    iget-object v2, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    new-instance v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;

    const-string/jumbo v1, "TransactionExecutor"

    iget-object v2, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;-><init>(Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->TRANSACTION_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;

    sget v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->CORE_POOL_SIZE:I

    sget-object v1, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->THREADFACTORY:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v1, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->start()V

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->TRANSACTION_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;->start()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->INSTANCE:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;

    return-object v0
.end method


# virtual methods
.method public addTransaction(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->TRANSACTION_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;->addTask(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addTransaction(Ljava/lang/Runnable;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->TRANSACTION_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;->addTask(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    sget-object v1, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->addTask(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V

    return-void
.end method

.method public executeSerially(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    sget-object v1, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->addTask(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V

    return-void
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public removeTransaction(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->TRANSACTION_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;->doNext()V

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4, p5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

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

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

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

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->TRANSACTION_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor$TransactionPipeline;->stop()V

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SERIAL_EXECUTOR:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->stop()V

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->PARALLEL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    return-void
.end method
