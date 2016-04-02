.class public Lcom/alipay/mobile/security/gesture/data/NormalMode;
.super Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;-><init>()V

    const-string/jumbo v0, "normalStage2"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/data/NormalMode;->modeName:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/alipay/mobile/security/gesture/data/NormalMode;->isContainAndEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final convertToMe(Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;)Lcom/alipay/mobile/security/gesture/data/NormalMode;
    .locals 3

    new-instance v0, Lcom/alipay/mobile/security/gesture/data/NormalMode;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/data/NormalMode;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/security/gesture/data/NormalMode;->modeName:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/mobile/security/gesture/data/NormalMode;->configItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/alipay/mobile/security/gesture/data/NormalMode;->configItem:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public isHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NormalMode hit false all in is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/NormalMode;->l(Ljava/lang/String;)V

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/NormalMode;->configItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/NormalMode;->configItem:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/alipay/mobile/security/gesture/data/NormalMode;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/alipay/mobile/security/gesture/data/NormalMode;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/alipay/mobile/security/gesture/data/NormalMode;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NormalMode hit yes: cid.id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-----------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/NormalMode;->l(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "NormalMode hit not: cid.id"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/NormalMode;->l(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto/16 :goto_1
.end method

.method l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
