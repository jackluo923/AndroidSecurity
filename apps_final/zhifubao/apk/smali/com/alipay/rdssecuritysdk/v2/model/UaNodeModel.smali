.class public Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;
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

.field private b:J

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

.field private f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "num"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "action"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->mapKeys:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->b:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;-><init>()V

    new-instance v0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    invoke-direct {v0, p1}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "t"

    iget-wide v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "num"

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "action"

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/rdssecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "2"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alipay/rdssecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic buildJsonNode()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->buildJsonNode()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public buildJsonNode()Lorg/json/JSONObject;
    .locals 7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->mapKeys:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a:Ljava/util/Map;

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

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_0

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

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public declared-synchronized onControlClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    instance-of v1, v1, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionControlClickNodeModel;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->updateLastAction(ILjava/lang/String;ZDD)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionControlClickNodeModel;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionControlClickNodeModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionControlClickNodeModel;->addData()V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    invoke-virtual {v0, v1}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->addAction(Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    instance-of v1, v1, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->updateLastAction(ILjava/lang/String;ZDD)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, p3}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->addData(Z)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    invoke-virtual {v0, v1}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->addAction(Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    instance-of v1, v1, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionEditTextInputNodeModel;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->updateLastAction(ILjava/lang/String;ZDD)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionEditTextInputNodeModel;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionEditTextInputNodeModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, p3}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionEditTextInputNodeModel;->addData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    invoke-virtual {v0, v1}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->addAction(Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionPageNodeModel;

    const-string/jumbo v1, "1"

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionPageNodeModel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionPageNodeModel;->addData(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    invoke-virtual {v1, v0}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->addAction(Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;)V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    return-void
.end method

.method public onPageEnd()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "num"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    :cond_0
    return-void
.end method

.method public onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 8

    invoke-static {p1, p2}, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    instance-of v1, v1, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionScreenTouchNodeModel;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->updateLastAction(ILjava/lang/String;ZDD)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionScreenTouchNodeModel;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionScreenTouchNodeModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionScreenTouchNodeModel;->addData(DD)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->e:Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;

    invoke-virtual {v0, v1}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->addAction(Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/UaNodeModel;->f:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    goto :goto_0
.end method
