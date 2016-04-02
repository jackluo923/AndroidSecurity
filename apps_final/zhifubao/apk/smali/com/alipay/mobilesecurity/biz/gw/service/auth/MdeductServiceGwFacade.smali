.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/auth/MdeductServiceGwFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancelMdeduct(Lcom/alipay/mobilesecurity/core/model/auth/req/MdeductItemReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.auth.mdeduct.cancel"
    .end annotation
.end method

.method public abstract getDetailMdeduct(Lcom/alipay/mobilesecurity/core/model/auth/req/MdeductItemReq;)Lcom/alipay/mobilesecurity/core/model/auth/res/MdeductDetailRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.auth.mdeduct.detail"
    .end annotation
.end method

.method public abstract getMdeductListByUser()Lcom/alipay/mobilesecurity/core/model/auth/res/MdeductListRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.auth.mdeduct.list"
    .end annotation
.end method
