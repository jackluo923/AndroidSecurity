.class public final Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;
.super Ljava/lang/Object;
.source "NetThreadPoolExeFactory.java"


# static fields
.field protected static final PREFIX_THREAD_NAME:Ljava/lang/String; = "HttpManager.HttpWorker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method private static a(I)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 8

    .prologue
    const-wide/16 v6, 0x5

    const/16 v5, 0x28

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 203
    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;-><init>()V

    .line 204
    packed-switch p0, :pswitch_data_0

    .line 218
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->a(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V

    .line 221
    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    const-string/jumbo v1, "2g"

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    iput v2, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    iput v2, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    const-wide/16 v1, 0x3c

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x3c

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->a(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V

    goto :goto_0

    .line 212
    :pswitch_2
    const-string/jumbo v1, "4g"

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    iput v3, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    iput v3, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    iput-wide v6, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_0

    .line 215
    :pswitch_3
    const-string/jumbo v1, "wifi"

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    iput v4, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    iput v4, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    iput-wide v6, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)V
    .locals 2

    .prologue
    .line 242
    const-string/jumbo v0, "3g"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 243
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 244
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    .line 245
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    .line 246
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 247
    return-void
.end method

.method private static b(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 9

    .prologue
    .line 261
    const-string/jumbo v0, "NetThreadPoolExeFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "createThreadPoolExeByConfig.   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    iget v1, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    iget v2, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->timeunit:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    iget-object v8, p0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 268
    return-object v0
.end method

.method public static getAmrThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .prologue
    .line 74
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getAmrThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 80
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->b(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0
.end method

.method public static final getAmrThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 176
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 177
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->a(I)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 178
    new-instance v2, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string/jumbo v3, "amr"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 179
    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    return-object v0

    .line 181
    :pswitch_0
    const-string/jumbo v1, "NetThreadPoolExeFactory"

    const-string/jumbo v2, "amr 2g threadCount=[1]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput v4, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 183
    iput v4, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    goto :goto_0

    .line 186
    :pswitch_1
    const-string/jumbo v1, "NetThreadPoolExeFactory"

    const-string/jumbo v2, "amr 3g threadCount=[1]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput v4, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 188
    iput v5, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    goto :goto_0

    .line 192
    :pswitch_2
    const-string/jumbo v1, "NetThreadPoolExeFactory"

    const-string/jumbo v2, "amr 4g/WI-FI threadCount=[2]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput v5, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 194
    iput v5, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getBgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getBgThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 44
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->b(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0
.end method

.method public static final getBgThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 5

    .prologue
    .line 125
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 126
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->a(I)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v1

    .line 127
    new-instance v2, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string/jumbo v3, "bg"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    .line 131
    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-object v1

    .line 133
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BG_2G_THREAD_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    .line 134
    const-string/jumbo v2, "NetThreadPoolExeFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bg 2g threadCount=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput v0, v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 136
    iput v0, v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    goto :goto_0

    .line 139
    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BG_3G_THREAD_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    .line 140
    const-string/jumbo v2, "NetThreadPoolExeFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bg 3g threadCount=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput v0, v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 142
    iput v0, v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getFgThreadPoolConfig()Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 98
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->b(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0
.end method

.method public static final getFgThreadPoolConfig()Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;-><init>()V

    .line 107
    const-string/jumbo v1, "all"

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->netType:Ljava/lang/String;

    .line 108
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string/jumbo v2, "fg"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 109
    const/4 v1, 0x4

    iput v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 110
    const/4 v1, 0x7

    iput v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    .line 111
    const-wide/16 v1, 0xa

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->keepAliveTime:J

    .line 112
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->timeunit:Ljava/util/concurrent/TimeUnit;

    .line 113
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 114
    return-object v0
.end method

.method public static getImgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .prologue
    .line 56
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getImgThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 62
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->b(Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    goto :goto_0
.end method

.method public static final getImgThreadPoolConfig(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;
    .locals 5

    .prologue
    .line 150
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 151
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->a(I)Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;

    move-result-object v0

    .line 152
    new-instance v2, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;

    const-string/jumbo v3, "img"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$NetThreadFactory;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    .line 155
    packed-switch v1, :pswitch_data_0

    .line 171
    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IMG_2G_THREAD_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v1

    .line 158
    const-string/jumbo v2, "NetThreadPoolExeFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "img 2g threadCount=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 160
    iput v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    goto :goto_0

    .line 163
    :pswitch_1
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IMG_2G_THREAD_COUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v1

    .line 164
    const-string/jumbo v2, "NetThreadPoolExeFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "img 3g threadCount=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iput v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->corePoolSize:I

    .line 166
    iput v1, v0, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory$ThreadPoolConfig;->maximumPoolSize:I

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
