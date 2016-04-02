.class public interface abstract Lcom/alipay/mobilerelation/biz/shared/rpc/AlipaySocilaInfoService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getArea()Lcom/alipay/mobilerelation/biz/shared/resp/GetAreaResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.getArea"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getSignature()Lcom/alipay/mobilerelation/biz/shared/resp/SingleValueResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.getSignature"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setArea(Lcom/alipay/mobilerelation/biz/shared/req/SetAreaReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.setArea"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setSignature(Lcom/alipay/mobilerelation/biz/shared/req/SetSignatureReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.setSignature"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setSocialSwitchInfo(Lcom/alipay/mobilerelation/biz/shared/req/SetSocialMetaInfoReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.setSocialMetaInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
