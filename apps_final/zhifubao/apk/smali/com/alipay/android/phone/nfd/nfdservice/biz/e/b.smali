.class public final Lcom/alipay/android/phone/nfd/nfdservice/biz/e/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    invoke-direct {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getAuthType()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "0"

    iput-object v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->cooperationType:Ljava/lang/String;

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getLocationX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->latitude:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getLocationY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->longitude:Ljava/lang/String;

    iput-object p1, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->mac:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->storeAddress:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getShopName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->storeName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getShopId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->sign:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->certType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getMatchType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->matchType:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public static a(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;->ssids:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;->ssids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;->ssids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;

    new-instance v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-direct {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;-><init>()V

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setShopName(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setShopId(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setSsidId(J)V

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setSsid(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->matchType:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setMatchType(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->authType:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setAuthType(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->lat:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->lon:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->lat:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setLocationX(I)V

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->lon:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setLocationY(I)V

    :goto_1
    iget-wide v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->timestamp:J

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setTimeStamp(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->status:Ljava/lang/Integer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setStatus(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setLocationX(I)V

    invoke-virtual {v3, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setLocationY(I)V

    goto :goto_1
.end method
