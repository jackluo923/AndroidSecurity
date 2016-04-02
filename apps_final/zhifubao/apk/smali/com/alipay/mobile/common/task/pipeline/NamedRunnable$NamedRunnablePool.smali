.class public final Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;
.super Lcom/alipay/mobile/common/task/pipeline/Pool;
.source "NamedRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/task/pipeline/Pool",
        "<",
        "Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/task/pipeline/Pool;-><init>(II)V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    return-void
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/common/task/pipeline/Pool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized free(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/task/pipeline/Pool;->free(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->free(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    return-void
.end method

.method public final declared-synchronized freeAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/task/pipeline/Pool;->freeAll(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final newObject()Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "call newObject(Runnable, String) method instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final newObject(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 2

    .prologue
    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NamedRunable_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    new-instance v1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    invoke-direct {v1, p1, v0, p3}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NamedRunable_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->newObject()Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v0

    return-object v0
.end method

.method public final obtain()Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "call obtain(Runnable, String) method instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized obtain(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
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

.method public final declared-synchronized obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const-string/jumbo v0, "AsyncTaskExecutor"

    const-string/jumbo v1, "NamedRunnablePool.obtain(): create a new NamedRunnable obj."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->newObject(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 58
    :goto_0
    monitor-exit p0

    return-object v0

    .line 52
    :cond_0
    :try_start_1
    const-string/jumbo v0, "AsyncTaskExecutor"

    const-string/jumbo v1, "NamedRunnablePool.obtain(): hit a cache NamedRunnable obj."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    .line 54
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->setTask(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->setThreadName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->setWeight(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain()Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v0

    return-object v0
.end method
