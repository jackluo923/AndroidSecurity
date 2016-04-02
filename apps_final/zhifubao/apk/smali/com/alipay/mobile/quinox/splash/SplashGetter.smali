.class public Lcom/alipay/mobile/quinox/splash/SplashGetter;
.super Ljava/lang/Object;
.source "SplashGetter.java"


# static fields
.field public static final DB_SP_EXIST_KEY:Ljava/lang/String; = "exist"

.field public static final DB_SP_TAG:Ljava/lang/String; = "welcome_DB_exist"

.field private static final RESULT_INVALID:I = 0x0

.field private static final RESULT_VALID:I = 0x2

.field static dateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private dbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hoverTime:I

.field private mContext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->mContext:Landroid/app/Activity;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/quinox/splash/SplashGetter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/quinox/splash/SplashGetter;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->dbList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/quinox/splash/SplashGetter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->dbList:Ljava/util/List;

    return-object v0
.end method

.method private checkPriority(Ljava/util/List;)Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;",
            ">;)",
            "Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v3, 0x0

    .line 238
    :goto_0
    return-object v3

    .line 232
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    move v1, v2

    move-object v3, v0

    .line 233
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 237
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "welcome"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "maxPrioritySplasher= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    # getter for: Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->access$0(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getPriority()I

    move-result v0

    # getter for: Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->access$0(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getPriority()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 235
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    move-object v3, v0

    .line 233
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private getSpaceObjectInfos()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;-><init>(Lcom/alipay/mobile/quinox/splash/SplashGetter;Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 77
    const-wide/16 v3, 0xbb8

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->dbList:Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "welcome"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "return list "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->dbList:Ljava/util/List;

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getSpaceWeight(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)I
    .locals 10

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    # getter for: Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;
    invoke-static {p1}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->access$0(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getGmtStart()J

    move-result-wide v2

    .line 90
    # getter for: Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;
    invoke-static {p1}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->access$0(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getGmtEnd()J

    move-result-wide v4

    .line 91
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "welcome"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "curTime = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "welcome"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getSpaceWeight startTime = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " endTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "welcome"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getSpaceWeight curTime = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    # getter for: Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;
    invoke-static {p1}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->access$0(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->hasTimesToShow(Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;)I

    move-result v0

    .line 98
    :goto_0
    return v0

    .line 97
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "welcome"

    const-string/jumbo v2, "is out of date!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasTimesToShow(Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;)I
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 180
    .line 181
    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 182
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 183
    sget-object v4, Lcom/alipay/mobile/quinox/splash/SplashGetter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 184
    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->totalShowCount(Landroid/content/SharedPreferences;)I

    move-result v2

    .line 185
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    .line 186
    const-string/jumbo v5, "welcome"

    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "hasTimesToShow showTimes = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " widgetId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 188
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 187
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getHoverTime()I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->hoverTime:I

    .line 190
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "welcome"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "hoverTime=spaceObjectInfo.hoverTime="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->hoverTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getShowTimesEveryday()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getShowTimesAfter()I

    move-result v4

    if-nez v4, :cond_0

    .line 202
    :goto_0
    return v1

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getShowTimesEveryday()I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getShowTimesEveryday()I

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "welcome"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "weight is RESULT_INVALID showTimes is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "welcome"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "spaceObjectInfo.showTimesEveryday is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getShowTimesEveryday()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "welcome"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "spaceObjectInfo.showTimesAfter is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getShowTimesAfter()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 202
    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getShowTimesAfter()I

    move-result v3

    if-lt v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getShowTimesAfter()I

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "welcome"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "weight is RESULT_INVALID totalTimes is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private needGetSplasherFromDb()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->mContext:Landroid/app/Activity;

    .line 126
    const-string/jumbo v1, "welcome_DB_exist"

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    const-string/jumbo v1, "exist"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 128
    return v0
.end method

.method private prepareSplasher()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->needGetSplasherFromDb()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "welcome"

    .line 105
    const-string/jumbo v3, "!needGetSplasherFromDb"

    .line 104
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->getSpaceObjectInfos()Ljava/util/List;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 110
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "welcome"

    .line 111
    const-string/jumbo v3, "welcome num is null"

    .line 110
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 121
    goto :goto_0

    .line 115
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    .line 116
    new-instance v3, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;-><init>(Lcom/alipay/mobile/quinox/splash/SplashGetter;)V

    .line 117
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->setSpaceObjectInfo(Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;)V

    .line 118
    invoke-direct {p0, v3}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->getSpaceWeight(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->setWeight(I)V

    .line 119
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private totalShowCount(Landroid/content/SharedPreferences;)I
    .locals 3

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 218
    const/4 v0, 0x0

    .line 219
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    return v1

    .line 219
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 220
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getHoverTime()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->hoverTime:I

    return v0
.end method

.method public getPath(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    # getter for: Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;
    invoke-static {p1}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->access$0(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getHrefUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/welcome/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->spaceObjectInfo:Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;
    invoke-static {p1}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->access$0(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSplasher()Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;
    .locals 5

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->prepareSplasher()Ljava/util/List;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 140
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "welcome"

    const-string/jumbo v2, "splashers size is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    .line 169
    :cond_1
    :goto_0
    return-object v0

    .line 145
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 146
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "welcome"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "splashers size is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->checkPriority(Ljava/util/List;)Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->getSpaceObjectInfo()Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getHoverTime()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->hoverTime:I

    .line 159
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->getSpaceObjectInfo()Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getShowTimesAfter()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->getSpaceObjectInfo()Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getShowTimesEveryday()I

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->getSpaceObjectInfo()Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 161
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 162
    sget-object v3, Lcom/alipay/mobile/quinox/splash/SplashGetter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 163
    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 164
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v4, Lcom/alipay/mobile/quinox/splash/SplashGetter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "welcome"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 147
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    .line 148
    # getter for: Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->weight:I
    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->access$1(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)I

    move-result v0

    if-nez v0, :cond_3

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1
.end method

.method public setHoverTime(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter;->hoverTime:I

    .line 40
    return-void
.end method
