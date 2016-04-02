.class public Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;
.super Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;


# static fields
.field public static final mapKeys:[Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->mapKeys:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->c:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->d:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic buildJsonNode()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->buildJsonNode()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public buildJsonNode()Lorg/json/JSONObject;
    .locals 7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "data"

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->mapKeys:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->a:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_0

    instance-of v6, v0, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-eqz v6, :cond_0

    :try_start_1
    check-cast v0, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;->buildJsonNode()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public declared-synchronized start(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "data"

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->c:Ljava/util/LinkedList;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;

    invoke-direct {v1, p0, p1}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$RunningTask;-><init>(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->d:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;

    invoke-direct {v1, p0}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$1;-><init>(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->d:Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$2;

    invoke-direct {v1, p0}, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel$2;-><init>(Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/SensorNodeModel;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
