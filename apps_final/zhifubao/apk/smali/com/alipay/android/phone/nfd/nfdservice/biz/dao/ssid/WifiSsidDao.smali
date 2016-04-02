.class public interface abstract Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;
.super Ljava/lang/Object;


# virtual methods
.method public abstract checkSsidTableSize()V
.end method

.method public abstract cleanWifiSynMacs()V
.end method

.method public abstract deletExpireBlackMac()V
.end method

.method public abstract deletExpireOrOfflineMac(ZZ)V
.end method

.method public abstract deletOfflineSsid()V
.end method

.method public abstract deletSsidMacByMacs(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deletSsidMacBySsidId(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteOutDateShopIcon()I
.end method

.method public abstract deleteSsidWifiMac(Ljava/lang/String;)I
.end method

.method public abstract insertNeedSynMacs(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertShopIconList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertWifiBlackMacList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertWifiLocationList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertWifiMacList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertWifiSsidList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryNeedSynMacs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryOfflineWifiByKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryOfflineWifiSsid()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryShopIconByShopIdList(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryWifiBlackMacByMacList(Ljava/util/List;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryWifiLocation(II)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;
.end method

.method public abstract queryWifiSsidBySsidIdList(Ljava/util/List;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryWifiSsidBySsidList(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryWifiSsidMacByMac(Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;
.end method

.method public abstract queryWifiSsidMacByMacList(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateSsidMacExpireTime(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract updateSsidMatchType(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateSsidTimeStamp(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSsidTimeStampBySsidIdList(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation
.end method
