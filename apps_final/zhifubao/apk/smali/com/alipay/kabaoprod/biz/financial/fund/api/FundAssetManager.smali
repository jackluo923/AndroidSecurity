.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/fund/api/FundAssetManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fundApplyTransferIn(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundApplyTransferInReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferInResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferin.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundApplyTransferOut(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferOutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundOpenAccount(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundOpenAccountReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.open"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferOut(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundAssetsInfo(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundAssetsInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.detail.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundOpenAssetsInfo()Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.open.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFundOperationInfo()Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOperationInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.operation.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundTradeRecord(Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/QueryFundTradeRecordResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.traderecord.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundUserCertify()Lcom/alipay/kabaoprod/biz/financial/fund/result/QueryFundUserCertifyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.user.certify"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryTransferInResult(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferin.result"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
