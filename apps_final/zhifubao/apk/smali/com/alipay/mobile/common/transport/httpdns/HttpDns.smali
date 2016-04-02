.class public Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
.super Ljava/lang/Object;
.source "HttpDns.java"


# static fields
.field public static final REQ_STATUS_BUSY:I = 0x1

.field public static final REQ_STATUS_IDLE:I


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final corePoolSize:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

.field public fail:Z

.field private g:I

.field private h:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

.field public hashost:Z

.field public final httpdns_LR:Ljava/lang/String;

.field public httpdns_domain:Ljava/lang/String;

.field public httpdns_ip:[Ljava/lang/String;

.field public httpdns_port:I

.field public httpdnsconntimeout:I

.field public httpdnstimeout:I

.field private i:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

.field private j:I

.field public keepAliveTime:I

.field public manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

.field public final max_timer:I

.field public final maximumPoolSize:I

.field public final maxn:I

.field public path:Ljava/lang/String;

.field public pool:Ljava/util/concurrent/ThreadPoolExecutor;

.field public port:I

.field public final queueDeep:I

.field public final schema:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v2, 0x3

    const/4 v9, 0x1

    const/16 v5, 0x3a98

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "http://"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->schema:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "\n"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_LR:Ljava/lang/String;

    .line 38
    iput v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->maxn:I

    .line 39
    iput v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->max_timer:I

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->queueDeep:I

    .line 41
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->corePoolSize:I

    .line 42
    iput v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->maximumPoolSize:I

    .line 63
    iput v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnstimeout:I

    .line 64
    iput v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnsconntimeout:I

    .line 87
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:I

    .line 133
    const-string/jumbo v0, "httpdns.danuoyi.tbcache.com"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "/multi_dns_resolve"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->path:Ljava/lang/String;

    .line 135
    const/16 v0, 0x50

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_port:I

    .line 136
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_ip:[Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_ip:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_ip:[Ljava/lang/String;

    const-string/jumbo v3, "42.156.162.8"

    aput-object v3, v0, v1

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_ip:[Ljava/lang/String;

    const-string/jumbo v3, "110.75.114.7"

    aput-object v3, v0, v9

    .line 141
    iput v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:I

    .line 145
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 146
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 148
    iput v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnstimeout:I

    .line 149
    iput v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnsconntimeout:I

    .line 151
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    .line 152
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    .line 155
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Ljava/util/Map;

    .line 164
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    .line 166
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->keepAliveTime:I

    .line 167
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->keepAliveTime:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DefaultThreadFactory;

    invoke-direct {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DefaultThreadFactory;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->getLastUpdateTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "(System.currentTimeMillis() - reqLastTime) < 15m, return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:I

    if-ne v0, v5, :cond_1

    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "REQ_STATUS_BUSY, return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->sendRequest()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:I

    goto :goto_0

    :catchall_1
    move-exception v0

    iput v4, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:I

    throw v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$Singleton;->instance:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;)V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-nez v0, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setManagerListener()V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->addHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;)V

    .line 929
    return-void
.end method

.method public addTaskToPool()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V

    .line 698
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 700
    :cond_0
    return-void
.end method

.method public debug()V
    .locals 2

    .prologue
    .line 678
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    :cond_0
    return-void
.end method

.method public getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getArgOfString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, ""

    .line 264
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    if-ne v1, v2, :cond_2

    .line 265
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 266
    if-eqz v1, :cond_1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    if-ne v1, v2, :cond_3

    .line 272
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 273
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_3
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    if-eqz v1, :cond_4

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_4
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    .line 287
    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    const/4 v0, 0x0

    .line 289
    :cond_5
    monitor-exit p0

    return-object v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDnsLocalManager()Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    return-object v0
.end method

.method public getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    if-nez v0, :cond_0

    .line 949
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    return-object v0
.end method

.method public getHttpDNSDebug(Z)Z
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    return v0
.end method

.method public getIpByHttpDns(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 598
    .line 599
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 601
    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 606
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 607
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setHost(Ljava/lang/String;)V

    .line 610
    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    .line 613
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getIpInfoByHttpDns(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 587
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIpsByHttpDns(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 623
    .line 624
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIps()[Ljava/lang/String;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 631
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 632
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setHost(Ljava/lang/String;)V

    .line 635
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    .line 638
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 932
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->port:I

    return v0
.end method

.method public getmistime()J
    .locals 2

    .prologue
    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public httpDnsRequest()V
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->addTaskToPool()V

    .line 690
    :cond_0
    return-void
.end method

.method public declared-synchronized httpdnsreslove(Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 463
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 562
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 467
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getmistime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 470
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 472
    if-nez v9, :cond_2

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v1, :cond_0

    .line 474
    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;

    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->RESLOVERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;-><init>(Ljava/lang/Object;Lcom/alipay/mobile/common/transport/httpdns/MessageType;J)V

    .line 475
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v1

    .line 556
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v2, :cond_0

    .line 557
    new-instance v2, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;

    sget-object v3, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->RESLOVERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;-><init>(Ljava/lang/Object;Lcom/alipay/mobile/common/transport/httpdns/MessageType;J)V

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 482
    :cond_2
    :try_start_4
    const-string/jumbo v1, "dns"

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    .line 485
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_a

    .line 492
    invoke-virtual {v10, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 493
    const-string/jumbo v2, "host"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 494
    const-string/jumbo v2, "ttl"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 496
    const-string/jumbo v2, "ips"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    .line 498
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 499
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 490
    :cond_4
    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 504
    :cond_5
    const-string/jumbo v4, ""

    .line 505
    const/4 v2, -0x1

    .line 507
    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    const/4 v1, 0x0

    move v5, v1

    :goto_3
    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_6

    .line 509
    invoke-virtual {v14, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 510
    const-string/jumbo v3, "ip"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 512
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 517
    const-string/jumbo v2, "spdy"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    move-object v2, v3

    .line 508
    :goto_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move v2, v1

    goto :goto_3

    .line 521
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 522
    add-long/2addr v12, v7

    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setHttpDnsIP(Ljava/lang/String;)V

    goto :goto_2

    .line 529
    :cond_7
    new-instance v3, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-direct {v3, v4, v12, v13}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;-><init>(Ljava/lang/String;J)V

    .line 530
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v15, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIps([Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    invoke-interface {v1, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    if-eqz v1, :cond_8

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v1, v11, v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->storeIP2Local(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V

    .line 538
    :cond_8
    const/4 v1, 0x0

    .line 539
    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 540
    const/4 v1, 0x1

    move v2, v1

    .line 543
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 544
    if-eqz v1, :cond_9

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 549
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 554
    :cond_a
    const-string/jumbo v1, "port"

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->port:I
    :try_end_4
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_b
    move v2, v1

    goto :goto_5

    :cond_c
    move v1, v2

    move-object v2, v4

    goto/16 :goto_4
.end method

.method public isSupportSpdy(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 571
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put2Cache(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    return-void
.end method

.method public declared-synchronized selectUrl()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 180
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "http://"

    .line 181
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    if-nez v0, :cond_3

    .line 185
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 186
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 187
    iget v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:I

    rem-int/2addr v0, v3

    .line 192
    :goto_0
    if-ltz v0, :cond_0

    iget v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:I

    if-le v0, v3, :cond_1

    :cond_0
    move v0, v1

    .line 195
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_ip:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_port:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 208
    monitor-exit p0

    return-object v0

    :cond_2
    move v0, v1

    .line 189
    goto :goto_0

    .line 198
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendRequest()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 297
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getArgOfString()Ljava/lang/String;

    move-result-object v4

    .line 299
    const-string/jumbo v0, "HTTP_DNS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "REQUEST args=["

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    if-nez v4, :cond_0

    .line 429
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v5, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;

    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSNONE:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-wide/16 v6, 0x0

    invoke-direct {v5, p0, v0, v6, v7}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;-><init>(Ljava/lang/Object;Lcom/alipay/mobile/common/transport/httpdns/MessageType;J)V

    .line 315
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    .line 319
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v0, 0x2

    if-ge v1, v0, :cond_6

    .line 325
    :try_start_0
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v6, "SEND HTTP_DNS REQUEST"

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->selectUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 329
    iget-boolean v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    .line 333
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 335
    if-eqz v0, :cond_8

    .line 336
    const-string/jumbo v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 337
    iget v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnsconntimeout:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 338
    iget v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnstimeout:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 341
    iget-boolean v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    if-eqz v6, :cond_3

    .line 342
    const-string/jumbo v6, "hdns"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "v=1.0&rand="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&test=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_2
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 351
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 353
    invoke-virtual {v6, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 358
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 360
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 364
    :goto_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 365
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 393
    :catch_0
    move-exception v0

    .line 394
    iget-boolean v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    if-eqz v6, :cond_1

    .line 395
    const-string/jumbo v6, "HTTP_DNS"

    invoke-static {v6, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    :cond_1
    iput-boolean v10, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 398
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v6, :cond_2

    .line 399
    sget-object v6, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "MalformedURLException:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V

    .line 319
    :cond_2
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 345
    :cond_3
    :try_start_1
    const-string/jumbo v6, "hdns"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "v=1.0&rand="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 403
    :catch_1
    move-exception v0

    .line 404
    iget-boolean v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    if-eqz v6, :cond_4

    .line 405
    const-string/jumbo v6, "HTTP_DNS"

    invoke-static {v6, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    :cond_4
    iput-boolean v10, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 408
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v6, :cond_2

    .line 409
    sget-object v6, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "IOException:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V

    goto :goto_4

    .line 367
    :cond_5
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 368
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 370
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v6, "RECEIVED DNS INFO"

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnsreslove(Ljava/lang/String;)V

    .line 373
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v6, "RESLOVED DNS INFO"

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->saveLastUpdateTime()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 426
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 427
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const-string/jumbo v2, "HTTPDNS"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    const-string/jumbo v2, "1.0"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "DNS_TIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "RESULT"

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "F"

    :goto_5
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    const-string/jumbo v2, "mobilegw.alipay.com"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "GW_IP"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    const-string/jumbo v0, "RPC_PERF"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :cond_8
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v0, :cond_2

    .line 388
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 389
    const-string/jumbo v0, "conn_is_null"

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 413
    :catch_2
    move-exception v0

    .line 414
    iget-boolean v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    if-eqz v6, :cond_9

    .line 415
    const-string/jumbo v6, "HTTP_DNS"

    invoke-static {v6, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    :cond_9
    iput-boolean v10, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 418
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v6, :cond_2

    .line 419
    sget-object v6, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V

    goto/16 :goto_4

    .line 427
    :cond_a
    const-string/jumbo v0, "T"

    goto/16 :goto_5
.end method

.method public setDnsLocalManager(Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;)V
    .locals 0

    .prologue
    .line 936
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    .line 937
    return-void
.end method

.method public setDnsRequestTimeout(I)V
    .locals 0

    .prologue
    .line 913
    iput p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnstimeout:I

    .line 914
    return-void
.end method

.method public declared-synchronized setErrorByHost(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->IPERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;-><init>(Ljava/lang/Object;Lcom/alipay/mobile/common/transport/httpdns/MessageType;J)V

    .line 648
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->deleteLocalIpsByHost(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 653
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    .line 654
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    :cond_2
    monitor-exit p0

    return-void

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cdn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "mobilegw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHosts(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    :cond_1
    :try_start_1
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_3

    .line 224
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 225
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicHost(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 227
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    .line 234
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    .line 237
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHttpDNSDebug(Z)V
    .locals 0

    .prologue
    .line 887
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    .line 888
    return-void
.end method

.method public setHttpDnsDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    .line 909
    return-void
.end method

.method public declared-synchronized setHttpDnsIP(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 896
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_ip:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_ip:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 898
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :cond_0
    monitor-exit p0

    return-void

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHttpDnsPort(I)V
    .locals 0

    .prologue
    .line 903
    iput p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_port:I

    .line 904
    return-void
.end method

.method public setManagerListener()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    .line 921
    :cond_0
    return-void
.end method
