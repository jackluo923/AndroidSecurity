.class public interface abstract Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/AuthProcessorFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAuthParams(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/AuthParamReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/AuthParamRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.network.authParams"
    .end annotation
.end method

.method public abstract processor(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/AuthProcessorReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/AuthProcessorRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.network.processor"
    .end annotation
.end method

.method public abstract verify(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/AuthVerifyReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/AuthVerifyRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.network.verify"
    .end annotation
.end method
