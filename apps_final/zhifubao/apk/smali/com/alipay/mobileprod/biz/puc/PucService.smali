.class public interface abstract Lcom/alipay/mobileprod/biz/puc/PucService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addBillKey(Lcom/alipay/mobileprod/core/model/puc/vo/AddBillKeyReq;)Lcom/alipay/mobileprod/core/model/puc/vo/AddBillKeyResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.addBillKey"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract appRoute(Lcom/alipay/mobileprod/core/model/puc/vo/APPRouteReq;)Lcom/alipay/mobileprod/core/model/puc/vo/APPRouteResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.appRoute"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createOrder(Lcom/alipay/mobileprod/core/model/puc/vo/CreateOrderKeyReq;)Lcom/alipay/mobileprod/core/model/puc/vo/CreateOrderKeyResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.createOrder"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract deleteBillKey(Lcom/alipay/mobileprod/core/model/puc/vo/DeleteBillKeyReq;)Lcom/alipay/mobileprod/core/model/puc/vo/DeleteBillKeyResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.deleteBillKey"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract notifyRecommend(Lcom/alipay/mobileprod/core/model/puc/vo/NotifyRecommendReq;)Lcom/alipay/mobileprod/core/model/puc/vo/NotifyRecommendResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.notifyRecommend"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryChargeBill(Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillReq;)Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.queryChargeBill"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryChargeBillByHistoryBillKey(Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillByHistoryBillKeyReq;)Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillByHistoryBillKeyResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.queryChargeBillByHistoryBillKey"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryChargeBillByInst(Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillByInstReq;)Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillByInstResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.queryChargeBillByInst"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryChargeBillByRemind(Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillByRemindReq;)Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillByRemindResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.queryChargeBillByRemind"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryChargeInstList(Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeInstListReq;)Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeInstListResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.queryChargeInstList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCityList(Lcom/alipay/mobileprod/core/model/puc/vo/QueryCityListReq;)Lcom/alipay/mobileprod/core/model/puc/vo/QueryCityListResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.queryCityList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryHistoryBillKeys(Lcom/alipay/mobileprod/core/model/puc/vo/QueryHistoryBillKeysReq;)Lcom/alipay/mobileprod/core/model/puc/vo/QueryHistoryBillKeysResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.queryHistoryBillKeys"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryIPCity(Lcom/alipay/mobileprod/core/model/puc/vo/QueryIPCityReq;)Lcom/alipay/mobileprod/core/model/puc/vo/QueryIPCityResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.queryIPCity"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryOweBill(Lcom/alipay/mobileprod/core/model/puc/vo/QueryOweBillReq;)Lcom/alipay/mobileprod/core/model/puc/vo/QueryOweBillResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.queryOweBill"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract querySubscriberParam(Lcom/alipay/mobileprod/core/model/puc/vo/QuerySubscriberParamReq;)Lcom/alipay/mobileprod/core/model/puc/vo/QuerySubscriberParamResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.querySubscriberParam"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract resultPageInfo(Lcom/alipay/mobileprod/core/model/puc/vo/ResultPageReq;)Lcom/alipay/mobileprod/core/model/puc/vo/ResultPageResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.resultPageInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract subscriberBill(Lcom/alipay/mobileprod/core/model/puc/vo/SubscriberBillReq;)Lcom/alipay/mobileprod/core/model/puc/vo/SubscriberBillResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.puc.subscriberBill"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
