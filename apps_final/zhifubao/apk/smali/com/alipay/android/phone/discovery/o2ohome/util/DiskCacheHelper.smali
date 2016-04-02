.class public Lcom/alipay/android/phone/discovery/o2ohome/util/DiskCacheHelper;
.super Ljava/lang/Object;
.source "DiskCacheHelper.java"


# static fields
.field private static final DEFAULT_GROUP:Ljava/lang/String; = "discovery_o2ohome"

.field private static final OUT_TIME:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "DiskCacheManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-static {p0, v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readFromCache(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 64
    const-class v1, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 65
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->open()V

    .line 67
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 71
    invoke-static {v2, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DiskCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "readFromCache: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    move-object v0, v1

    .line 87
    :goto_0
    return-object v0

    .line 83
    :catchall_0
    move-exception v1

    .line 84
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    .line 85
    throw v1

    .line 84
    :catch_0
    move-exception v1

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static writeToDisk(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-wide/32 v1, 0x5265c00

    invoke-static {p0, v0, p1, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/DiskCacheHelper;->writeToDisk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;J)V

    .line 45
    :cond_0
    return-void
.end method

.method public static writeToDisk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11

    .prologue
    .line 24
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 26
    const-class v1, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 27
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 28
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->open()V

    .line 29
    const-string/jumbo v2, "discovery_o2ohome"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v9, "text/json"

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p3

    .line 29
    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DiskCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeToDisk: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
