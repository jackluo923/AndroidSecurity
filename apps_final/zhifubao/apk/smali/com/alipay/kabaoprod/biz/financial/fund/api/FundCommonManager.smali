.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/fund/api/FundCommonManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getFundAssetAccountInfo(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetAccountInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.account.detail.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundAssetAccountInfoV0912(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundAssetAccountInfoReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetAccountInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.account.detail.getFundAssetAccountInfoV0912"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundTradeRecord(Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/QueryFundTradeRecordResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.trade.record.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
