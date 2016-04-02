.class public Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;
.super Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic buildJsonNode()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->buildJsonNode()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public buildJsonNode()Lorg/json/JSONArray;
    .locals 4

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;->buildJsonNode()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public declared-synchronized updateLastAction(ILjava/lang/String;ZDD)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    move-object v7, v0

    instance-of v1, v7, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionControlClickNodeModel;

    if-eqz v1, :cond_1

    move-object v0, v7

    check-cast v0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionControlClickNodeModel;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionControlClickNodeModel;->update(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionNodeModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    instance-of v1, v7, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionEditTextInputNodeModel;

    if-eqz v1, :cond_2

    move-object v0, v7

    check-cast v0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionEditTextInputNodeModel;

    move-object v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionEditTextInputNodeModel;->update(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    instance-of v1, v7, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;

    if-eqz v1, :cond_3

    move-object v0, v7

    check-cast v0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;

    move-object v1, v0

    invoke-virtual {v1, p1, p3}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionFocusChangeNodeModel;->update(IZ)V

    goto :goto_0

    :cond_3
    instance-of v1, v7, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionScreenTouchNodeModel;

    if-eqz v1, :cond_0

    move-object v0, v7

    check-cast v0, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionScreenTouchNodeModel;

    move-object v1, v0

    move v2, p1

    move-wide v3, p4

    move-wide v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/rdssecuritysdk/v2/model/action/ActionScreenTouchNodeModel;->update(IDD)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
