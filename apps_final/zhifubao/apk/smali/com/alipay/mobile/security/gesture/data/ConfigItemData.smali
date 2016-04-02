.class public Lcom/alipay/mobile/security/gesture/data/ConfigItemData;
.super Ljava/lang/Object;


# instance fields
.field public appId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public on:Ljava/lang/Integer;

.field public url:Ljava/lang/String;

.field public view:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcom/alipay/mobile/security/gesture/data/ConfigItemData;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->strIsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->strIsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->strIsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->strIsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equalsExceptOn(Lcom/alipay/mobile/security/gesture/data/ConfigItemData;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->strIsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->strIsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->strIsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->strIsEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOn()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    return-void
.end method

.method public setOn(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    return-void
.end method

.method public strIsEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
