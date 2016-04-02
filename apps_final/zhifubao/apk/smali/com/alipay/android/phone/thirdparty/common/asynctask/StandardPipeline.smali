.class public Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;


# static fields
.field static final TAG:Ljava/lang/String; = "StandardPipeline"


# instance fields
.field volatile mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field protected volatile mIsStart:Z

.field private final mName:Ljava/lang/String;

.field protected mTasks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mIsStart:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "StandardPipeline"

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    return-void

    :cond_1
    iput-object p1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method addTask(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The StandardPipeline has already stopped."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->setPipeLine(Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;)V

    iget-object v3, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p1}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->getWeight()I

    move-result v4

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->getWeight()I

    move-result v0

    if-gt v4, v0, :cond_3

    add-int/lit8 v0, v2, 0x1

    :goto_1
    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mIsStart:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->doStart()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-void
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->addTask(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V

    return-void
.end method

.method protected doStart()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->next()V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public next()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The StandardPipeline\'s Executor is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "StandardPipeline start failed : The StandardPipeline\'s Execturo is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mIsStart:Z

    invoke-virtual {p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->doStart()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mIsStart:Z

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    return-void
.end method
