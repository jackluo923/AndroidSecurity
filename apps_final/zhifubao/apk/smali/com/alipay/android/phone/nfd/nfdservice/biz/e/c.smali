.class public final Lcom/alipay/android/phone/nfd/nfdservice/biz/e/c;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/util/List;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;",
            ">;)",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iget-object v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->wifiState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v2, :cond_6

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_1
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v5, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v5, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v5, :cond_6

    move v2, v3

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method
