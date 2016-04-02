.class public final Lcom/inmobi/commons/cache/CacheController;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/cache/ProductCacheConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/inmobi/commons/cache/ProductCacheConfig;

.field private static c:Z

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/cache/CacheController$Validator;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/cache/CacheController;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/cache/CacheController;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 7

    const/4 v6, 0x0

    sget-object v3, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/inmobi/commons/cache/CacheController;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_1
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v2, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/commons/cache/CacheController$Validator;

    const/4 v5, 0x0

    invoke-static {v0, v5, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    :try_end_3
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v1, "[InMobi]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unable to reinitialize product "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1
    :try_end_5
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-virtual {v0, v6}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getData(Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/util/Map;)Z
    .locals 1

    invoke-static {p0}, Lcom/inmobi/commons/cache/CacheController;->b(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    return-object v0
.end method

.method private static b(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    :try_start_0
    const-string v0, "AND"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "common"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/cache/CacheController;->c(Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/cache/CacheController;->c(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->f()V

    return-void
.end method

.method private static c(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const-wide/32 v2, 0x7fffffff

    const-string v0, "expiry"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    const-string v0, "maxRetry"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    const-string v0, "retryInterval"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    const-string v0, "url"

    invoke-static {p0, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "protocol"

    invoke-static {p0, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private static d()V
    .locals 4

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/cache/CacheController$a;

    invoke-direct {v1}, Lcom/inmobi/commons/cache/CacheController$a;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static e()V
    .locals 5

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Bootstrapping cache."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->initRoot()V

    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->getRoot()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->getRoot()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/inmobi/commons/cache/ProductCacheConfig;

    check-cast v1, Lorg/json/JSONObject;

    new-instance v4, Lcom/inmobi/commons/cache/CacheController$b;

    invoke-direct {v4, v0}, Lcom/inmobi/commons/cache/CacheController$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1, v4}, Lcom/inmobi/commons/cache/ProductCacheConfig;-><init>(Lorg/json/JSONObject;Lcom/inmobi/commons/cache/CacheController$Committer;)V

    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/cache/ProductCacheConfig;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getValidator()Lcom/inmobi/commons/cache/CacheController$Validator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setValidator(Lcom/inmobi/commons/cache/CacheController$Validator;)V

    invoke-virtual {v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setMap(Ljava/util/Map;)V

    :cond_1
    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-4.4.1"

    const-string v3, "Unable to dump config from persistent memory to products in memory"

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    if-nez v0, :cond_3

    new-instance v0, Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->getRoot()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/cache/CacheController$c;

    invoke-direct {v2}, Lcom/inmobi/commons/cache/CacheController$c;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/cache/ProductCacheConfig;-><init>(Lorg/json/JSONObject;Lcom/inmobi/commons/cache/CacheController$Committer;)V

    sput-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/inmobi/commons/uid/UIDUtil;->getMap(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/cache/CacheController$d;

    invoke-direct {v2}, Lcom/inmobi/commons/cache/CacheController$d;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getData(Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->initialize(Landroid/content/Context;)V

    return-void

    :cond_3
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->getRoot()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->loadFromJSON(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method private static f()V
    .locals 8

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRawData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "AND"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "common"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    :try_start_1
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    long-to-int v2, v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->getRoot()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    :try_start_3
    instance-of v2, v3, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/cache/ProductCacheConfig;

    if-eqz v1, :cond_0

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    const-string v6, "timestamp"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    check-cast v3, Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRawData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "[InMobi]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Error while merging data -> "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v1, "[InMobi]-4.4.1"

    const-string v2, "Unable to add timestamp to JSON"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/inmobi/commons/cache/LocalCache;->saveRoot(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->e()V

    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->a()V

    :goto_2
    return-void

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public static getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inmobi/commons/cache/CacheController$Validator;",
            ")",
            "Lcom/inmobi/commons/cache/ProductConfig;"
        }
    .end annotation

    if-eqz p3, :cond_0

    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->d:Ljava/util/Map;

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p2, :cond_1

    sget-object v1, Lcom/inmobi/commons/cache/CacheController;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->e:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    sget-boolean v0, Lcom/inmobi/commons/cache/CacheController;->c:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    new-instance v0, Lcom/inmobi/commons/internal/CommonsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/internal/CommonsException;-><init>(I)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    invoke-static {p1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/cache/CacheController;->c:Z

    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->e()V

    invoke-static {}, Lcom/inmobi/commons/cache/CacheController;->d()V

    :cond_4
    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->b:Lcom/inmobi/commons/cache/ProductCacheConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getData(Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;

    sget-object v0, Lcom/inmobi/commons/cache/CacheController;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/cache/ProductCacheConfig;

    if-nez v0, :cond_5

    new-instance v0, Lcom/inmobi/commons/internal/CommonsException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/inmobi/commons/internal/CommonsException;-><init>(I)V

    throw v0

    :cond_5
    invoke-virtual {v0, p2, p3}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getData(Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;

    return-object v0
.end method
