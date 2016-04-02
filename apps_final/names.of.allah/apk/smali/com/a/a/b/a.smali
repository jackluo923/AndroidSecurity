.class public final Lcom/a/a/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(IILcom/a/a/b/a/k;)Ljava/util/concurrent/Executor;
    .locals 8

    sget-object v0, Lcom/a/a/b/a/k;->b:Lcom/a/a/b/a/k;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v6, Lcom/a/a/b/a/a/c;

    invoke-direct {v6}, Lcom/a/a/b/a/a/c;-><init>()V

    :goto_1
    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/a/a/b/b;

    invoke-direct {v7, p1}, Lcom/a/a/b/b;-><init>(I)V

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_1
.end method
