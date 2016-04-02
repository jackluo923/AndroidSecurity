.class final Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;
.super Lcom/alipay/android/phone/thirdparty/common/utils/Pool;


# instance fields
.field private final mIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;-><init>(II)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized free(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->free(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->free(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V

    return-void
.end method

.method public final declared-synchronized freeAll(Ljava/util/List;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/android/phone/thirdparty/common/utils/Pool;->freeAll(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final newObject()Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "call newObject(Runnable, String) method instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final newObject(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PipeLineRunnable_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    invoke-direct {v1, p1, v0, p3}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v1
.end method

.method protected final bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->newObject()Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    move-result-object v0

    return-object v0
.end method

.method public final obtain()Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "call obtain(Runnable, String) method instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->newObject(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->setTask(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->setThreadName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->setWeight(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic obtain()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->obtain()Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    move-result-object v0

    return-object v0
.end method
