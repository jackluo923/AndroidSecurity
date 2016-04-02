.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/fund/api/FundOperationManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getFundGuideInfo()Lcom/alipay/kabaoprod/biz/financial/fund/result/FundGuideInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.guide.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundLuckDrawInfo()Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckDrawInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.lottery.detail.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundLuckEnterInfo()Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckEnterInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.lottery.enter.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundShareInfo()Lcom/alipay/kabaoprod/biz/financial/fund/result/FundShareInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.share.detail.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
