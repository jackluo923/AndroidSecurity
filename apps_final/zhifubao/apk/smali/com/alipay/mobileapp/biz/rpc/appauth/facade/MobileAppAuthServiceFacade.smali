.class public interface abstract Lcom/alipay/mobileapp/biz/rpc/appauth/facade/MobileAppAuthServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract authSign(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.authSign"
    .end annotation
.end method

.method public abstract getAuthStatus(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.getAuthStatus"
    .end annotation
.end method

.method public abstract getAuthStatusValidTid(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.getAuthStatusValidTid"
    .end annotation
.end method
