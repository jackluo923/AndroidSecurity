.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/account/api/AccountManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAssetAccountInfo(Lcom/alipay/kabaoprod/biz/financial/account/request/AssetAccountInfoReq;)Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.account.getAssetAccountInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getAssetFinanceInfo(Lcom/alipay/kabaoprod/biz/financial/account/request/AssetFinanceInfoReq;)Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.account.getAssetFinanceInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getAssetRemindSign(Lcom/alipay/kabaoprod/biz/financial/account/request/AssetSignReq;)Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.account.getAssetRemindSign"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getUserAccountInfo(Lcom/alipay/kabaoprod/biz/financial/account/request/UserAccountInfoReq;)Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.account.getUserAccountInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getUserCouponList(Lcom/alipay/kabaoprod/biz/financial/account/request/UserCouponListReq;)Lcom/alipay/kabaoprod/biz/financial/account/result/UserCouponListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.account.getUserCouponList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getUserPointList(Lcom/alipay/kabaoprod/biz/financial/account/request/UserPointListReq;)Lcom/alipay/kabaoprod/biz/financial/account/result/UserPointListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.account.getUserPointList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
