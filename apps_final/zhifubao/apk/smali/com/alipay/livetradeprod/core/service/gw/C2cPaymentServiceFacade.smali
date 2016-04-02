.class public interface abstract Lcom/alipay/livetradeprod/core/service/gw/C2cPaymentServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createTrade(Lcom/alipay/livetradeprod/core/model/rpc/CreateC2cTradeReq;)Lcom/alipay/livetradeprod/core/model/rpc/CreateC2cTradeRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.c2c.createTrade"
    .end annotation
.end method

.method public abstract querySellerInfo(Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerInfoReq;)Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerInfoRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.c2c.querySellerInfo"
    .end annotation
.end method
