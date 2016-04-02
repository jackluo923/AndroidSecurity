.class public interface abstract Lcom/alipay/mobileprod/biz/group/lotpay/rpc/LotPayService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract closeLotPay(Lcom/alipay/mobileprod/biz/group/lotpay/rep/BaseReq;)Lcom/alipay/mobileprod/biz/group/lotpay/res/CommonSetPayResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.lotpay.closeLotPay"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract closeLotPayBill(Lcom/alipay/mobileprod/biz/group/lotpay/rep/CloseLotPayBillReq;)Lcom/alipay/mobileprod/biz/group/lotpay/res/CommonSetPayResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.lotpay.closeLotPayBill"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createLotPay(Lcom/alipay/mobileprod/biz/group/lotpay/rep/CreateLotPayReq;)Lcom/alipay/mobileprod/biz/group/lotpay/res/CreateLotPayResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.lotpay.createLotPay"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createLotPayBill(Lcom/alipay/mobileprod/biz/group/lotpay/rep/CreateLotPayBillReq;)Lcom/alipay/mobileprod/biz/group/lotpay/res/CreateLotPayBillResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.lotpay.createLotPayBill"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getLotPayResult(Lcom/alipay/mobileprod/biz/group/lotpay/rep/CloseLotPayBillReq;)Lcom/alipay/mobileprod/biz/group/lotpay/res/LotPayResultResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.lotpay.getLotPayResult"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getLotPayUsers(Lcom/alipay/mobileprod/biz/group/lotpay/rep/BaseReq;)Lcom/alipay/mobileprod/biz/group/lotpay/res/CreateLotPayResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.lotpay.getLotPayUsers"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract lotPayRank(Lcom/alipay/mobileprod/biz/group/lotpay/rep/BaseReq;)Lcom/alipay/mobileprod/biz/group/lotpay/res/LotPayRankResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.lotpay.lotPayRank"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
