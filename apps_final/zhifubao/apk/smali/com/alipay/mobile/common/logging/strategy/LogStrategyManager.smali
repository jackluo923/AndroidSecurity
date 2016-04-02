.class public Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;
.super Ljava/lang/Object;
.source "LogStrategyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/common/logging/ContextInfo;

.field private c:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 75
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "LogStrateg"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->e:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance before use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->e:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->e:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->e:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    .line 61
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 273
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 276
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    :try_start_0
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 281
    new-instance v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    invoke-direct {v7}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :try_start_1
    const-string/jumbo v1, "yes"

    const-string/jumbo v3, "write"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 290
    :try_start_2
    const-string/jumbo v1, "send"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v3, v2

    move v1, v2

    .line 292
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 293
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 294
    iget-object v10, v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->c:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const-string/jumbo v10, "2g"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "3g"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "4g"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 296
    :cond_0
    const/4 v1, 0x1

    .line 292
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 299
    :cond_2
    if-eqz v1, :cond_3

    .line 300
    iget-object v1, v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->c:Ljava/util/List;

    const-string/jumbo v3, "mobile"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    :cond_3
    :goto_2
    :try_start_3
    const-string/jumbo v1, "event"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v2

    .line 309
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 310
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 311
    iget-object v9, v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->d:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 318
    :cond_4
    :try_start_4
    const-string/jumbo v1, "maxLogCount"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->b:I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 323
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 327
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 328
    :cond_5
    return-void

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 96
    const-string/jumbo v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    array-length v2, v0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    move-object v0, v1

    .line 120
    :goto_0
    return-object v0

    .line 101
    :cond_0
    const/4 v2, 0x2

    aget-object v2, v0, v2

    .line 102
    if-eqz p2, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 103
    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 109
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    iget-object v0, v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->c:Ljava/util/List;

    const-string/jumbo v4, "mobile"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 111
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    iget-object v0, v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->c:Ljava/util/List;

    const-string/jumbo v3, "wifi"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 116
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 120
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->a:Z

    .line 90
    :goto_0
    return v0

    .line 86
    :cond_0
    const-string/jumbo v0, "sdkmonitor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "romesync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    const/16 v0, 0x64

    .line 153
    const-string/jumbo v1, "userbehavor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "autouserbehavor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "exception"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    :cond_0
    const/16 v0, 0x32

    move v1, v0

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    iget v0, v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->b:I

    if-lez v0, :cond_1

    .line 168
    :cond_1
    if-lt p2, v1, :cond_4

    :goto_1
    return v2

    .line 157
    :cond_2
    const-string/jumbo v1, "alivereport"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    const/16 v0, 0xa

    move v1, v0

    goto :goto_0

    .line 159
    :cond_3
    const-string/jumbo v1, "crash"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 160
    goto :goto_0

    .line 168
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v2

    const-string/jumbo v3, "strategTimestamp"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c(Ljava/lang/String;)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 176
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->c:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v2

    const-string/jumbo v3, "strategTimestamp"

    invoke-virtual {v2, v3, v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;J)V

    .line 178
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_0
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    iget-object v0, v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->d:Ljava/util/List;

    .line 131
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const-string/jumbo v1, "alivereport"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "performance"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userbehavor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "autouserbehavor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    :cond_1
    const-string/jumbo v1, "gotoBackground"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 141
    :cond_3
    const-string/jumbo v1, "crash"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const-string/jumbo v1, "gotoBackground"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string/jumbo v1, "clientLaunch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v0

    const-string/jumbo v1, "LogStrateg"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 191
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "logging.gateway"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/loggw/config.do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 200
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    const-string/jumbo v0, "dev"

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "test"

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    :cond_1
    const-string/jumbo v0, "http://mdap-1-64.test.alipay.net/loggw/config.do"

    .line 209
    :cond_2
    :goto_1
    new-instance v1, Lcom/alipay/mobile/common/logging/http/HttpClient;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/common/logging/http/HttpClient;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    const-string/jumbo v2, "actionType"

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v2, "userId"

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v2, "productId"

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v2, "productVersion"

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/ContextInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->a(Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 217
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_5

    .line 255
    :cond_3
    :goto_2
    return-void

    .line 196
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 205
    :cond_4
    const-string/jumbo v0, "http://mdap.alipay.com/loggw/config.do"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 224
    :cond_5
    :try_start_3
    const-string/jumbo v0, "diagnose"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_6

    .line 226
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 227
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    const-string/jumbo v4, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".push.action.MONITOR_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string/jumbo v3, "config_msg_tasks"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v0, "config_msg_userid"

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 237
    :cond_6
    :goto_4
    :try_start_4
    const-string/jumbo v0, "config"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->c(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 243
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    const-string/jumbo v3, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".monitor.action.UPDATE_LOG_STRATEGY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string/jumbo v2, "strategy"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    .line 248
    const-string/jumbo v0, "updateLogStrategy fail"

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 252
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    .line 196
    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_3
.end method
