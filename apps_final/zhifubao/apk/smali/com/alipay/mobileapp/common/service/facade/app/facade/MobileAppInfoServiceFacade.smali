.class public interface abstract Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract isAppUsedBefore(Ljava/lang/String;)Z
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.isAppUsedBefore"
    .end annotation
.end method

.method public abstract queryFitMyAppOrderedByWeight(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.queryFitMyAppOrderedByWeight"
    .end annotation
.end method

.method public abstract queryIndependantAppList(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.queryIndependantAppList"
    .end annotation
.end method

.method public abstract queryMobileAppInfoByAppList(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.queryMobileAppInfoByAppList"
    .end annotation
.end method

.method public abstract queryMobileAppInfoByAppVersion(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppInfoByVersionReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.queryMobileAppInfoByAppVersion"
    .end annotation
.end method
