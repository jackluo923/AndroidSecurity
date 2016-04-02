.class public Lcom/alipay/mobile/security/gesture/data/ConvenientMode;
.super Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;-><init>()V

    const-string/jumbo v0, "fastStage2"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->modeName:Ljava/lang/String;

    return-void
.end method

.method public static final convertToMe(Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;)Lcom/alipay/mobile/security/gesture/data/ConvenientMode;
    .locals 3

    new-instance v0, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->modeName:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->configItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->configItem:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public getAllOnNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->configItem:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->configItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_1
    if-lt v1, v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v3, v1, :cond_0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->configItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v5, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public isHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->configItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    return v0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isHit appid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->l(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->isContainAndEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->isContainAndEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    invoke-static {p3, v5}, Lcom/alipay/mobile/security/gesture/data/ConvenientMode;->isContainAndEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
