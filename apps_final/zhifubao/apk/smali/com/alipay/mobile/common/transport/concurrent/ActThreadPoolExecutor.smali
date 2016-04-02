.class public Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ActThreadPoolExecutor.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field protected mPauseCondition:Ljava/util/concurrent/locks/Condition;

.field protected mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mPaused:Z


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    .line 34
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    .line 48
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    .line 41
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    .line 57
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 95
    instance-of v0, p1, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 96
    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    .line 97
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->setTaskState(I)V

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 63
    :try_start_0
    instance-of v1, p2, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v1, :cond_0

    .line 64
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    move-object v1, v0

    .line 65
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpTask;->setTaskState(I)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    instance-of v1, p2, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "ActThreadPoolExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "beforeExecute.await: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 71
    :cond_2
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    :goto_1
    instance-of v1, p2, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v1, :cond_3

    check-cast p2, Lcom/alipay/mobile/common/transport/http/HttpTask;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "ActThreadPoolExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "beforeExecute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_3
    :goto_2
    return-void

    .line 68
    :cond_4
    :try_start_1
    const-string/jumbo v2, "ActThreadPoolExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "beforeExecute.await: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    :try_start_2
    const-string/jumbo v2, "ActThreadPoolExecutor"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 78
    :cond_5
    const-string/jumbo v1, "ActThreadPoolExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "beforeExecute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getTaskType()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->b:I

    return v0
.end method

.method public getTaskTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 105
    :try_start_0
    const-string/jumbo v0, "ActThreadPoolExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mTaskTypeName\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 115
    :try_start_0
    const-string/jumbo v0, "ActThreadPoolExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mTaskTypeName\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",resume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPaused:Z

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->mPauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setTaskType(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->b:I

    .line 137
    return-void
.end method

.method public setTaskTypeName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->a:Ljava/lang/String;

    .line 129
    return-void
.end method
