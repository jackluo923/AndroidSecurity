.class public Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;
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

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "pn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "cn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "et"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ad"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "seq"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "num"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->mapKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "pn"

    invoke-static {p1}, Lcom/alipay/rdssecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p1, "-"

    :cond_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "cn"

    invoke-static {p2}, Lcom/alipay/rdssecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo p2, "-"

    :cond_1
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "et"

    const-string/jumbo v2, "fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "ad"

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "seq"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "num"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized addData(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "f"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic buildJsonNode()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->buildJsonNode()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public buildJsonNode()Lorg/json/JSONObject;
    .locals 8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "num"

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v4, "num"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->mapKeys:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    instance-of v6, v0, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-eqz v6, :cond_2

    :try_start_1
    check-cast v0, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;->buildJsonNode()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_0

    instance-of v6, v0, Ljava/util/List;

    if-eqz v6, :cond_0

    :try_start_2
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x1e

    if-le v6, v7, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v0, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/util/CommonUtils;->list2Json(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public declared-synchronized update(IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "num"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "num"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->addData(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
