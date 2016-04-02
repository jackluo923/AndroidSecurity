.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/fund/api/FundOpenManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fundOpenAccount(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundOpenAccountReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.open.account"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundOpenInfo()Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.open.account.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract userRealNameAndOpenAccount(Lcom/alipay/kabaoprod/biz/financial/fund/request/UserRealNameAndOpenAccountReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.realname.open.account"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
