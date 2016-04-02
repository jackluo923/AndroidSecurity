.class public interface abstract Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiReportFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract log(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiUploadReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifireport.log"
    .end annotation
.end method

.method public abstract outStore(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiReportReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifireport.outstore"
    .end annotation
.end method

.method public abstract quality(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiReportReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifireport.quality"
    .end annotation
.end method

.method public abstract rating(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiRatingReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiRatingRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifirating"
    .end annotation
.end method
