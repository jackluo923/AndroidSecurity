.class public interface abstract Lcom/alipay/mobileprod/biz/flow/MobileFlowRechargeService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract flowRechargeCreate(Lcom/alipay/mobileprod/biz/flow/dto/FlowRechargeCreateReq;)Lcom/alipay/mobileprod/biz/flow/dto/FlowRechargeCreateRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.createFlow"
    .end annotation
.end method

.method public abstract flowRechargeQuery(Lcom/alipay/mobileprod/biz/flow/dto/FlowRechargeQueryReq;)Lcom/alipay/mobileprod/biz/flow/dto/FlowRechargeQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.queryFlow"
    .end annotation
.end method
