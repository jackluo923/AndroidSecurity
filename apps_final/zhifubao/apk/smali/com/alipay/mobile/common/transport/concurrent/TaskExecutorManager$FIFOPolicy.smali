.class final Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;
.super Ljava/lang/Object;
.source "TaskExecutorManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$1;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 281
    instance-of v1, v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v1, :cond_0

    .line 282
    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    .line 283
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Time out."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->fail(Ljava/lang/Throwable;)V

    .line 285
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 287
    :cond_1
    return-void
.end method
