.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/fund/api/FundQuickOpenManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyFundQuickOpen(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundApplyQuickOpenReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyQuickOpenResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.quickopen.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract inputTranferInAmount(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundQuickOpenInputAmountReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundQuickOpenInputAmountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.quickopen.input.amount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract inputTranferInCardNo(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundQuickOpenInputCardNoReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundQuickOpenInputCardNoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.quickopen.input.cardno"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract validateCheckCodeAndOpen(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyQuickOpenResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.quickopen.checkcode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
