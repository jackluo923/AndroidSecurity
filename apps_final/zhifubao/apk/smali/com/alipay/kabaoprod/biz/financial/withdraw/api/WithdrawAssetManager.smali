.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/withdraw/api/WithdrawAssetManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract doWithdrawInfo(Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.withdrawReq.doWithdrawInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getPreWithdrawInfo()Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.withdrawReq.getPreWithdrawInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
