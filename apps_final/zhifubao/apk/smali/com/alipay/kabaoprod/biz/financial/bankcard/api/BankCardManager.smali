.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/bankcard/api/BankCardManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancelCard(Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CancelBankCardReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.cancel"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCardBalance(Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;)Lcom/alipay/kabaoprod/biz/financial/bankcard/result/BankCardBalanceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.balance.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCardDetail(Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardDetailReq;)Lcom/alipay/kabaoprod/biz/financial/bankcard/result/BankCardDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.detail.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCardList()Lcom/alipay/kabaoprod/biz/financial/bankcard/result/BankCardListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.list.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setCcrRemid(Lcom/alipay/kabaoprod/biz/financial/bankcard/request/CcrRemindSetReq;)Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CcrRemindResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.ccr.remid"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
