.class public final Lcom/alipay/pushsdk/util/f;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/BlockingQueue;

.field private d:Ljava/lang/Runnable;

.field private final e:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/alipay/pushsdk/util/g;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/util/g;-><init>(Lcom/alipay/pushsdk/util/f;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/util/f;->e:Ljava/util/concurrent/ThreadFactory;

    .line 28
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/pushsdk/util/f;->c:Ljava/util/concurrent/BlockingQueue;

    .line 29
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->e:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/util/f;->b:Ljava/util/concurrent/ExecutorService;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/pushsdk/util/f;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/pushsdk/util/f;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/util/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/util/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/pushsdk/util/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/alipay/pushsdk/util/f;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/alipay/pushsdk/util/f;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/alipay/pushsdk/util/h;

    invoke-direct {v1, p0, p1}, Lcom/alipay/pushsdk/util/h;-><init>(Lcom/alipay/pushsdk/util/f;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/alipay/pushsdk/util/f;->a()V

    .line 51
    :cond_0
    return-void
.end method
