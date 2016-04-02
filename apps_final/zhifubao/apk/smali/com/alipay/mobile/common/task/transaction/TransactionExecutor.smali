.class public Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"


# static fields
.field static final TAG:Ljava/lang/String; = "TransactionExecutor"


# instance fields
.field volatile mActive:Lcom/alipay/mobile/common/task/transaction/Transaction;

.field final mTransactions:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/alipay/mobile/common/task/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mTransactions:Ljava/util/ArrayDeque;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mTransactions:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mTransactions:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/task/transaction/Transaction;

    iput-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mActive:Lcom/alipay/mobile/common/task/transaction/Transaction;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mActive:Lcom/alipay/mobile/common/task/transaction/Transaction;

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mActive:Lcom/alipay/mobile/common/task/transaction/Transaction;

    if-eqz v1, :cond_0

    .line 80
    const-string/jumbo v1, "TransactionExecutor"

    const-string/jumbo v2, "TransactionExecutor.scheduleNext()"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/task/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lcom/alipay/mobile/common/task/transaction/Transaction;->run()V

    .line 85
    :goto_0
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 83
    :cond_0
    const-string/jumbo v0, "TransactionExecutor"

    const-string/jumbo v1, "TransactionExecutor.scheduleNext(mTransactions is empty)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addTransaction(Lcom/alipay/mobile/common/task/transaction/Transaction;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mTransactions:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mTransactions:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mActive:Lcom/alipay/mobile/common/task/transaction/Transaction;

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->a()V

    .line 43
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobile/common/task/transaction/Transaction;->id:Ljava/lang/String;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 41
    :cond_0
    const-string/jumbo v0, "TransactionExecutor"

    const-string/jumbo v1, "TransactionExecutor.execute(a transaction is running, so don\'t call scheduleNext())"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeTransaction(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mTransactions:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/task/transaction/Transaction;

    .line 53
    iget-object v2, v0, Lcom/alipay/mobile/common/task/transaction/Transaction;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mTransactions:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mTransactions:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mActive:Lcom/alipay/mobile/common/task/transaction/Transaction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mActive:Lcom/alipay/mobile/common/task/transaction/Transaction;

    iget-object v0, v0, Lcom/alipay/mobile/common/task/transaction/Transaction;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mActive:Lcom/alipay/mobile/common/task/transaction/Transaction;

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mActive:Lcom/alipay/mobile/common/task/transaction/Transaction;

    if-nez v0, :cond_3

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->a()V

    .line 68
    :goto_0
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 66
    :cond_3
    const-string/jumbo v0, "TransactionExecutor"

    const-string/jumbo v1, "TransactionExecutor.execute(a transaction is running, so don\'t call scheduleNext())"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/task/transaction/TransactionExecutor;->mTransactions:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 92
    return-void
.end method
