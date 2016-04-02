.class public Lcom/alipay/mobile/common/misc/ActivityFlow;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public pop()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ActivityFlow;->a:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popAll()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public popTo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public push(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;-><init>(Lcom/alipay/mobile/common/misc/ActivityFlow;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->setActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ActivityFlow;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
