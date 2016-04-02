.class public Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
.super Ljava/lang/Object;
.source "NetThreadPoolExeFactory.java"


# instance fields
.field corePoolSize:I

.field handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field keepAliveTime:J

.field maximumPoolSize:I

.field netType:Ljava/lang/String;

.field threadFactory:Ljava/util/concurrent/ThreadFactory;

.field timeunit:Ljava/util/concurrent/TimeUnit;

.field workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 308
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->timeunit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ThreadPoolConfig{netType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", corePoolSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maximumPoolSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keepAliveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s , workQueueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", threadFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, " is null "

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "is null"

    goto :goto_2
.end method
