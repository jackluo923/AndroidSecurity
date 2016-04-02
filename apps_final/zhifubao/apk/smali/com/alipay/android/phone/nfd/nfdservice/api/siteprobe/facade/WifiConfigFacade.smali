.class public interface abstract Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiConfigFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getConfig()Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiConfigRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wificonfig.get"
    .end annotation
.end method

.method public abstract saveConfig(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiConfigReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wificonfig.update"
    .end annotation
.end method
