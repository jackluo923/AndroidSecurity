.class public interface abstract Lcom/alipay/mobilediscovery/common/service/rpc/flashsales/FlashSalesQueryRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getFlashSales(Lcom/alipay/mobilediscovery/common/service/rpc/flashsales/request/FlashSalesReq;)Lcom/alipay/mobilediscovery/common/service/rpc/flashsales/result/FlashSalesResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.flashSales.flashSalesQuery.getFlashSales"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getPayOffDetail(Lcom/alipay/mobilediscovery/common/service/rpc/flashsales/request/PayOffReq;)Lcom/alipay/mobilediscovery/common/service/rpc/flashsales/result/PayOffResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.flashSales.flashSalesQuery.getPayOffDetail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getSoldOutDetail(Lcom/alipay/mobilediscovery/common/service/rpc/flashsales/request/SoldOutReq;)Lcom/alipay/mobilediscovery/common/service/rpc/flashsales/result/SoldOutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.flashSales.flashSalesQuery.getSoldOutDetail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
