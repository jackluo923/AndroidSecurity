.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/fund/api/FundTransferOutManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fundApplyTransferToBalance(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundApplyTransferOutReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToBalanceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.balance.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundApplyTransferToCard(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundApplyTransferOutReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToCardResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.bankcard.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferOutSendSMS(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutSMSSendReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundSendSMSResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transfeout.sms.send"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferOutValidSMS(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundValidSMSReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundTransferOutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.sms.valid"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferToBalance(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutToBalanceReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundTransferOutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.balance"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferToCard(Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutToBankCardReq;)Lcom/alipay/kabaoprod/biz/financial/fund/result/FundTransferOutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.bankcard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
