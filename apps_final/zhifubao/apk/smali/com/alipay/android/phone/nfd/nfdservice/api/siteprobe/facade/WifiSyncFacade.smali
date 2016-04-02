.class public interface abstract Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryWifis(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.sync.queryWifis"
    .end annotation
.end method

.method public abstract syncDevices(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.sync.devices"
    .end annotation
.end method

.method public abstract syncMacs(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/MacSyncReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/MacSyncRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.sync.macs"
    .end annotation
.end method

.method public abstract syncSSids(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.sync.ssids"
    .end annotation
.end method
