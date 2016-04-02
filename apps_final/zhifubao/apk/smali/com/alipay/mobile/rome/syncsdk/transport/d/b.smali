.class public Lcom/alipay/mobile/rome/syncsdk/transport/d/b;
.super Ljava/lang/Object;
.source "PacketListenerImplADispatch.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/transport/d/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 7

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 39
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/e;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/e;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v1, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v2, Lcom/alipay/mobile/rome/syncsdk/transport/d/g;

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/transport/d/g;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v3, Lcom/alipay/mobile/rome/syncsdk/transport/d/h;

    iget-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v3, v4}, Lcom/alipay/mobile/rome/syncsdk/transport/d/h;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v4, Lcom/alipay/mobile/rome/syncsdk/transport/d/i;

    iget-object v5, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v4, v5}, Lcom/alipay/mobile/rome/syncsdk/transport/d/i;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    new-instance v5, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;

    iget-object v6, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v5, v6}, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    iget-object v6, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v6, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "submit:[ task="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "submit:[ newSingleThreadExecutor restart]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/transport/d/c;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/d/b;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->d:Ljava/util/concurrent/ExecutorService;

    .line 150
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setLastRecvPacketTime(J)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    return-void

    .line 82
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

    .line 83
    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/a;->b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v2, Lcom/alipay/mobile/rome/syncsdk/transport/d/d;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/d;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/d/b;Lcom/alipay/mobile/rome/syncsdk/transport/d/a;Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V

    invoke-direct {p0, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z
    .locals 1

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
