.class public Lcom/alipay/mobile/common/logging/LogContextImpl;
.super Ljava/lang/Object;
.source "LogContextImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/LogContext;


# instance fields
.field final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alipay/mobile/common/logging/api/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/mobile/common/logging/ContextInfo;

.field private g:Lcom/alipay/mobile/common/logging/b;

.field private h:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

.field private i:Lcom/alipay/mobile/common/logging/c;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Ljava/lang/InheritableThreadLocal;

    .line 46
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/util/concurrent/BlockingQueue;

    .line 55
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Ljava/lang/ThreadLocal;

    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alibaba/motu/CrashCombineUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/motu/CrashFilterUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/motu/ImpHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/motu/NativeCrashHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/motu/NativeExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/EventCategory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Landroid/content/Context;)V

    .line 94
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Landroid/content/Context;)V

    .line 95
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V

    .line 101
    new-instance v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    .line 102
    new-instance v0, Lcom/alipay/mobile/common/logging/c;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/logging/c;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->i:Lcom/alipay/mobile/common/logging/c;

    .line 103
    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 269
    if-eqz p1, :cond_0

    .line 270
    monitor-enter p1

    .line 271
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 272
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 276
    return-object v0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private static a(Ljava/lang/Integer;)Z
    .locals 2

    .prologue
    .line 286
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/appender/AppenderManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    return-object v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 576
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 579
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyUpload:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 582
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "upload"

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :cond_1
    monitor-exit p0

    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/c;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->i:Lcom/alipay/mobile/common/logging/c;

    return-object v0
.end method

.method private c()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 281
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 282
    return-object v0
.end method

.method private declared-synchronized d()Lcom/alipay/mobile/common/logging/b;
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Lcom/alipay/mobile/common/logging/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/common/logging/ContextInfo;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized a(Lcom/alipay/mobile/common/logging/b;)V
    .locals 1

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Lcom/alipay/mobile/common/logging/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 3

    .prologue
    .line 296
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->OFF:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->isGreaterOrEqual(Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->d()Lcom/alipay/mobile/common/logging/b;

    move-result-object v0

    if-nez v0, :cond_3

    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->d()Lcom/alipay/mobile/common/logging/b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 307
    new-instance v0, Lcom/alipay/mobile/common/logging/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/logging/b;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;B)V

    .line 308
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/b;->setDaemon(Z)V

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/b;->setName(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/b;->start()V

    .line 312
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/b;)V

    .line 314
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 319
    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "add log event to queue fail"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AppendWorker add:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lcom/alipay/mobile/common/logging/appender/AppenderManager;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    return-object v0
.end method

.method public flush(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "flush"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, v2, v4, v3, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "flush"

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, v1, v4, v2, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0
.end method

.method public flush(Z)V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->flush(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 160
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReleaseCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyClientEvent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    const-string/jumbo v0, "viewSwitch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    check-cast p2, Ljava/lang/String;

    .line 448
    if-eqz p2, :cond_0

    const-string/jumbo v0, "viewID"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    const-string/jumbo v0, "refViewID"

    const-string/jumbo v1, "viewID"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string/jumbo v0, "viewID"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string/jumbo v0, "pageSerial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/ContextInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    const-string/jumbo v0, "subappStart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    check-cast p2, Ljava/lang/String;

    .line 458
    const-string/jumbo v0, "appID"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 461
    const-string/jumbo v1, "startApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 463
    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "alivereport"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    const-string/jumbo v5, "event"

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0

    .line 471
    :cond_2
    const-string/jumbo v0, "subappResume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    check-cast p2, Ljava/lang/String;

    .line 473
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "appID"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    const-string/jumbo v0, "appID"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_3
    const-string/jumbo v0, "gotoForeground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 481
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "refreshSession"

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 484
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    const-string/jumbo v1, "timeout"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b(Ljava/lang/String;)V

    .line 487
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 488
    const-string/jumbo v1, "reportActive"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 489
    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "alivereport"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    const-string/jumbo v5, "event"

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 496
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 500
    :cond_4
    const-string/jumbo v0, "gotoBackground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 502
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->flush(Z)V

    .line 505
    const-string/jumbo v0, "dev"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "test"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 506
    :cond_5
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/common/logging/LogContextImpl;->upload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :cond_6
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    :cond_7
    const-string/jumbo v0, "clientLaunch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 516
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "refreshSession"

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 519
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    const-string/jumbo v1, "boot"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b(Ljava/lang/String;)V

    .line 522
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 523
    const-string/jumbo v1, "reportActive"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 524
    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "alivereport"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    const-string/jumbo v5, "event"

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 531
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 535
    :cond_8
    const-string/jumbo v0, "clientQuit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 537
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->flush(Z)V

    .line 540
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    :cond_9
    const-string/jumbo v0, "userLogin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    check-cast p2, Ljava/lang/String;

    .line 546
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/ContextInfo;->i(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 551
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b(Ljava/lang/String;)V

    .line 555
    :cond_a
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 556
    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 559
    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "alivereport"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    const-string/jumbo v5, "event"

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 566
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public putContextParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "putContextParam:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    return-void
.end method

.method public putLocalParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "putLocalParam:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 146
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 148
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    .line 149
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 150
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeContextParam(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method

.method public removeLocalParam(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 171
    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 176
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 178
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->f(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->g(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->d(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->e(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public setReleaseCode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->c(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public setReleaseType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->b(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->h(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->i(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
    .locals 1

    .prologue
    .line 436
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b()V

    .line 437
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;)V

    .line 438
    return-void
.end method

.method public takedownExceptionHandler()V
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c()V

    .line 432
    return-void
.end method

.method public traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "traceNativeCrash, filePath:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isBoot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 594
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.mobile.logmonitor.ClientMonitorWakeupReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".monitor.command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string/jumbo v1, "action"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".monitor.action.TRACE_NATIVE_CRASH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    const-string/jumbo v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string/jumbo v1, "callStack"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string/jumbo v1, "isBoot"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 600
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    if-eqz p3, :cond_3

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/motu/CrashCombineUtils;->getLatestTombAndDelOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 613
    :goto_1
    if-eqz p3, :cond_2

    if-eqz v0, :cond_0

    .line 617
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alibaba/motu/CrashFilterUtils;->isFilterCrash(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 618
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v3, "crash"

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v6, Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    sget-object v7, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->getDes()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 631
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->flush(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 609
    :cond_3
    :try_start_1
    invoke-static {p1, p2}, Lcom/alibaba/motu/CrashCombineUtils;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-static {p1}, Lcom/alibaba/motu/CrashCombineUtils;->deleteFileByPath(Ljava/lang/String;)V

    goto :goto_1

    .line 624
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v3, "crash"

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v6, Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    const-string/jumbo v7, "MonitorPoint_Crash"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public updateLogStrategyCfg(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->c(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public upload(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".monitor.action.upload.mdaplog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v1, "logCategory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 235
    :goto_0
    if-nez v0, :cond_0

    .line 237
    const-string/jumbo v1, "start service to upload fail"

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 239
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/common/logging/a;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/common/logging/a;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")start upload service, isSucecess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 257
    :goto_1
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :cond_2
    if-nez p1, :cond_3

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->i:Lcom/alipay/mobile/common/logging/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/c;->a()V

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->i:Lcom/alipay/mobile/common/logging/c;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/c;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
