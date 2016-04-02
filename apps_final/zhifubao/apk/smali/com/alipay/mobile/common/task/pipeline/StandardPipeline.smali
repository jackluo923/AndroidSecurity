.class public Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;
.super Ljava/lang/Object;
.source "StandardPipeline.java"

# interfaces
.implements Lcom/alipay/mobile/common/task/pipeline/PipeLine;


# static fields
.field static final TAG:Ljava/lang/String; = "StandardPipeline"


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field volatile mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

.field protected volatile mIsStart:Z

.field protected mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;",
            ">;"
        }
    .end annotation
.end field

.field final next:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;-><init>(Ljava/util/concurrent/Executor;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$1;-><init>(Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->next:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mIsStart:Z

    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a:Ljava/util/concurrent/Executor;

    .line 66
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    .line 141
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    if-eqz v0, :cond_2

    .line 143
    const-string/jumbo v0, "StandardPipeline"

    const-string/jumbo v1, "StandardPipeline.scheduleNext()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    :goto_1
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    .line 139
    const-string/jumbo v0, "StandardPipeline"

    const-string/jumbo v2, "mTasks is empty."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The StandardPipeline\'s Executor is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    const-string/jumbo v0, "StandardPipeline"

    const-string/jumbo v1, "StandardPipeline.scheduleNext(mTasks is empty)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a()V

    return-void
.end method


# virtual methods
.method public addTask(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 85
    const-string/jumbo v0, "StandardPipeline"

    const-string/jumbo v2, "StandardPipeline.addTask()"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The StandardPipeline has already stopped."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->next:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->setScheduleNext(Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    .line 90
    iget-object v3, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_4

    .line 94
    iget v4, p1, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    iget v0, v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    if-gt v4, v0, :cond_3

    .line 95
    add-int/lit8 v0, v2, 0x1

    .line 99
    :goto_1
    if-gez v0, :cond_1

    move v0, v1

    .line 101
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-boolean v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mIsStart:Z

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->doStart()V

    .line 107
    :cond_2
    return-void

    .line 93
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 102
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

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->addTask(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    .line 82
    return-void
.end method

.method protected doStart()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mActive:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string/jumbo v0, "StandardPipeline"

    const-string/jumbo v1, "StandardPipeline.start(a task is running, so don\'t call scheduleNext())"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a:Ljava/util/concurrent/Executor;

    .line 71
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "StandardPipeline"

    const-string/jumbo v1, "StandardPipeline.start()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "StandardPipeline start failed : The StandardPipeline\'s Execturo is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mIsStart:Z

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->doStart()V

    .line 117
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mIsStart:Z

    .line 160
    return-void
.end method
