.class public interface abstract Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract create(Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;)Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.createOrder"
    .end annotation
.end method

.method public abstract delRechargeRecords(Lcom/alipay/mobileprod/biz/recharge/dto/DelRechargeRecordsReq;)Lcom/alipay/mobileprod/biz/recharge/dto/DelRechargeRecordRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.delRechargeRecords"
    .end annotation
.end method

.method public abstract queryEcard(Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardReq;)Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.queryEcard"
    .end annotation
.end method

.method public abstract queryRechargeRecords(Lcom/alipay/mobileprod/biz/recharge/dto/QueryRechargeRecordReq;)Lcom/alipay/mobileprod/biz/recharge/dto/QueryRechargeRecordRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.queryRechargeRecords"
    .end annotation
.end method
