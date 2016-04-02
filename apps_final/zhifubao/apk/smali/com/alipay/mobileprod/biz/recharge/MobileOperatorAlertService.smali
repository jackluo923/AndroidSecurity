.class public interface abstract Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract alertCancel(Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.alertCancel"
    .end annotation
.end method

.method public abstract alertSign(Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.alertSign"
    .end annotation
.end method

.method public abstract alertSignQuery(Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.alertSignQuery"
    .end annotation
.end method

.method public abstract alertSwitch(Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.operatorAlertSwitch"
    .end annotation
.end method

.method public abstract preAlertSign(Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.preAlertSign"
    .end annotation
.end method
