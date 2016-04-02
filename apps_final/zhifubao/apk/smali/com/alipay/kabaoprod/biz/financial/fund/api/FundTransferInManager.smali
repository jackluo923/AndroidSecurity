.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/fund/api/FundTransferInManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fundApplyTransferIn(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundApplyTransferInReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferInResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferin.once.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundAutoTransferInSet(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundAutoTransferInSetReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferin.auto.set"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferInSuccess(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferInSuccessReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundTransferInSuccessResult;
    .annotation runtime Lcom/alipay/mobile/common/actionintercept/annotation/Promotion;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferin.success"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundAutoTransferIn(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAutoTransferInResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferin.auto.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
