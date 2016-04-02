.class public interface abstract Lcom/alipay/mobileprod/biz/ccr/CreditCardService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addCreditCard(Lcom/alipay/mobileprod/biz/ccr/vo/AddCreditCardReqVO;)Lcom/alipay/mobileprod/biz/ccr/vo/AddCreditCardRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.addCreditCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract applyCreditCardBillQuery(Lcom/alipay/mobileprod/biz/ccr/vo/ApplyCreditCardBillQueryReqVO;)Lcom/alipay/mobileprod/core/model/BaseRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.applyCreditCardBillQuery"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract authorizeBalanceBaoDeduct(Lcom/alipay/mobileprod/biz/ccr/vo/AuthorizeBalanceBaoDeductReq;)Lcom/alipay/mobileprod/biz/ccr/vo/AuthorizeBalanceBaoDeductResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.authorizeBalanceBaoDeduct"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract cancelDeduct(Lcom/alipay/mobileprod/biz/ccr/vo/CancelDeductReq;)Lcom/alipay/mobileprod/biz/ccr/vo/CancelDeductResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.cancelDeduct"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createCreditCardRepayment(Lcom/alipay/mobileprod/biz/ccr/vo/CreateCreditCardRepaymentReqVO;)Lcom/alipay/mobileprod/biz/ccr/vo/CreateCreditCardRepaymentRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.createCreditCardRepayment"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract creditCardInit(Lcom/alipay/mobileprod/biz/ccr/vo/CreditCardInitReqVO;)Lcom/alipay/mobileprod/biz/ccr/vo/CreditCardInitRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.creditCardInit"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract deleteCreditCard(Lcom/alipay/mobileprod/biz/ccr/vo/DeleteCreditCardReqVO;)Lcom/alipay/mobileprod/core/model/BaseRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.deleteCreditCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCreditCardAndBankInfo(Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardAndBankInfoReqVO;)Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardAndBankInfoRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.getCreditCardAndBankInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCreditCardBankExInfo(Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBankExInfoReqVO;)Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBankExInfoRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.getCreditCardBankExtInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCreditCardBankList(Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBankListReqVO;)Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBankListRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.getCreditCardBankList"
    .end annotation
.end method

.method public abstract getCreditCardBillQueryCheckCode(Lcom/alipay/mobileprod/biz/ccr/vo/SendCreditCardBillQueryAckCodeReqVO;)Lcom/alipay/mobileprod/core/model/BaseRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.sendCreditCardBillQueryCheckCode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCreditCardBillQueryForm(Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormReqVO;)Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardBillQueryFormRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.getCreditCardBillQueryForm"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCreditCardRemind(Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardRemindReqVO;)Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardRemindRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.getCreditCardRemind"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCreditCardRepaymentResult(Lcom/alipay/mobileprod/biz/ccr/vo/GetRepaymentResultReqVO;)Lcom/alipay/mobileprod/biz/ccr/vo/GetRepaymentResultRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.getCreditCardRepaymentResult"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getDeductInfo(Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoReq;)Lcom/alipay/mobileprod/biz/ccr/vo/GetDeductInfoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.getDeductInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setupCreditCardAlias(Lcom/alipay/mobileprod/biz/ccr/vo/SetupCreditCardAliasReq;)Lcom/alipay/mobileprod/biz/ccr/vo/SetupCreditCardAliasResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.setupCreditCardAlias"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setupCreditCardRemind(Lcom/alipay/mobileprod/biz/ccr/vo/SetupCreditCardRemindReqVO;)Lcom/alipay/mobileprod/core/model/BaseRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.setupCreditCardRemind"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setupDeduct(Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;)Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.setupDeduct"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
