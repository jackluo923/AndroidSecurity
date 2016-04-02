.class Lcom/alipay/mobile/common/task/SerialExecutor;
.super Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;
.source "SerialExecutor.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SerialExecutor"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;-><init>(Ljava/util/concurrent/Executor;)V

    .line 26
    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "SerialExecutor"

    const-string/jumbo v1, "SerialExecutor.execute()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/task/SerialExecutor;->addTask(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/SerialExecutor;->start()V

    .line 37
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/SerialExecutor;->stop()V

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/task/SerialExecutor;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/task/SerialExecutor;->mTasks:Ljava/util/ArrayList;

    .line 46
    return-void
.end method
