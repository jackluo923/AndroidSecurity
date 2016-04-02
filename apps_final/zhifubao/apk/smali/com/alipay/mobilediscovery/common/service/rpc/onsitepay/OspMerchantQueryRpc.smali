.class public interface abstract Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/OspMerchantQueryRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryGroupStores(Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/request/OspShopListReq;)Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/result/OspShopListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.onsitepay.queryGroupStores"
    .end annotation
.end method

.method public abstract queryMerchants(Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/request/OspMerchantListReq;)Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/result/OspMerchantListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.onsitepay.queryMerchants"
    .end annotation
.end method

.method public abstract queryStore(Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/request/OspShopDetailReq;)Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/result/OspShopDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.onsitepay.queryStore"
    .end annotation
.end method

.method public abstract queryStores(Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/request/OspShopListReq;)Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/result/OspShopComplexInfoListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.onsitepay.queryStores"
    .end annotation
.end method

.method public abstract querySwitch(Ljava/lang/String;)Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/result/OspSwitchResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.onsitepay.querySwitch"
    .end annotation
.end method
