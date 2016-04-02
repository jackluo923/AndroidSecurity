.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract doRealName(Lcom/alipay/mobilesecurity/core/model/account/certify/DoRealNameReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/DoRealNameResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.doRealName"
    .end annotation
.end method

.method public abstract upgradeOrTempRealName(Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameUpgradeOrTempRequest;)Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameUpgradeOrTempResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.upgradeOrTempRealName"
    .end annotation
.end method

.method public abstract upgradeRealName(Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameUpgradeRequest;)Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameUpgradeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.upgradeRealName"
    .end annotation
.end method
