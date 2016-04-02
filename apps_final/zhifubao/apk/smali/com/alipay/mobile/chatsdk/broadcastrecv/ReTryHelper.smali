.class public Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;
.super Ljava/lang/Object;
.source "ReTryHelper.java"


# static fields
.field public static final AUTOCANCELREDTIME_FLAG:Ljava/lang/String; = "pp_autoCancelRedTime"

.field public static final RETRYDURING:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "ReTryHelper"

.field private static instance:Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;


# instance fields
.field private initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

.field private lastRetryTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->lastRetryTime:J

    .line 16
    return-void
.end method

.method private backgroundInitLoad(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$2;-><init>(Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method private backgroundInvalidateRecommend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$1;-><init>(Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method private backgroundReLoad(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$3;-><init>(Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->instance:Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->instance:Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;

    .line 32
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->instance:Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;

    return-object v0
.end method


# virtual methods
.method public retry(Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    iget-wide v2, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->lastRetryTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 38
    iput-wide v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->lastRetryTime:J

    .line 39
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->getInstance()Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->hasNoFollowInfoNeedLoad(Ljava/lang/String;)Z

    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->backgroundReLoad(Ljava/lang/String;)V

    .line 44
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_total_load_faild_flag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->backgroundInitLoad(Ljava/lang/String;)V

    .line 48
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "public_recommend_invalidate_date"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/alipay/mobile/common/utils/CacheSet;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 49
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 50
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "public_recommend_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->backgroundInvalidateRecommend(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_autoCancelRedTime"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/alipay/mobile/common/utils/CacheSet;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ReTryHelper"

    const-string/jumbo v2, "auto cancel red Point"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_autoCancelRedTime"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/utils/CacheSet;->putLong(Ljava/lang/String;J)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    if-nez v0, :cond_3

    .line 58
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->markOverDayRead()V

    .line 72
    :cond_4
    :goto_0
    return-void

    .line 61
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ReTryHelper"

    const-string/jumbo v2, "lastAutoCancelRedTime is error ,reset"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_autoCancelRedTime"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/utils/CacheSet;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 66
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ReTryHelper"

    const-string/jumbo v2, "need not auto cancel red Point"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
