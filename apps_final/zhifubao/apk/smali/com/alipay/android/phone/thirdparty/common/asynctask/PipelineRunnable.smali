.class Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/thirdparty/common/utils/Pool$Poolable;
.implements Ljava/lang/Runnable;


# static fields
.field protected static final COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final TAG:Ljava/lang/String; = "AsyncTaskExecutor"

.field public static final TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;


# instance fields
.field protected final mID:Ljava/lang/String;

.field protected final mIndex:I

.field protected mPipeLine:Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;

.field protected mTask:Ljava/lang/Runnable;

.field protected mThreadName:Ljava/lang/String;

.field protected mWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;-><init>(II)V

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Transaction_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mID:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mWeight:I

    iput-object p1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mTask:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mWeight:I

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getPipeLine()Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;

    return-object v0
.end method

.method public final getTask()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getThreadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mWeight:I

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mTask:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mWeight:I

    iput-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;

    return-void
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v1, "AsyncTaskExecutor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;

    invoke-interface {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;->next()V

    :cond_2
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->free(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v4, "AsyncTaskExecutor"

    iget-object v5, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v1, "AsyncTaskExecutor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;

    invoke-interface {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;->next()V

    :cond_4
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "AsyncTaskExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;

    invoke-interface {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;->next()V

    :cond_6
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->free(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V

    throw v1
.end method

.method public setPipeLine(Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mPipeLine:Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;

    return-void
.end method

.method public final setTask(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mTask:Ljava/lang/Runnable;

    return-void
.end method

.method public final setThreadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mThreadName:Ljava/lang/String;

    return-void
.end method

.method public final setWeight(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->mWeight:I

    return-void
.end method
