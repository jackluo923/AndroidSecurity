.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/fund/api/FundQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getFundAssetAccountInfoForV8(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundAssetAccountInfoReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetAccountInfoForV8Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.query.getFundAssetAccountInfoForV8"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundAssetAccountInfoV1024(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundAssetAccountInfoReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetAccountInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.query.getFundAssetAccountInfoV1024"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundProfit(Lcom/alipay/kabaoprod/biz/financial/fund/request/ProfitQueryReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/ProfitQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.query.profit"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundProfitRate(Lcom/alipay/kabaoprod/biz/financial/fund/request/ProfitRateQueryReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/ProfitRateQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.query.profit.rate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundTenThousandIncome(Lcom/alipay/kabaoprod/biz/financial/fund/request/TenThousandIncomeQueryReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/TenThousandIncomeQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.query.tenthousandincome"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
