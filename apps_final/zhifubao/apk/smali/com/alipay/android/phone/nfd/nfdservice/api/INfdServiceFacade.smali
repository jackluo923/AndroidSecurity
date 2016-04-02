.class public interface abstract Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract connectTargetAP(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;)I
.end method

.method public abstract deleteLocalNfdWifiMac(Ljava/lang/String;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract enableWifiReceiver()V
.end method

.method public abstract forgetNetwork(Ljava/lang/String;)Z
.end method

.method public abstract getLightBizNfdService()Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;
.end method

.method public abstract getNearbyWifiServiceList(ZLcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/NearbyWifiServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReachableNfdWifiInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;
.end method

.method public abstract getReachableNfdWifiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notifyCertStatusChanged(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract queryShopIcon(Ljava/util/List;Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map;"
        }
    .end annotation
.end method

.method public abstract queryWifiDataSync(Z)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;
.end method

.method public abstract recordInStore(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z
.end method

.method public abstract sendMonitorLog()V
.end method

.method public abstract unregisterNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z
.end method

.method public abstract writeAndSendMonitorLog(Ljava/lang/String;)V
.end method

.method public abstract writeMonitorLog(Ljava/lang/String;)V
.end method
