.class public interface abstract Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiShareFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryShareWifi()Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiShareRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifishare.query"
    .end annotation
.end method

.method public abstract shareWifi(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiShareReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifishare.add"
    .end annotation
.end method
