.class final Lcom/alipay/mobile/common/logging/b;
.super Ljava/lang/Thread;
.source "LogContextImpl.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/LogContextImpl;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;B)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/b;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AppendWorker take:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/b;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 75
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 76
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/b;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 75
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 76
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/b;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 77
    :cond_0
    throw v1

    .line 78
    :cond_1
    return-void
.end method
